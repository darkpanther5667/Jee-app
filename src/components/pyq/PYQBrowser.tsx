'use client'

import React, { useCallback, useEffect, useState } from 'react'
import Link from 'next/link'
import { getQuestionsAction } from '@/app/actions/question'
import { createCustomPyqTestAction } from '@/app/actions/test'
import { getPyqMetaAction, getTrendingPyqsAction } from '@/app/actions/pyq'
import { Question } from '@/types/question'
import { PyqFilters } from '@/types/pyq'
import { usePyqBookmarks } from '@/hooks/usePyqBookmarks'
import FilterPanel from './FilterPanel'
import PYQQuestionCard from './PYQQuestionCard'
import TrendingStrip from './TrendingStrip'
import { Play, Search, AlertCircle, Bookmark } from 'lucide-react'

export const DEFAULT_PYQ_FILTERS: PyqFilters = {
  exam: 'all',
  year: 'all',
  month: 'all',
  shift: 'all',
  subject: 'all',
  chapter: '',
  topic: '',
  searchQuery: '',
}

export default function PYQBrowser() {
  const [questions, setQuestions] = useState<Question[]>([])
  const [trending, setTrending] = useState<Question[]>([])
  const [topicSuggestions, setTopicSuggestions] = useState<string[]>([])
  const [filters, setFilters] = useState<PyqFilters>(DEFAULT_PYQ_FILTERS)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [creatingTest, setCreatingTest] = useState(false)
  const [showBookmarksOnly, setShowBookmarksOnly] = useState(false)

  const { bookmarkedIds, toggle, getTag, bookmarks } = usePyqBookmarks()

  const patchFilters = useCallback((patch: Partial<PyqFilters>) => {
    setFilters(prev => ({ ...prev, ...patch }))
  }, [])

  const resetFilters = () => setFilters(DEFAULT_PYQ_FILTERS)

  useEffect(() => {
    getPyqMetaAction().then(res => {
      if (res.success && res.topics) {
        setTopicSuggestions(res.topics)
      }
    })
    getTrendingPyqsAction(5).then(res => {
      if (res.success && res.trending) {
        setTrending(res.trending)
      }
    })
  }, [])

  useEffect(() => {
    const fetchPYQs = async () => {
      setLoading(true)
      setError(null)
      try {
        const apiFilters: Record<string, string | number | boolean> = { is_pyq: true }
        if (filters.exam !== 'all') apiFilters.pyq_exam = filters.exam
        if (filters.year !== 'all') apiFilters.pyq_year = filters.year
        if (filters.month !== 'all') apiFilters.pyq_month = filters.month
        if (filters.shift !== 'all') apiFilters.pyq_shift = filters.shift
        if (filters.subject !== 'all') apiFilters.subject = filters.subject
        if (filters.chapter.trim()) apiFilters.chapter = filters.chapter
        if (filters.topic.trim()) apiFilters.topic = filters.topic
        if (filters.searchQuery.trim()) apiFilters.searchQuery = filters.searchQuery

        const res = await getQuestionsAction(apiFilters)
        if (res.success && res.questions) {
          setQuestions(res.questions)
        } else {
          setError(res.error || 'Failed to fetch PYQs.')
        }
      } catch {
        setError('An error occurred loading the PYQ bank.')
      } finally {
        setLoading(false)
      }
    }

    const debounce = setTimeout(fetchPYQs, filters.searchQuery ? 350 : 0)
    return () => clearTimeout(debounce)
  }, [filters])

  const displayedQuestions = showBookmarksOnly
    ? questions.filter(q => bookmarkedIds.has(q.id))
    : questions

  const handleCreateMock = async () => {
    const pool = displayedQuestions
    if (pool.length === 0) return
    setCreatingTest(true)
    try {
      const ids = pool.map(q => q.id)
      const res = await createCustomPyqTestAction(
        ids,
        `Custom PYQ Mock (${ids.length} Qs)`
      )
      if (res.success && res.testId) {
        window.location.href = `/test/${res.testId}`
      } else {
        setError(res.error || 'Failed to create mock test.')
        setCreatingTest(false)
      }
    } catch {
      setError('Network error while generating the test.')
      setCreatingTest(false)
    }
  }

  const scrollToQuestion = (id: string) => {
    document.getElementById(`pyq-${id}`)?.scrollIntoView({ behavior: 'smooth', block: 'center' })
  }

  return (
    <div className="min-h-screen bg-slate-50 font-sans flex flex-col">
      <header className="sticky top-0 z-40 bg-white border-b border-slate-200 px-6 py-4 flex items-center justify-between shadow-sm">
        <div className="flex items-center gap-3">
          <div className="h-9 w-9 rounded-xl bg-gradient-to-br from-primary to-blue-700 flex items-center justify-center text-white font-extrabold text-sm shadow-sm">
            CJ
          </div>
          <div>
            <h1 className="font-display font-extrabold text-base tracking-tight text-neutral-title">
              Previous Year Questions
            </h1>
            <p className="text-[10px] font-bold text-neutral-desc uppercase tracking-wider">
              {displayedQuestions.length} of {questions.length} shown
              {bookmarks.length > 0 && ` · ${bookmarks.length} bookmarked`}
            </p>
          </div>
        </div>

        <div className="flex items-center gap-3">
          <button
            type="button"
            onClick={() => setShowBookmarksOnly(v => !v)}
            className={`px-3 py-2 text-xs font-bold rounded-xl border transition-all flex items-center gap-1.5 ${
              showBookmarksOnly
                ? 'bg-primary-light border-primary/30 text-primary'
                : 'border-slate-200 text-slate-500 hover:border-slate-300'
            }`}
          >
            <Bookmark className="w-4 h-4" />
            Saved
          </button>
          <Link href="/dashboard" className="text-xs font-bold text-slate-500 hover:text-primary transition-all hidden sm:block">
            Dashboard
          </Link>
          <button
            type="button"
            onClick={handleCreateMock}
            disabled={displayedQuestions.length === 0 || creatingTest}
            className="px-4 py-2 bg-primary hover:bg-primary-dark text-white text-xs font-bold rounded-xl shadow-sm transition-all flex items-center gap-2 disabled:opacity-50 active:scale-95"
          >
            {creatingTest ? (
              <span className="animate-pulse">Building Test...</span>
            ) : (
              <>
                <Play className="w-4 h-4 fill-white" />
                <span className="hidden sm:inline">Attempt as Mock</span>
                <span>({displayedQuestions.length})</span>
              </>
            )}
          </button>
        </div>
      </header>

      <main className="flex-grow max-w-7xl w-full mx-auto p-4 sm:p-6 flex flex-col lg:flex-row gap-6">
        <FilterPanel
          filters={filters}
          onChange={patchFilters}
          onReset={resetFilters}
          topicSuggestions={topicSuggestions}
        />

        <div className="flex-grow space-y-6 min-w-0">
          {trending.length > 0 && !showBookmarksOnly && (
            <TrendingStrip questions={trending} onSelect={scrollToQuestion} />
          )}

          {error && (
            <div className="p-4 rounded-xl bg-danger-light border border-danger/10 text-danger text-xs font-semibold flex items-center gap-2">
              <AlertCircle className="h-4 w-4 shrink-0" />
              <span>{error}</span>
            </div>
          )}

          {loading ? (
            <div className="space-y-4">
              {[1, 2, 3].map(n => (
                <div key={n} className="h-48 w-full bg-slate-200/50 animate-pulse rounded-3xl" />
              ))}
            </div>
          ) : displayedQuestions.length === 0 ? (
            <div className="bg-white rounded-3xl border border-slate-200 p-12 text-center max-w-xl mx-auto space-y-4">
              <Search className="h-12 w-12 text-slate-300 mx-auto" />
              <h4 className="font-display font-bold text-base text-neutral-title">
                {showBookmarksOnly ? 'No bookmarked PYQs in this filter' : 'No PYQs Found'}
              </h4>
              <p className="text-xs text-neutral-desc max-w-sm mx-auto">
                {showBookmarksOnly
                  ? 'Bookmark questions while browsing, or turn off Saved to see all results.'
                  : 'Try loosening your filters. Seed mock data from the Admin panel in sandbox mode.'}
              </p>
            </div>
          ) : (
            <div className="space-y-6">
              {displayedQuestions.map(q => (
                <div key={q.id} id={`pyq-${q.id}`}>
                  <PYQQuestionCard
                    question={q}
                    isBookmarked={bookmarkedIds.has(q.id)}
                    bookmarkTag={getTag(q.id)}
                    onToggleBookmark={tag => toggle(q.id, tag)}
                  />
                </div>
              ))}
            </div>
          )}
        </div>
      </main>
    </div>
  )
}
