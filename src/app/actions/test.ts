'use server'

import { createClient } from '@/lib/supabase/server'
import { getQuestionsAction } from './question'
import { Test, TestAttempt, UserResponse } from '@/types/test'

// ─── FIX #5 / #6 / #10: All attempt actions now verify user ownership ─────────

// Helper to get current user — throws if unauthenticated
const getAuthenticatedUserId = async (): Promise<string> => {
  const supabase = createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user?.id) throw new Error('Authentication required')
  return user.id
}

// 1. CREATE TEST ATTEMPT
export async function createTestAttemptAction(testId: string) {
  const supabase = createClient()
  let userId: string
  try {
    userId = await getAuthenticatedUserId()
  } catch {
    return { success: false, error: 'Authentication required' }
  }

  try {
    const { data, error } = await supabase
      .from('attempts')
      .insert({
        user_id: userId,
        test_id: testId,
        started_at: new Date().toISOString(),
        status: 'in_progress'
      })
      .select()
      .single()

    if (error) throw error

    return { success: true, attemptId: data.id }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to create test attempt' }
  }
}

// 2. GET TEST ATTEMPT — FIX #6: only the owning user can read their attempt
export async function getTestAttemptAction(attemptId: string) {
  const supabase = createClient()
  let userId: string
  try {
    userId = await getAuthenticatedUserId()
  } catch {
    return { success: false, error: 'Authentication required' }
  }

  try {
    const { data, error } = await supabase
      .from('attempts')
      .select('*')
      .eq('id', attemptId)
      .eq('user_id', userId)   // ← ownership check
      .single()

    if (error) throw error

    return { success: true, attempt: data }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Test attempt not found' }
  }
}

// 3. GET TEST ATTEMPTS FOR TEST (for leaderboard, history)
export async function getTestAttemptsForTestAction(testId: string) {
  const supabase = createClient()
  try {
    const { data, error } = await supabase
      .from('attempts')
      .select('*')
      .eq('test_id', testId)
      .order('submitted_at', { ascending: false })
      .limit(100)

    if (error) throw error

    return { success: true, attempts: data as TestAttempt[] }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to retrieve test attempts' }
  }
}

// 4. UPDATE TEST ATTEMPT (Auto-save) — FIX #10: ownership check added
export async function updateTestAttemptAction(
  attemptId: string,
  responses: Record<string, UserResponse>,
  timeTakenSeconds: number
) {
  const supabase = createClient()
  let userId: string
  try {
    userId = await getAuthenticatedUserId()
  } catch {
    return { success: false, error: 'Authentication required' }
  }

  try {
    const { error } = await supabase
      .from('attempts')
      .update({
        responses,
        time_taken_seconds: timeTakenSeconds,
        status: 'in_progress'
      })
      .eq('id', attemptId)
      .eq('user_id', userId)   // ← ownership check

    if (error) throw error

    return { success: true }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to auto-save test attempt' }
  }
}

// 5. LOG TAB SWITCH (Anti-cheat) — FIX #16: verify attempt belongs to caller
export async function logTabSwitchAction(attemptId: string) {
  const supabase = createClient()
  let userId: string
  try {
    userId = await getAuthenticatedUserId()
  } catch {
    return { success: false, error: 'Authentication required' }
  }

  try {
    // Verify ownership before logging
    const { data: attempt, error: ownerErr } = await supabase
      .from('attempts')
      .select('id')
      .eq('id', attemptId)
      .eq('user_id', userId)
      .single()

    if (ownerErr || !attempt) {
      return { success: false, error: 'Attempt not found or access denied.' }
    }

    const { error } = await supabase
      .from('tab_switch_logs')
      .insert({
        attempt_id: attemptId,
        switched_at: new Date().toISOString(),
        tab_count: 1
      })

    if (error) throw error

    return { success: true }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to log tab switch' }
  }
}

