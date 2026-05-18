'use client'

import React from 'react'
import { Question } from '@/types/question'
import { UserResponse, ResponseStatus } from '@/types/test'
import { Check } from 'lucide-react'

interface PaletteProps {
  questions: Question[]
  responses: Record<string, UserResponse>
  currentIndex: number
  onNavigate: (index: number) => void
}

export default function QuestionPalette({ questions, responses, currentIndex, onNavigate }: PaletteProps) {
  
  // Helper to determine the visual styling of a question node based on its NTA status
  const getNodeStyle = (status?: ResponseStatus, isActive?: boolean) => {
    let baseClass = "relative flex items-center justify-center w-10 h-10 rounded-lg text-xs font-black shadow-sm transition-all border-2 "
    
    // Active node gets a strong focus ring
    const activeClass = isActive ? "ring-2 ring-offset-2 ring-primary scale-110 z-10 " : "hover:opacity-80 "
    baseClass += activeClass

    switch (status) {
      case 'answered':
        return baseClass + "bg-success text-white border-success"
      case 'not_answered':
        return baseClass + "bg-danger text-white border-danger"
      case 'marked_review':
        return baseClass + "bg-purple-500 text-white border-purple-500"
      case 'answered_marked':
        return baseClass + "bg-purple-500 text-white border-purple-500"
      case 'not_visited':
      default:
        return baseClass + "bg-slate-200 text-slate-600 border-slate-300"
    }
  }

  // Count statistics
  const stats = {
    not_visited: 0,
    not_answered: 0,
    answered: 0,
    marked_review: 0,
    answered_marked: 0
  }

  questions.forEach(q => {
    const status = responses[q.id]?.status || 'not_visited'
    stats[status]++
  })

  return (
    <div className="flex flex-col h-full bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
      
      {/* 1. COLOR LEGEND DECK */}
      <div className="p-4 bg-slate-50 border-b border-slate-200 grid grid-cols-2 gap-y-3 gap-x-2 text-[10px] font-bold text-neutral-title tracking-tight">
        <div className="flex items-center gap-2">
          <div className="w-5 h-5 rounded bg-slate-200 border border-slate-300 flex items-center justify-center text-slate-600 shadow-sm">{stats.not_visited}</div>
          <span>Not Visited</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="w-5 h-5 rounded bg-danger border border-danger text-white flex items-center justify-center shadow-sm">{stats.not_answered}</div>
          <span>Not Answered</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="w-5 h-5 rounded bg-success border border-success text-white flex items-center justify-center shadow-sm">{stats.answered}</div>
          <span>Answered</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="w-5 h-5 rounded bg-purple-500 border border-purple-500 text-white flex items-center justify-center shadow-sm">{stats.marked_review}</div>
          <span>Marked Review</span>
        </div>
        <div className="flex items-center gap-2 col-span-2 mt-1">
          <div className="relative w-5 h-5 rounded bg-purple-500 border border-purple-500 text-white flex items-center justify-center shadow-sm">
            <span className="absolute -bottom-1 -right-1 w-3.5 h-3.5 bg-success rounded-full border-2 border-white flex items-center justify-center">
              <Check className="w-2 h-2 text-white" strokeWidth={4} />
            </span>
          </div>
          <span>Answered & Marked for Review</span>
        </div>
      </div>

      {/* 2. QUESTION GRID BROWSER */}
      <div className="flex-grow overflow-y-auto p-4 custom-scrollbar">
        <h4 className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider mb-4">Question Palette</h4>
        <div className="grid grid-cols-5 gap-3">
          {questions.map((q, index) => {
            const status = responses[q.id]?.status || 'not_visited'
            const isActive = index === currentIndex
            
            return (
              <button
                key={q.id}
                type="button"
                onClick={() => onNavigate(index)}
                className={getNodeStyle(status, isActive)}
                title={`Question ${index + 1}`}
              >
                {index + 1}
                
                {/* Overlay Checkmark for Answered+Marked state */}
                {status === 'answered_marked' && (
                  <span className="absolute -bottom-1.5 -right-1.5 w-4 h-4 bg-success rounded-full border-2 border-white flex items-center justify-center shadow-sm">
                    <Check className="w-2.5 h-2.5 text-white" strokeWidth={4} />
                  </span>
                )}
              </button>
            )
          })}
        </div>
      </div>

    </div>
  )
}
