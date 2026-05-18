'use server'

import fs from 'fs'
import path from 'path'
import { getQuestionsAction } from './question'
import { Question } from '@/types/question'
import { PyqBookmark, PyqQuestionStats } from '@/types/pyq'

const BOOKMARKS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_bookmarks.json')
const STATS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_pyq_stats.json')

function readBookmarks(): PyqBookmark[] {
  try {
    if (fs.existsSync(BOOKMARKS_PATH)) {
      return JSON.parse(fs.readFileSync(BOOKMARKS_PATH, 'utf-8'))
    }
  } catch {}
  return []
}

function writeBookmarks(bookmarks: PyqBookmark[]) {
  fs.writeFileSync(BOOKMARKS_PATH, JSON.stringify(bookmarks, null, 2))
}

function readStats(): Record<string, PyqQuestionStats> {
  try {
    if (fs.existsSync(STATS_PATH)) {
      return JSON.parse(fs.readFileSync(STATS_PATH, 'utf-8'))
    }
  } catch {}
  return {}
}

function writeStats(stats: Record<string, PyqQuestionStats>) {
  fs.writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2))
}

export async function getPyqMetaAction() {
  const res = await getQuestionsAction({ is_pyq: true })
  if (!res.success || !res.questions) {
    return { success: false, error: res.error }
  }

  const questions = res.questions
  const years = Array.from(new Set(questions.map(q => q.pyq_year).filter(Boolean))).sort((a, b) => (b as number) - (a as number))
  const shifts = Array.from(new Set(questions.map(q => q.pyq_shift).filter(Boolean))) as string[]
  const chapters = Array.from(new Set(questions.map(q => q.chapter))).sort()
  const topics = Array.from(new Set(questions.map(q => q.topic).filter(Boolean))) as string[]

  return {
    success: true,
    years,
    shifts,
    chapters,
    topics,
    total: questions.length,
  }
}

export async function getTrendingPyqsAction(limit = 5) {
  const res = await getQuestionsAction({ is_pyq: true })
  if (!res.success || !res.questions) {
    return { success: false, error: res.error, trending: [] as Question[] }
  }

  const stats = readStats()
  const scored = res.questions.map(q => {
    const s = stats[q.id] ?? { views: 0, bookmarks: 0 }
    return { question: q, score: s.views + s.bookmarks * 3 }
  })

  scored.sort((a, b) => b.score - a.score)
  const trending = scored.slice(0, limit).map(s => s.question)

  return { success: true, trending }
}

export async function recordPyqViewAction(questionId: string) {
  const stats = readStats()
  const current = stats[questionId] ?? { views: 0, bookmarks: 0 }
  stats[questionId] = { ...current, views: current.views + 1 }
  writeStats(stats)
  return { success: true }
}

export async function getBookmarksAction() {
  return { success: true, bookmarks: readBookmarks() }
}

export async function toggleBookmarkAction(questionId: string, tag?: string) {
  const bookmarks = readBookmarks()
  const index = bookmarks.findIndex(b => b.question_id === questionId)
  const stats = readStats()

  if (index >= 0) {
    bookmarks.splice(index, 1)
    const current = stats[questionId] ?? { views: 0, bookmarks: 0 }
    stats[questionId] = { ...current, bookmarks: Math.max(0, current.bookmarks - 1) }
    writeBookmarks(bookmarks)
    writeStats(stats)
    return { success: true, bookmarked: false, bookmarks }
  }

  bookmarks.unshift({
    question_id: questionId,
    tag: tag?.trim() || undefined,
    created_at: new Date().toISOString(),
  })
  const current = stats[questionId] ?? { views: 0, bookmarks: 0 }
  stats[questionId] = { ...current, bookmarks: current.bookmarks + 1 }
  writeBookmarks(bookmarks)
  writeStats(stats)
  return { success: true, bookmarked: true, bookmarks }
}

export async function updateBookmarkTagAction(questionId: string, tag: string) {
  const bookmarks = readBookmarks()
  const item = bookmarks.find(b => b.question_id === questionId)
  if (!item) return { success: false, error: 'Bookmark not found.' }
  item.tag = tag.trim() || undefined
  writeBookmarks(bookmarks)
  return { success: true, bookmarks }
}
