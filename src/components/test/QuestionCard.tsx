'use client'

import React, { useState, useEffect } from 'react'
import { Question, QuestionOption } from '@/types/question'
import MathRenderer from '../common/MathRenderer'
import { Check, Eye, EyeOff, Play, Award, Layers } from 'lucide-react'

interface QuestionCardProps {
  question: Question
  selectedAnswer?: string | string[] | number | null
  onAnswerChange?: (answer: string | string[] | number) => void
  showSolution?: boolean
  adminPreview?: boolean
}

export default function QuestionCard({
  question,
  selectedAnswer,
  onAnswerChange,
  showSolution = false,
  adminPreview = false,
}: QuestionCardProps) {
  const [solutionOpen, setSolutionOpen] = useState(showSolution)

  useEffect(() => {
    setSolutionOpen(showSolution)
  }, [showSolution])

  // 1. Difficulty styling helper
  const getDifficultyBadge = (diff: string) => {
    switch (diff) {
      case 'easy':
        return 'bg-emerald-50 text-emerald-700 border-emerald-200'
      case 'medium':
        return 'bg-amber-50 text-amber-700 border-amber-200'
      case 'hard':
        return 'bg-rose-50 text-rose-700 border-rose-200'
      default:
        return 'bg-slate-50 text-slate-700 border-slate-200'
    }
  }

  // 2. Question type display helper
  const getQuestionTypeLabel = (type: string) => {
    switch (type) {
      case 'single_correct':
        return 'Single Correct MCQ'
      case 'multiple_correct':
        return 'Multiple Correct MCQ'
      case 'numerical':
        return 'Numerical Answer'
      case 'matrix_match':
        return 'Matrix Match'
      case 'paragraph':
        return 'Passage-based'
      default:
        return 'Question'
    }
  }

  // 3. Option selection handler for Single Choice
  const handleSingleSelect = (optionId: string) => {
    if (onAnswerChange) {
      onAnswerChange(optionId)
    }
  }

  // 4. Option selection handler for Multiple Choice
  const handleMultipleSelect = (optionId: string) => {
    if (!onAnswerChange) return

    let currentSelected: string[] = []
    if (Array.isArray(selectedAnswer)) {
      currentSelected = [...selectedAnswer]
    } else if (typeof selectedAnswer === 'string') {
      currentSelected = [selectedAnswer]
    }

    if (currentSelected.includes(optionId)) {
      currentSelected = currentSelected.filter(id => id !== optionId)
    } else {
      currentSelected.push(optionId)
      currentSelected.sort() // Keep alphabetized e.g. ["A", "C"]
    }

    onAnswerChange(currentSelected)
  }

  // Check if option is active
  const isOptionSelected = (optionId: string) => {
    if (Array.isArray(selectedAnswer)) {
      return selectedAnswer.includes(optionId)
    }
    return selectedAnswer === optionId
  }

  return (
    <article className="bg-white rounded-3xl border border-slate-200 shadow-sm overflow-hidden transition-all duration-300">
      
      {/* 1. CARD TOP METADATA BAR */}
      <div className="px-6 py-4 bg-slate-50 border-b border-slate-100 flex flex-wrap items-center justify-between gap-4">
        
        <div className="flex items-center gap-3">
          <span className={`px-3 py-1 rounded-full text-[10px] font-extrabold uppercase border ${getDifficultyBadge(question.difficulty)}`}>
            {question.difficulty}
          </span>
          <span className="px-2.5 py-1 rounded-full bg-primary-light text-primary text-[10px] font-extrabold uppercase tracking-wide">
            {getQuestionTypeLabel(question.question_type)}
          </span>
          {question.is_pyq && (
            <span className="px-2.5 py-1 rounded-full bg-indigo-50 text-indigo-700 text-[10px] font-extrabold uppercase tracking-wide border border-indigo-100">
              ⚡ PYQ {question.pyq_exam?.replace('_', ' ')} ({question.pyq_year})
            </span>
          )}
        </div>

        <div className="flex items-center gap-4 text-xs font-bold">
          <span className="flex items-center gap-1 text-emerald-600">
            <Award className="h-4 w-4" />
            <span>Correct: +{question.marks_correct}</span>
          </span>
          <span className="h-3 w-px bg-slate-300" />
          <span className="flex items-center gap-1 text-rose-500">
            <span>Incorrect: {question.marks_incorrect}</span>
          </span>
        </div>

      </div>

      {/* 2. CARD QUESTION PANEL */}
      <div className="p-6 sm:p-8 space-y-6">
        
        {/* Subject & Chapter Context */}
        <div className="flex items-center gap-2 text-xs font-semibold text-neutral-desc">
          <Layers className="h-4 w-4 text-slate-400" />
          <span className="uppercase tracking-wider font-bold text-primary">{question.subject}</span>
          <span className="text-slate-300">/</span>
          <span>{question.chapter}</span>
          {question.topic && (
            <>
              <span className="text-slate-300">/</span>
              <span>{question.topic}</span>
            </>
          )}
        </div>

        {/* Question LaTeX Statement */}
        <div className="text-neutral-title font-medium text-sm sm:text-base tracking-normal">
          <MathRenderer text={question.question_text} />
        </div>

        {/* Optional Image */}
        {question.question_image_url && (
          <div className="rounded-2xl border border-slate-200 overflow-hidden bg-slate-50 flex items-center justify-center p-4">
            {/* eslint-disable-next-line @next/next/no-img-element */}
            <img 
              src={question.question_image_url} 
              alt="Question Visual" 
              className="max-h-[300px] object-contain rounded-xl hover:scale-[1.02] transition-transform duration-300 cursor-zoom-in"
            />
          </div>
        )}

        {/* 3. ANSWER SELECTORS */}
        <div className="pt-2">
          
          {/* A: MCQ Type Options */}
          {(question.question_type === 'single_correct' || question.question_type === 'multiple_correct') && question.options && (
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {question.options.map((option: QuestionOption) => {
                const selected = isOptionSelected(option.id)
                const isSingle = question.question_type === 'single_correct'

                return (
                  <button
                    key={option.id}
                    type="button"
                    onClick={() => isSingle ? handleSingleSelect(option.id) : handleMultipleSelect(option.id)}
                    className={`w-full text-left p-4 rounded-2xl border transition-all flex items-start gap-4 ${
                      selected
                        ? 'border-primary bg-primary-light/30 ring-1 ring-primary/20 shadow-sm'
                        : 'border-slate-200 bg-white hover:bg-slate-50 hover:border-slate-300'
                    }`}
                  >
                    {/* Option Check Circle / Square */}
                    <div className={`h-6 w-6 rounded-lg flex items-center justify-center shrink-0 border transition-all text-xs font-black ${
                      selected 
                        ? 'bg-primary border-primary text-white' 
                        : 'border-slate-300 bg-slate-50 text-neutral-desc group-hover:border-slate-400'
                    }`}>
                      {selected ? <Check className="h-4 w-4" /> : option.id}
                    </div>

                    <div className="text-neutral-title font-medium text-xs sm:text-sm pt-0.5 select-none w-full">
                      <MathRenderer text={option.text} inline />
                    </div>
                  </button>
                )
              })}
            </div>
          )}

          {/* B: Numerical Input Type */}
          {question.question_type === 'numerical' && (
            <div className="max-w-md">
              <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                Enter Your Numerical / Decimal Answer
              </label>
              <div className="relative group">
                <input
                  type="number"
                  step="any"
                  value={typeof selectedAnswer === 'number' || typeof selectedAnswer === 'string' ? selectedAnswer : ''}
                  onChange={(e) => {
                    if (onAnswerChange) {
                      const val = e.target.value
                      onAnswerChange(val === '' ? '' : parseFloat(val))
                    }
                  }}
                  placeholder="e.g. 5.24"
                  className="w-full pl-4 pr-12 py-3.5 bg-slate-50 border border-slate-200 focus:bg-white rounded-2xl font-mono font-bold text-sm tracking-wide text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary transition-all"
                />
                <div className="absolute inset-y-0 right-0 pr-4 flex items-center pointer-events-none text-slate-400 font-bold text-[10px]">
                  DECIMAL ALLOWED
                </div>
              </div>
            </div>
          )}

        </div>

      </div>

      {/* 4. STEP-BY-STEP SOLUTION PANEL */}
      {(adminPreview || showSolution) && (
        <div className="border-t border-slate-100 bg-slate-50/50 p-6">
          <div className="flex items-center justify-between mb-4">
            <button
              type="button"
              onClick={() => setSolutionOpen(!solutionOpen)}
              className="flex items-center gap-2 text-xs font-bold text-primary hover:text-primary-dark transition-all"
            >
              {solutionOpen ? <EyeOff className="h-4 w-4" /> : <Eye className="h-4 w-4" />}
              <span>{solutionOpen ? 'Collapse solution details' : 'View detailed solution & correct answer'}</span>
            </button>

            {adminPreview && (
              <span className="text-[10px] font-bold px-2 py-0.5 bg-amber-100 text-amber-800 rounded-full border border-amber-200">
                Correct Answer: {
                  Array.isArray(question.correct_answer.value)
                    ? question.correct_answer.value.join(', ')
                    : String(question.correct_answer.value)
                }
              </span>
            )}
          </div>

          {solutionOpen && (
            <div className="space-y-6 pt-2 border-t border-slate-200/60 animate-fade-in">
              
              {/* Correct Answer Row */}
              <div className="p-4 rounded-xl bg-primary-light border border-primary/10 flex items-center gap-3">
                <div className="h-6 w-6 rounded-md bg-primary flex items-center justify-center text-white text-[11px] font-black shrink-0">
                  <Check className="h-4 w-4" />
                </div>
                <div className="text-xs">
                  <strong className="text-neutral-title">Verified Solution Activated:</strong> Correct option is{' '}
                  <strong className="text-primary uppercase font-extrabold text-sm">
                    {Array.isArray(question.correct_answer.value)
                      ? question.correct_answer.value.join(', ')
                      : String(question.correct_answer.value)}
                  </strong>
                </div>
              </div>

              {/* Solution Text */}
              {question.solution_text && (
                <div className="space-y-2">
                  <h5 className="text-xs font-extrabold uppercase text-neutral-desc tracking-wider">Step-by-Step Math Walkthrough</h5>
                  <div className="text-xs sm:text-sm text-neutral-title leading-relaxed p-5 bg-white border border-slate-200 rounded-2xl shadow-inner">
                    <MathRenderer text={question.solution_text} />
                  </div>
                </div>
              )}

              {/* Solution Video Embed */}
              {question.solution_video_url && (
                <div className="space-y-2">
                  <h5 className="text-xs font-extrabold uppercase text-neutral-desc tracking-wider flex items-center gap-1">
                    <Play className="h-3.5 w-3.5 text-rose-500 fill-rose-500" />
                    <span>Watch Video Solution Tutorial</span>
                  </h5>
                  <div className="relative overflow-hidden rounded-2xl bg-black aspect-video border border-slate-200 shadow-sm max-w-xl">
                    <iframe
                      src={question.solution_video_url}
                      title="Solution Explainer"
                      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                      allowFullScreen
                      className="absolute inset-0 w-full h-full border-none"
                    />
                  </div>
                </div>
              )}

            </div>
          )}

        </div>
      )}

    </article>
  )
}
