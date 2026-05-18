'use server'

import fs from 'fs'
import path from 'path'
import { getQuestionsAction } from './question'
import { Test, TestAttempt, UserResponse } from '@/types/test'

const MOCK_ATTEMPTS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_attempts.json')
const MOCK_CUSTOM_TESTS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_custom_tests.json')

function readMockAttempts(): TestAttempt[] {
  try {
    if (fs.existsSync(MOCK_ATTEMPTS_PATH)) {
      return JSON.parse(fs.readFileSync(MOCK_ATTEMPTS_PATH, 'utf-8'))
    }
  } catch {}
  return []
}

function writeMockAttempts(attempts: TestAttempt[]) {
  fs.writeFileSync(MOCK_ATTEMPTS_PATH, JSON.stringify(attempts, null, 2))
}

function readCustomTests(): Test[] {
  try {
    if (fs.existsSync(MOCK_CUSTOM_TESTS_PATH)) {
      return JSON.parse(fs.readFileSync(MOCK_CUSTOM_TESTS_PATH, 'utf-8'))
    }
  } catch {}
  return []
}

function writeCustomTests(tests: Test[]) {
  fs.writeFileSync(MOCK_CUSTOM_TESTS_PATH, JSON.stringify(tests, null, 2))
}

export async function getTestAttemptAction(attemptId: string) {
  try {
    const attempts = readMockAttempts()
    const attempt = attempts.find(a => a.id === attemptId)
    if (attempt) return { success: true, attempt }
    return { success: false, error: 'Test attempt not found in sandbox environment.' }
  } catch {
    return { success: false, error: 'Failed to retrieve test attempt.' }
  }
}

// 1. GET FULL MOCK TEST CONFIGURATION
export async function getTestConfigAction(testId: string) {
  try {
    // If it's a dynamic PYQ mock test, fetch from custom memory
    if (testId.startsWith('pyq-mock-') || testId.startsWith('admin-test-')) {
      const customTests = readCustomTests()
      const customTest = customTests.find(t => t.id === testId)
      if (customTest) {
        const qResp = await getQuestionsAction()
        const selectedQuestions = (qResp.questions || []).filter(q => customTest.question_ids.includes(q.id))
        return { success: true, test: customTest, questions: selectedQuestions }
      }
    }

    // Default Sandbox Demo: fetch all available questions and wrap them into a 3-hour exam
    const response = await getQuestionsAction()
    if (!response.success || !response.questions) {
      return { success: false, error: 'Failed to retrieve questions from question bank.' }
    }

    const testConfig: Test = {
      id: testId,
      title: 'JEE Main 2026 Full Syllabus Mock Test #1',
      test_type: 'full_mock',
      exam_pattern: 'jee_main',
      subjects: ['physics', 'chemistry', 'mathematics'],
      chapters_covered: { 
        physics: ['All Chapters'], 
        chemistry: ['All Chapters'], 
        mathematics: ['All Chapters'] 
      },
      duration_minutes: 180,
      total_marks: 300,
      question_ids: response.questions.map(q => q.id),
      created_at: new Date().toISOString()
    }

    return { 
      success: true, 
      test: testConfig, 
      questions: response.questions 
    }
  } catch {
    return { success: false, error: 'Failed to initialize the test engine.' }
  }
}

export async function getTestAttemptsForTestAction(testId: string) {
  try {
    const attempts = readMockAttempts()
    return { success: true, attempts: attempts.filter(a => a.test_id === testId) }
  } catch {
    return { success: false, error: 'Failed to retrieve test attempts for test.' }
  }
}

// 1.5. CREATE CUSTOM PYQ MOCK TEST
export async function createCustomPyqTestAction(questionIds: string[], title: string) {
  try {
    const testId = `pyq-mock-${Date.now()}`
    
    // Estimate total marks based on standard JEE pattern (4 marks per Q)
    const testConfig: Test = {
      id: testId,
      title,
      test_type: 'pyq_paper',
      exam_pattern: 'jee_main', // or advanced based on content
      subjects: ['physics', 'chemistry', 'mathematics'], // Simplified
      chapters_covered: {},
      duration_minutes: Math.max(15, questionIds.length * 3), // Roughly 3 mins per question
      total_marks: questionIds.length * 4,
      question_ids: questionIds,
      created_at: new Date().toISOString()
    }

    const tests = readCustomTests()
    tests.push(testConfig)
    writeCustomTests(tests)

    return { success: true, testId }
  } catch {
    return { success: false, error: 'Failed to create custom PYQ mock test.' }
  }
}

// 2. SUBMIT TEST ATTEMPT
export async function submitTestAttemptAction(testId: string, responses: Record<string, UserResponse>, timeTakenSeconds: number) {
  // In Sandbox mode, we calculate the score dynamically on the server
  try {
    const qResp = await getQuestionsAction()
    const questions = qResp.questions || []
    
    let totalScore = 0
    const subjectScores: Record<string, number> = { physics: 0, chemistry: 0, mathematics: 0 }

    Object.values(responses).forEach(resp => {
      const q = questions.find(question => question.id === resp.question_id)
      if (!q) return

      // Evaluate the answer locally on server
      let isCorrect = false
      if (q.question_type === 'single_correct' || q.question_type === 'numerical') {
        isCorrect = String(q.correct_answer.value) === String(resp.answer)
      } else if (q.question_type === 'multiple_correct') {
        const correctArray = q.correct_answer.value as string[]
        const respArray = (resp.answer as string[]) || []
        // Deep array comparison
        isCorrect = correctArray.length === respArray.length && correctArray.every(val => respArray.includes(val))
      }

      if (isCorrect) {
        totalScore += q.marks_correct
        if (subjectScores[q.subject] !== undefined) {
          subjectScores[q.subject] += q.marks_correct
        }
      } else if (resp.answer !== null && resp.answer !== '') {
        // If answered but wrong, apply negative marking
        totalScore += q.marks_incorrect // Negative marks are usually stored as negative (e.g. -1)
        if (subjectScores[q.subject] !== undefined) {
          subjectScores[q.subject] += q.marks_incorrect
        }
      }
    })

    const attemptRecord: TestAttempt = {
      id: `attempt-${Date.now()}`,
      user_id: 'mock-user-id', // Assuming Sandbox mode
      test_id: testId,
      started_at: new Date(Date.now() - (timeTakenSeconds * 1000)).toISOString(),
      submitted_at: new Date().toISOString(),
      time_taken_seconds: timeTakenSeconds,
      responses,
      score: totalScore,
      subject_scores: subjectScores,
      status: 'submitted'
    }

    // Persist to Mock Backend
    const attempts = readMockAttempts()
    attempts.push(attemptRecord)
    writeMockAttempts(attempts)

    return { success: true, attempt: attemptRecord }
  } catch {
    return { success: false, error: 'Failed to evaluate and save test results.' }
  }
}
