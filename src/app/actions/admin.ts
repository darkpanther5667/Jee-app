'use server'

import fs from 'fs'
import path from 'path'
import { getQuestionsAction } from './question'
import { Test, TestAttempt } from '@/types/test'
import { Question } from '@/types/question'

const MOCK_ATTEMPTS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_attempts.json')
const MOCK_CUSTOM_TESTS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_custom_tests.json')
const MOCK_BOOKMARKS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_bookmarks.json')

function readJson<T>(filePath: string, fallback: T): T {
  try {
    if (fs.existsSync(filePath)) {
      return JSON.parse(fs.readFileSync(filePath, 'utf-8')) as T
    }
  } catch {}
  return fallback
}

function writeJson<T>(filePath: string, data: T) {
  fs.writeFileSync(filePath, JSON.stringify(data, null, 2))
}

export async function getAdminStatsAction() {
  const qRes = await getQuestionsAction()
  const questions = qRes.questions ?? []

  const bySubject = {
    physics: questions.filter(q => q.subject === 'physics').length,
    chemistry: questions.filter(q => q.subject === 'chemistry').length,
    mathematics: questions.filter(q => q.subject === 'mathematics').length,
  }

  const attempts = readJson<TestAttempt[]>(MOCK_ATTEMPTS_PATH, [])
  const tests = readJson<Test[]>(MOCK_CUSTOM_TESTS_PATH, [])
  const bookmarks = readJson<unknown[]>(MOCK_BOOKMARKS_PATH, [])

  return {
    success: true,
    stats: {
      totalQuestions: questions.length,
      pyqCount: questions.filter(q => q.is_pyq).length,
      unverifiedCount: questions.filter(q => !q.verified).length,
      bySubject,
      totalAttempts: attempts.length,
      scheduledTests: tests.length,
      bookmarkCount: bookmarks.length,
    },
  }
}

export async function getAdminTestsAction() {
  const tests = readJson<Test[]>(MOCK_CUSTOM_TESTS_PATH, [])
  return { success: true, tests }
}

export async function createAdminTestAction(input: {
  title: string
  test_type: Test['test_type']
  exam_pattern: Test['exam_pattern']
  duration_minutes: number
  question_ids: string[]
  is_scheduled?: boolean
  scheduled_at?: string
  available_from?: string
  available_till?: string
  is_free?: boolean
}) {
  if (input.question_ids.length === 0) {
    return { success: false, error: 'Select at least one question for the test.' }
  }

  const qRes = await getQuestionsAction()
  const selected = (qRes.questions ?? []).filter(q => input.question_ids.includes(q.id))
  const totalMarks = selected.reduce((sum, q) => sum + q.marks_correct, 0)

  const test: Test & { created_at: string; subjects: string[] } = {
    id: `admin-test-${Date.now()}`,
    title: input.title,
    test_type: input.test_type,
    exam_pattern: input.exam_pattern,
    duration_minutes: input.duration_minutes,
    total_marks: totalMarks || input.question_ids.length * 4,
    question_ids: input.question_ids,
    is_scheduled: input.is_scheduled ?? false,
    scheduled_at: input.scheduled_at,
    available_from: input.available_from,
    available_till: input.available_till,
    is_free: input.is_free ?? true,
    subjects: ['physics', 'chemistry', 'mathematics'],
    created_at: new Date().toISOString(),
  }

  const tests = readJson<Test[]>(MOCK_CUSTOM_TESTS_PATH, [])
  tests.unshift(test)
  writeJson(MOCK_CUSTOM_TESTS_PATH, tests)

  return { success: true, test }
}

export async function deleteAdminTestAction(testId: string) {
  const tests = readJson<Test[]>(MOCK_CUSTOM_TESTS_PATH, [])
  const next = tests.filter(t => t.id !== testId)
  if (next.length === tests.length) {
    return { success: false, error: 'Test not found.' }
  }
  writeJson(MOCK_CUSTOM_TESTS_PATH, next)
  return { success: true }
}

export async function getAdminAttemptsAction() {
  const attempts = readJson<TestAttempt[]>(MOCK_ATTEMPTS_PATH, [])
  const sorted = [...attempts].sort(
    (a, b) => new Date(b.submitted_at ?? b.started_at).getTime() - new Date(a.submitted_at ?? a.started_at).getTime()
  )
  return { success: true, attempts: sorted }
}

export async function toggleQuestionVerifiedAction(id: string, verified: boolean) {
  const { updateQuestionAction } = await import('./question')
  return updateQuestionAction(id, { verified })
}

export async function getAdminQuestionsForPickerAction(filters?: {
  subject?: Question['subject']
  is_pyq?: boolean
  verified?: boolean
}) {
  return getQuestionsAction(filters)
}