// 6. SUBMIT TEST ATTEMPT — FIX #5: ownership check + server-side time validation
export async function submitTestAttemptAction(
  attemptId: string,
  testId: string,
  responses: Record<string, UserResponse>,
  timeTakenSeconds: number
) {
  const supabase = createClient()
  let userId: string
  try {
    userId = await getAuthenticatedUserId()
  } catch {
    return { success: false, error: 'Authentication required' }
  }

  try {
    // Fetch attempt and verify ownership in one query
    const { data: existingAttempt, error: attemptErr } = await supabase
      .from('attempts')
      .select('*')
      .eq('id', attemptId)
      .eq('user_id', userId)   // ← ownership check
      .eq('status', 'in_progress')
      .single()

    if (attemptErr || !existingAttempt) {
      return { success: false, error: 'Attempt not found, already submitted, or access denied.' }
    }

    // FIX #9: Server-authoritative time — compute from DB started_at, not client value
    const serverStartedAt = new Date(existingAttempt.started_at).getTime()
    const serverTimeTaken = Math.floor((Date.now() - serverStartedAt) / 1000)

    // Fetch test configuration to get questions and compute score
    const configRes = await getTestConfigAction(testId)
    if (!configRes.success || !configRes.test || !configRes.questions) {
      return { success: false, error: configRes.error || 'Invalid test configuration' }
    }

    const questions = configRes.questions
    const maxDurationSeconds = configRes.test.duration_minutes * 60

    // Reject if server time says the test hasn't started yet or is way over
    if (serverTimeTaken < 0) {
      return { success: false, error: 'Invalid submission time.' }
    }

    // Evaluate answers and calculate score server-side
    let totalScore = 0
    const subjectScores: Record<string, number> = { physics: 0, chemistry: 0, mathematics: 0 }

    Object.values(responses).forEach(resp => {
      const q = questions.find(question => question.id === resp.question_id)
      if (!q) return

      let isCorrect = false
      if (q.question_type === 'single_correct' || q.question_type === 'numerical') {
        isCorrect = String(q.correct_answer.value) === String(resp.answer)
      } else if (q.question_type === 'multiple_correct') {
        const correctArray = q.correct_answer.value as string[]
        const respArray = (resp.answer as string[]) || []
        isCorrect = correctArray.length === respArray.length && correctArray.every(val => respArray.includes(val))
      }

      if (isCorrect) {
        totalScore += q.marks_correct
        if (subjectScores[q.subject] !== undefined) {
          subjectScores[q.subject] += q.marks_correct
        }
      } else if (resp.answer !== null && resp.answer !== '') {
        totalScore += q.marks_incorrect
        if (subjectScores[q.subject] !== undefined) {
          subjectScores[q.subject] += q.marks_incorrect
        }
      }
    })

    // Determine final status: timed_out if server says time exceeded
    const finalStatus = serverTimeTaken > maxDurationSeconds + 30 ? 'timed_out' : 'submitted'

    const { error } = await supabase
      .from('attempts')
      .update({
        submitted_at: new Date().toISOString(),
        time_taken_seconds: Math.min(serverTimeTaken, maxDurationSeconds), // cap at max
        responses,
        score: totalScore,
        subject_scores: subjectScores,
        status: finalStatus
      })
      .eq('id', attemptId)
      .eq('user_id', userId)   // ← ownership check on update too

    if (error) throw error

    return {
      success: true,
      attempt: {
        id: attemptId,
        score: totalScore,
        subject_scores: subjectScores,
        submitted_at: new Date().toISOString(),
        status: finalStatus
      }
    }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to submit test attempt' }
  }
}

