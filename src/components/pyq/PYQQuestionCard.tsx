'use client'

import React, { useState } from 'react'
import { Question } from '@/types/question'
import QuestionCard from '@/components/test/QuestionCard'
import SolutionDrawer from './SolutionDrawer'
import BookmarkButton from './BookmarkButton'
import { formatPyqExam, formatPyqShift } from '@/constants/pyq'

interface PYQQuestionCardProps {
  question: Question
  isBookmarked: boolean
  bookmarkTag?: string
  onToggleBookmark: (tag?: string) => Promise<boolean>
}

export default function PYQQuestionCard({
  question,
  isBookmarked,
  bookmarkTag,
  onToggleBookmark,
}: PYQQuestionCardProps) {
  const [solutionOpen, setSolutionOpen] = useState(false)

  const shiftLabel = formatPyqShift(question.pyq_shift)
  const metaParts = [
    question.subject.toUpperCase(),
    question.chapter,
    question.topic,
    shiftLabel,
  ].filter(Boolean)

  return (
    <article className="bg-white border border-slate-200 rounded-3xl overflow-hidden shadow-sm hover:shadow-md transition-all">
      <header className="bg-slate-50 border-b border-slate-100 px-6 py-3 flex items-center justify-between gap-3">
        <div className="flex flex-wrap items-center gap-2 min-w-0">
          <span className="px-2.5 py-1 bg-amber-100 text-amber-800 text-[9px] font-black uppercase tracking-wider rounded-lg border border-amber-200 shrink-0">
            {formatPyqExam(question.pyq_exam)} {question.pyq_year}
            {question.pyq_month ? ` · ${question.pyq_month}` : ''}
          </span>
          <span className="text-[10px] font-bold text-slate-400 truncate">
            {metaParts.join(' • ')}
          </span>
        </div>
        <BookmarkButton
          isBookmarked={isBookmarked}
          tag={bookmarkTag}
          onToggle={onToggleBookmark}
        />
      </header>

      <div className="p-2">
        <QuestionCard question={question} showSolution={false} />
      </div>

      <footer className="px-6 py-4 bg-white border-t border-slate-100 flex items-center justify-between gap-3">
        <div className="flex flex-wrap gap-2">
          <span className="px-2 py-1 bg-slate-100 text-slate-500 text-[9px] font-black uppercase rounded border border-slate-200">
            {question.difficulty}
          </span>
          <span className="px-2 py-1 bg-slate-100 text-slate-500 text-[9px] font-black uppercase rounded border border-slate-200">
            {question.question_type.replace('_', ' ')}
          </span>
        </div>
        <button
          type="button"
          onClick={() => setSolutionOpen(v => !v)}
          className="text-xs font-extrabold text-primary hover:text-primary-dark transition-all shrink-0"
        >
          {solutionOpen ? 'Hide Solution' : 'View Full Solution'}
        </button>
      </footer>

      <SolutionDrawer
        question={question}
        isOpen={solutionOpen}
        onClose={() => setSolutionOpen(false)}
      />
    </article>
  )
}
