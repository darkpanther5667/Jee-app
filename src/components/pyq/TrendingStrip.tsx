'use client'

import React from 'react'
import { Question } from '@/types/question'
import { Flame, ChevronRight } from 'lucide-react'
import { formatPyqExam } from '@/constants/pyq'

interface TrendingStripProps {
  questions: Question[]
  onSelect: (questionId: string) => void
}

export default function TrendingStrip({ questions, onSelect }: TrendingStripProps) {
  if (questions.length === 0) return null

  return (
    <section className="bg-white border border-slate-200 rounded-2xl p-4 shadow-sm">
      <h3 className="text-xs font-extrabold uppercase tracking-wider text-neutral-desc flex items-center gap-2 mb-3">
        <Flame className="w-4 h-4 text-accent" />
        Trending PYQs
      </h3>
      <ul className="space-y-2">
        {questions.map((q, i) => (
          <li key={q.id}>
            <button
              type="button"
              onClick={() => onSelect(q.id)}
              className="w-full flex items-center gap-3 p-2.5 rounded-xl hover:bg-slate-50 border border-transparent hover:border-slate-200 transition-all text-left group"
            >
              <span className="w-6 h-6 rounded-lg bg-accent/10 text-accent text-[10px] font-black flex items-center justify-center shrink-0">
                {i + 1}
              </span>
              <span className="flex-grow min-w-0">
                <span className="block text-[10px] font-extrabold text-primary uppercase">
                  {formatPyqExam(q.pyq_exam)} {q.pyq_year} · {q.subject}
                </span>
                <span className="block text-[10px] font-semibold text-slate-500 truncate">
                  {q.chapter}{q.topic ? ` — ${q.topic}` : ''}
                </span>
              </span>
              <ChevronRight className="w-4 h-4 text-slate-300 group-hover:text-primary shrink-0" />
            </button>
          </li>
        ))}
      </ul>
    </section>
  )
}
