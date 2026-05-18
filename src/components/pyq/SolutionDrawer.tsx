'use client'

import React, { useEffect } from 'react'
import { Question } from '@/types/question'
import MathRenderer from '@/components/common/MathRenderer'
import { recordPyqViewAction } from '@/app/actions/pyq'
import { Check, Play, X } from 'lucide-react'

interface SolutionDrawerProps {
  question: Question
  isOpen: boolean
  onClose: () => void
}

export default function SolutionDrawer({ question, isOpen, onClose }: SolutionDrawerProps) {
  useEffect(() => {
    if (isOpen) {
      recordPyqViewAction(question.id)
    }
  }, [isOpen, question.id])

  if (!isOpen) return null

  const answerLabel = Array.isArray(question.correct_answer.value)
    ? question.correct_answer.value.join(', ')
    : String(question.correct_answer.value)

  return (
    <section className="border-t border-slate-100 bg-gradient-to-b from-slate-50 to-white px-6 py-5 space-y-5 animate-fade-in">
      <div className="flex items-center justify-between">
        <h4 className="text-xs font-extrabold uppercase tracking-wider text-neutral-desc">Full Solution</h4>
        <button
          type="button"
          onClick={onClose}
          className="p-1.5 rounded-lg text-slate-400 hover:text-slate-600 hover:bg-slate-100 transition-all"
          aria-label="Close solution"
        >
          <X className="w-4 h-4" />
        </button>
      </div>

      <div className="p-4 rounded-xl bg-primary-light border border-primary/10 flex items-center gap-3">
        <div className="h-6 w-6 rounded-md bg-primary flex items-center justify-center text-white shrink-0">
          <Check className="h-4 w-4" />
        </div>
        <p className="text-xs text-neutral-title">
          Correct answer:{' '}
          <strong className="text-primary uppercase font-extrabold">{answerLabel}</strong>
        </p>
      </div>

      {question.solution_text && (
        <div className="space-y-2">
          <h5 className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider">
            Step-by-step walkthrough
          </h5>
          <div className="text-xs sm:text-sm text-neutral-title leading-relaxed p-5 bg-white border border-slate-200 rounded-2xl shadow-inner">
            <MathRenderer text={question.solution_text} />
          </div>
        </div>
      )}

      {question.solution_image_url && (
        <div className="rounded-2xl border border-slate-200 overflow-hidden bg-slate-50 p-4 flex justify-center">
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            src={question.solution_image_url}
            alt="Solution diagram"
            className="max-h-64 object-contain rounded-xl"
          />
        </div>
      )}

      {question.solution_video_url && (
        <div>
          <h5 className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider flex items-center gap-1 mb-2">
            <Play className="h-3.5 w-3.5 text-rose-500 fill-rose-500" />
            Video solution
          </h5>
          <div className="relative overflow-hidden rounded-2xl bg-black aspect-video border border-slate-200 shadow-sm max-w-2xl">
            <iframe
              src={question.solution_video_url}
              title="PYQ video solution"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowFullScreen
              className="absolute inset-0 w-full h-full border-none"
            />
          </div>
        </div>
      )}
    </section>
  )
}
