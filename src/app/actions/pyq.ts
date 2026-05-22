'use server'

import { createClient, isSupabaseConfigured } from '@/lib/supabase/server'
import fs from 'fs'
import path from 'path'
import { getQuestionsAction } from './question'
import { Question } from '@/types/question'
import { PyqBookmark, PyqQuestionStats } from '@/types/pyq'

// ─── FIX #15: Bookmarks are now per-user ─────────────────────────────────────
// In Supabase mode: stored in the bookmarks table with user_id.
// In sandbox mode: stored in a flat file keyed by a mock user ID so multiple
// sandbox users don't share the same bookmark list.

const STATS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_pyq_stats.json')

// Sandbox bookmark path is per mock-user (uses a fixed sandbox user id)
const SANDBOX_USER_ID = 'mock-user-uuid-1234-5678'
const sandboxBookmarksPath = () =>
  path.join(process.cwd(), 'src', 'app', 'actions', `mock_bookmarks_${SANDBOX_USER_ID}.json`)

function readSandboxBookmarks(): PyqBookmark[] {
  try {
    const p = sandboxBookmarksPath()
    if (fs.existsSync(p)) return JSON.parse(fs.readFileSync(p, 'utf-8'))
  } catch {}
  return []
}

function writeSandboxBookmarks(bookmarks: PyqBookmark[]) {
  fs.writeFileSync(sandboxBookmarksPath(), JSON.stringify(bookmarks, null, 2))
}

function readStats(): Record<string, PyqQuestionStats> {
  try {
    if (fs.existsSync(STATS_PATH)) return JSON.parse(fs.readFileSync(STATS_PATH, 'utf-8'))
  } catch {}
  return {}
}

function writeStats(stats: Record<string, PyqQuestionStats>) {
  fs.writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2))
}

// Helper: get authenticated user id (returns null in sandbox mode)
async function getAuthUserId(): Promise<string | null> {
  if (!isSupabaseConfigured) return SANDBOX_USER_ID
  const supabase = createClient()
  const { data: { user } } = await supabase.auth.getUser()
  return user?.id ?? null
}

export async function getPyqMetaAction() {
  const res = await getQuestionsAction({ is_pyq: true })
  if (!res.success || !res.questions) return { success: false, error: res.error }

  const questions = res.questions
  const years = Array.from(new Set(questions.map(q => q.pyq_year).filter(Boolean))).sort((a, b) => (b as number) - (a as number))
  const shifts = Array.from(new Set(questions.map(q => q.pyq_shift).filter(Boolean))) as string[]
  const chapters = Array.from(new Set(questions.map(q => q.chapter))).sort()
  const topics = Array.from(new Set(questions.map(q => q.topic).filter(Boolean))) as string[]

  return { success: true, years, shifts, chapters, topics, total: questions.length }
}

export async function getTrendingPyqsAction(limit = 5) {
  const res = await getQuestionsAction({ is_pyq: true })
  if (!res.success || !res.questions) return { success: false, error: res.error, trending: [] as Question[] }

  const stats = readStats()
  const scored = res.questions.map(q => {
    const s = stats[q.id] ?? { views: 0, bookmarks: 0 }
    return { question: q, score: s.views + s.bookmarks * 3 }
  })
  scored.sort((a, b) => b.score - a.score)
  return { success: true, trending: scored.slice(0, limit).map(s => s.question) }
}

export async function recordPyqViewAction(questionId: string) {
  const stats = readStats()
  const current = stats[questionId] ?? { views: 0, bookmarks: 0 }
  stats[questionId] = { ...current, views: current.views + 1 }
  writeStats(stats)
  return { success: true }
}

export async function getBookmarksAction() {
  const userId = await getAuthUserId()
  if (!userId) return { success: false, error: 'Authentication required', bookmarks: [] as PyqBookmark[] }

  if (!isSupabaseConfigured) {
    return { success: true, bookmarks: readSandboxBookmarks() }
  }

  const supabase = createClient()
  const { data, error } = await supabase
    .from('bookmarks')
    .select('question_id, note, created_at')
    .eq('user_id', userId)
    .order('created_at', { ascending: false })

  if (error) return { success: false, error: error.message, bookmarks: [] as PyqBookmark[] }

  const bookmarks: PyqBookmark[] = (data || []).map((b: { question_id: string; note: string | null; created_at: string }) => ({
    question_id: b.question_id,
    tag: b.note ?? undefined,
    created_at: b.created_at,
  }))
  return { success: true, bookmarks }
}

export async function toggleBookmarkAction(questionId: string, tag?: string) {
  const userId = await getAuthUserId()
  if (!userId) return { success: false, error: 'Authentication required', bookmarked: false, bookmarks: [] as PyqBookmark[] }

  const stats = readStats()

  if (!isSupabaseConfigured) {
    const bookmarks = readSandboxBookmarks()
    const index = bookmarks.findIndex(b => b.question_id === questionId)
    const current = stats[questionId] ?? { views: 0, bookmarks: 0 }

    if (index >= 0) {
      bookmarks.splice(index, 1)
      stats[questionId] = { ...current, bookmarks: Math.max(0, current.bookmarks - 1) }
      writeSandboxBookmarks(bookmarks)
      writeStats(stats)
      return { success: true, bookmarked: false, bookmarks }
    }

    bookmarks.unshift({ question_id: questionId, tag: tag?.trim() || undefined, created_at: new Date().toISOString() })
    stats[questionId] = { ...current, bookmarks: current.bookmarks + 1 }
    writeSandboxBookmarks(bookmarks)
    writeStats(stats)
    return { success: true, bookmarked: true, bookmarks }
  }

  const supabase = createClient()
  const { data: existing } = await supabase
    .from('bookmarks')
    .select('id')
    .eq('user_id', userId)
    .eq('question_id', questionId)
    .single()

  const current = stats[questionId] ?? { views: 0, bookmarks: 0 }

  if (existing) {
    await supabase.from('bookmarks').delete().eq('user_id', userId).eq('question_id', questionId)
    stats[questionId] = { ...current, bookmarks: Math.max(0, current.bookmarks - 1) }
    writeStats(stats)
    const { bookmarks } = await getBookmarksAction()
    return { success: true, bookmarked: false, bookmarks: bookmarks ?? [] }
  }

  await supabase.from('bookmarks').insert({ user_id: userId, question_id: questionId, note: tag?.trim() || null })
  stats[questionId] = { ...current, bookmarks: current.bookmarks + 1 }
  writeStats(stats)
  const { bookmarks } = await getBookmarksAction()
  return { success: true, bookmarked: true, bookmarks: bookmarks ?? [] }
}

export async function updateBookmarkTagAction(questionId: string, tag: string) {
  const userId = await getAuthUserId()
  if (!userId) return { success: false, error: 'Authentication required' }

  if (!isSupabaseConfigured) {
    const bookmarks = readSandboxBookmarks()
    const item = bookmarks.find(b => b.question_id === questionId)
    if (!item) return { success: false, error: 'Bookmark not found.' }
    item.tag = tag.trim() || undefined
    writeSandboxBookmarks(bookmarks)
    return { success: true, bookmarks }
  }

  const supabase = createClient()
  const { error } = await supabase
    .from('bookmarks')
    .update({ note: tag.trim() || null })
    .eq('user_id', userId)
    .eq('question_id', questionId)

  if (error) return { success: false, error: error.message }
  const { bookmarks } = await getBookmarksAction()
  return { success: true, bookmarks: bookmarks ?? [] }
}