// 7. GET TEST CONFIGURATION — FIX #14: no more "expose all questions" fallback
export async function getTestConfigAction(testId: string) {
  const supabase = createClient()

  try {
    // Check custom_tests first
    const { data: customTest, error: customError } = await supabase
      .from('custom_tests')
      .select('*')
      .eq('id', testId)
      .single()

    if (!customError && customTest) {
      const qResp = await getQuestionsAction()
      const selectedQuestions = (qResp.questions || []).filter(q =>
        (customTest.question_ids as string[]).includes(q.id)
      )
      return {
        success: true,
        test: {
          id: customTest.id,
          title: customTest.title,
          test_type: customTest.test_type,
          exam_pattern: customTest.exam_pattern,
          subjects: customTest.subjects,
          chapters_covered: customTest.chapters_covered,
          duration_minutes: customTest.duration_minutes,
          total_marks: customTest.total_marks,
          question_ids: customTest.question_ids,
          created_at: customTest.created_at
        } as Test,
        questions: selectedQuestions
      }
    }

    // Check standard tests table
    const { data: test, error: testError } = await supabase
      .from('tests')
      .select('*')
      .eq('id', testId)
      .single()

    if (!testError && test) {
      const qResp = await getQuestionsAction()
      const selectedQuestions = (qResp.questions || []).filter(q =>
        (test.question_ids as string[]).includes(q.id)
      )
      return {
        success: true,
        test: {
          id: test.id,
          title: test.title,
          test_type: test.test_type,
          exam_pattern: test.exam_pattern,
          subjects: test.subjects,
          chapters_covered: test.chapters_covered,
          duration_minutes: test.duration_minutes,
          total_marks: test.total_marks,
          question_ids: test.question_ids,
          created_at: test.created_at
        } as Test,
        questions: selectedQuestions
      }
    }

    // FIX #14: No fallback that exposes all questions.
    // Only the known sandbox test IDs get a pre-defined config.
    const SANDBOX_TEST_IDS: Record<string, { title: string; duration: number; total: number }> = {
      'sandbox-test-1': { title: 'JEE Main 2026 Full Syllabus Mock Test #1', duration: 180, total: 300 },
      'sandbox-test-2': { title: 'JEE Advanced Mock Simulator (Paper 1 & Paper 2)', duration: 180, total: 180 },
    }

    if (testId in SANDBOX_TEST_IDS) {
      const meta = SANDBOX_TEST_IDS[testId]
      const response = await getQuestionsAction()
      if (!response.success || !response.questions) {
        return { success: false, error: 'Failed to retrieve questions from question bank.' }
      }

      const testConfig: Test = {
        id: testId,
        title: meta.title,
        test_type: 'full_mock',
        exam_pattern: 'jee_main',
        subjects: ['physics', 'chemistry', 'mathematics'],
        chapters_covered: {
          physics: ['All Chapters'],
          chemistry: ['All Chapters'],
          mathematics: ['All Chapters']
        },
        duration_minutes: meta.duration,
        total_marks: meta.total,
        question_ids: response.questions.map(q => q.id),
        created_at: new Date().toISOString()
      }

      return { success: true, test: testConfig, questions: response.questions }
    }

    // Unknown test ID — return 404 instead of leaking all questions
    return { success: false, error: 'Test not found.' }
  } catch {
    return { success: false, error: 'Failed to initialize the test engine.' }
  }
}

export async function createCustomPyqTestAction(questionIds: string[], title: string) {
  const supabase = createClient()
  let userId: string
  try {
    userId = await getAuthenticatedUserId()
  } catch {
    return { success: false, error: 'Authentication required' }
  }

  try {
    const qResp = await getQuestionsAction()
    if (!qResp.success || !qResp.questions) {
      return { success: false, error: 'Failed to fetch questions' }
    }

    const selectedQuestions = qResp.questions.filter(q => questionIds.includes(q.id))
    const subjects = Array.from(new Set(selectedQuestions.map(q => q.subject)))
    const totalMarks = selectedQuestions.reduce((sum, q) => sum + q.marks_correct, 0)

    const { data, error } = await supabase
      .from('custom_tests')
      .insert({
        user_id: userId,
        title,
        test_type: 'pyq_paper',
        exam_pattern: 'jee_main',
        subjects,
        chapters_covered: {},
        duration_minutes: Math.max(15, questionIds.length * 3),
        total_marks: totalMarks,
        question_ids: questionIds
      })
      .select()
      .single()

    if (error) throw error

    return { success: true, testId: data.id }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to create custom PYQ mock test.' }
  }
}