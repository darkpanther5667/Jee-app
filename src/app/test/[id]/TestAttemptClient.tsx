'use client'

import React, { useState, useEffect, useRef, useCallback } from 'react'
import { Question } from '@/types/question'
import { Test, UserResponse } from '@/types/test'
import { submitTestAttemptAction } from '@/app/actions/test'
import TestTimer from '@/components/test/TestTimer'
import QuestionPalette from '@/components/test/QuestionPalette'
import QuestionCard from '@/components/test/QuestionCard'
import { ChevronLeft, ChevronRight, Bookmark, RotateCcw, AlertTriangle, ShieldCheck, CheckCircle2 } from 'lucide-react'

interface TestAttemptClientProps {
  test: Test
  initialQuestions: Question[]
  serverStartedAt: string
}

export default function TestAttemptClient({ test, initialQuestions, serverStartedAt }: TestAttemptClientProps) {
  // 1. Core State
  const [currentIndex, setCurrentIndex] = useState(0)
  const [responses, setResponses] = useState<Record<string, UserResponse>>({})
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [isFinished, setIsFinished] = useState(false)
  const [finalScore, setFinalScore] = useState<number | null>(null)
  const [attemptId, setAttemptId] = useState<string | null>(null)

  // Timer tracking (started on mount)
  const startTimeRef = useRef<number>(0)
  
  // Track subjects for tabs
  const subjects = Array.from(new Set(initialQuestions.map(q => q.subject)))
  
  useEffect(() => {
    startTimeRef.current = new Date(serverStartedAt).getTime()
    
    const initialResponses: Record<string, UserResponse> = {}
    initialQuestions.forEach((q, idx) => {
      initialResponses[q.id] = {
        question_id: q.id,
        answer: null,
        time_spent: 0,
        status: idx === 0 ? 'not_answered' : 'not_visited' // First question is instantly visited
      }
    })
    setResponses(initialResponses)
  }, [initialQuestions, serverStartedAt])

  const currentQuestion = initialQuestions[currentIndex]
  const currentResponse = responses[currentQuestion?.id]

  // 2. Navigation & Status Logic
  const handleNavigate = (newIndex: number) => {
    if (newIndex < 0 || newIndex >= initialQuestions.length) return
    
    setResponses(prev => {
      const nextQId = initialQuestions[newIndex].id
      const currentNextStatus = prev[nextQId]?.status

      return {
        ...prev,
        [nextQId]: {
          ...prev[nextQId],
          // If we navigate to a 'not_visited' question, it becomes 'not_answered'
          status: currentNextStatus === 'not_visited' ? 'not_answered' : currentNextStatus
        }
      }
    })
    setCurrentIndex(newIndex)
  }

  const handleSectionChange = (subject: string) => {
    const firstIndexOfSubject = initialQuestions.findIndex(q => q.subject === subject)
    if (firstIndexOfSubject !== -1) {
      handleNavigate(firstIndexOfSubject)
    }
  }

  // 3. User Input Actions
  const handleAnswerSelect = (answer: string | string[] | number) => {
    setResponses(prev => ({
      ...prev,
      [currentQuestion.id]: {
        ...prev[currentQuestion.id],
        answer
      }
    }))
  }

  const handleClearResponse = () => {
    setResponses(prev => ({
      ...prev,
      [currentQuestion.id]: {
        ...prev[currentQuestion.id],
        answer: null
      }
    }))
  }

  // 4. Save Actions
  const handleSaveAndNext = () => {
    setResponses(prev => {
      const resp = prev[currentQuestion.id]
      const hasAnswer = resp.answer !== null && (Array.isArray(resp.answer) ? resp.answer.length > 0 : String(resp.answer).trim() !== '')
      return {
        ...prev,
        [currentQuestion.id]: {
          ...resp,
          status: hasAnswer ? 'answered' : 'not_answered'
        }
      }
    })
    handleNavigate(currentIndex + 1)
  }

  const handleMarkReviewAndNext = () => {
    setResponses(prev => {
      const resp = prev[currentQuestion.id]
      const hasAnswer = resp.answer !== null && (Array.isArray(resp.answer) ? resp.answer.length > 0 : String(resp.answer).trim() !== '')
      return {
        ...prev,
        [currentQuestion.id]: {
          ...resp,
          status: hasAnswer ? 'answered_marked' : 'marked_review'
        }
      }
    })
    handleNavigate(currentIndex + 1)
  }

  // 5. Final Submit Logic
  const handleAutoSubmit = useCallback(async () => {
    if (isFinished || isSubmitting) return
    setIsSubmitting(true)

    const timeTakenSeconds = Math.floor((Date.now() - startTimeRef.current) / 1000)
    
    const result = await submitTestAttemptAction(test.id, responses, timeTakenSeconds)
    
    setIsSubmitting(false)
    setIsFinished(true)
    if (result.success && result.attempt) {
      setFinalScore(result.attempt.score ?? 0)
      setAttemptId(result.attempt.id)
    }
  }, [isFinished, isSubmitting, test.id, responses])

  const triggerManualSubmit = () => {
    const answeredCount = Object.values(responses).filter(r => r.status === 'answered' || r.status === 'answered_marked').length
    const confirmSubmit = window.confirm(`You have answered ${answeredCount} out of ${initialQuestions.length} questions. Are you sure you want to finally submit your exam?`)
    if (confirmSubmit) {
      handleAutoSubmit()
    }
  }

  // ==========================================
  // VIEW RENDER: POST-TEST RESULTS SCREEN
  // ==========================================
  if (isFinished) {
    return (
      <div className="min-h-screen bg-slate-50 flex items-center justify-center p-6 animate-fade-in">
        <div className="bg-white max-w-xl w-full rounded-3xl border border-slate-200 shadow-premium p-10 text-center space-y-6">
          <div className="w-20 h-20 bg-success/10 rounded-full flex items-center justify-center mx-auto mb-2">
            <CheckCircle2 className="w-10 h-10 text-success" />
          </div>
          <div>
            <h1 className="font-display font-extrabold text-3xl text-neutral-title tracking-tight mb-2">Exam Submitted</h1>
            <p className="text-sm text-neutral-desc">Your responses have been saved securely to the database.</p>
          </div>
          
          <div className="p-6 bg-slate-50 border border-slate-200 rounded-2xl flex flex-col items-center">
            <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider mb-2">Evaluated Sandbox Score</span>
            <span className="text-5xl font-black text-primary">{finalScore !== null ? finalScore : '--'} <span className="text-xl text-slate-400">/ {test.total_marks}</span></span>
          </div>

          <div className="pt-4 flex gap-4">
            <button 
              onClick={() => attemptId ? window.location.href = `/analysis/${attemptId}` : null}
              className="w-full px-6 py-4 bg-slate-100 hover:bg-slate-200 text-slate-700 font-bold rounded-xl transition-all"
            >
              View Detailed Analysis
            </button>
            <button 
              onClick={() => window.location.href = '/dashboard'}
              className="w-full px-6 py-4 bg-primary hover:bg-primary-dark text-white font-bold rounded-xl shadow-sm transition-all"
            >
              Back to Home
            </button>
          </div>
        </div>
      </div>
    )
  }

  // ==========================================
  // VIEW RENDER: ACTIVE EXAM INTERFACE (NTA STYLE)
  // ==========================================
  if (!currentQuestion) return null

  return (
    <div className="flex flex-col h-screen w-full bg-slate-100 overflow-hidden select-none">
      
      {/* 1. TOP HEADER BAR */}
      <header className="flex-shrink-0 h-[72px] bg-white border-b border-slate-200 px-6 flex items-center justify-between shadow-sm z-20 relative">
        <div className="flex items-center gap-4">
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-primary to-blue-700 flex items-center justify-center shadow-inner">
            <span className="text-white font-black text-sm tracking-tighter">CJ</span>
          </div>
          <div>
            <h1 className="font-display font-extrabold text-base text-neutral-title tracking-tight flex items-center gap-2">
              {test.title}
              <ShieldCheck className="w-4 h-4 text-success shrink-0" />
            </h1>
            <p className="text-[11px] font-bold text-neutral-desc flex items-center gap-2 uppercase tracking-wide">
              <span>{initialQuestions.length} Questions</span>
              <span className="w-1 h-1 rounded-full bg-slate-300" />
              <span>{test.total_marks} Marks</span>
            </p>
          </div>
        </div>

        <div className="flex items-center gap-6">
          {/* Server-Synched Timer Component */}
          <TestTimer 
            testId={test.id}
            durationSeconds={test.duration_minutes * 60}
            serverStartedAt={serverStartedAt}
            onTimeUp={handleAutoSubmit}
            warningAt={300}
          />
          
          <button 
            type="button"
            onClick={triggerManualSubmit}
            disabled={isSubmitting}
            className="px-6 py-2.5 bg-danger hover:bg-red-600 active:scale-95 text-white text-xs font-bold rounded-xl transition-all shadow-sm disabled:opacity-50"
          >
            {isSubmitting ? 'Submitting...' : 'End Test'}
          </button>
        </div>
      </header>

      {/* 2. MAIN WORKSPACE */}
      <main className="flex-grow flex overflow-hidden">
        
        {/* LEFT COLUMN: Question Display */}
        <section className="flex-grow flex flex-col h-full overflow-hidden bg-slate-50/50 relative">
          
          {/* Section Tabs (Physics, Chemistry, Maths) */}
          <div className="flex-shrink-0 bg-white border-b border-slate-200 px-4 pt-4 flex gap-2 overflow-x-auto custom-scrollbar shadow-sm z-10">
            {subjects.map(subject => {
              const isActive = currentQuestion.subject === subject
              return (
                <button
                  key={subject}
                  onClick={() => handleSectionChange(subject)}
                  className={`px-6 py-2.5 rounded-t-xl text-xs font-bold uppercase tracking-wider transition-all border-t border-l border-r ${
                    isActive 
                      ? 'bg-primary text-white border-primary shadow-sm' 
                      : 'bg-slate-100 text-slate-500 border-slate-200 hover:bg-slate-200/50 hover:text-slate-700'
                  }`}
                >
                  {subject}
                </button>
              )
            })}
          </div>

          {/* Active Question Scrollable Area */}
          <div className="flex-grow overflow-y-auto p-4 sm:p-6 lg:p-8 custom-scrollbar relative z-0">
            <div className="max-w-4xl mx-auto space-y-4">
              
              <div className="flex items-center justify-between text-xs font-bold text-neutral-desc uppercase tracking-wider bg-white px-4 py-2 rounded-xl border border-slate-200 shadow-sm">
                <span>Question {currentIndex + 1} of {initialQuestions.length}</span>
                <span className="flex items-center gap-1.5 text-amber-600">
                  <AlertTriangle className="w-3.5 h-3.5" />
                  <span>Right Click Disabled</span>
                </span>
              </div>

              {/* Inherits exact style from Admin Preview */}
              <QuestionCard 
                question={currentQuestion} 
                selectedAnswer={currentResponse?.answer}
                onAnswerChange={handleAnswerSelect}
                showSolution={false}
              />
            </div>
          </div>
          
          {/* BOTTOM NAVIGATION ACTIONS BAR */}
          <div className="flex-shrink-0 h-[80px] bg-white border-t border-slate-200 shadow-[0_-4px_10px_rgba(0,0,0,0.02)] px-6 flex items-center justify-between z-20 relative">
            <div className="flex items-center gap-3">
              <button 
                onClick={() => handleNavigate(currentIndex - 1)}
                disabled={currentIndex === 0}
                className="px-5 py-3 border border-slate-200 hover:bg-slate-50 text-slate-600 font-bold rounded-xl text-xs flex items-center gap-2 transition-all disabled:opacity-40"
              >
                <ChevronLeft className="w-4 h-4" />
                Previous
              </button>
              
              <button 
                onClick={handleClearResponse}
                disabled={currentResponse?.answer === null || currentResponse?.answer === undefined || currentResponse?.answer === ''}
                className="px-5 py-3 border border-slate-200 hover:bg-danger-light/30 hover:border-danger/30 hover:text-danger text-slate-600 font-bold rounded-xl text-xs flex items-center gap-2 transition-all disabled:opacity-40"
                title="Clear selected answer"
              >
                <RotateCcw className="w-3.5 h-3.5" />
                Clear
              </button>
            </div>

            <div className="flex items-center gap-3">
              <button 
                onClick={handleMarkReviewAndNext}
                className="px-5 py-3 bg-purple-50 hover:bg-purple-100 border border-purple-200 text-purple-700 font-bold rounded-xl text-xs flex items-center gap-2 transition-all active:scale-95"
              >
                <Bookmark className="w-4 h-4" />
                Save & Mark for Review
              </button>
              
              <button 
                onClick={handleSaveAndNext}
                className="px-8 py-3 bg-primary hover:bg-primary-dark text-white font-bold rounded-xl text-xs flex items-center gap-2 transition-all shadow-premium active:scale-95"
              >
                Save & Next
                <ChevronRight className="w-4 h-4" />
              </button>
            </div>
          </div>

        </section>

        {/* RIGHT COLUMN: Question Palette Tracker */}
        <aside className="w-[320px] flex-shrink-0 bg-slate-50 border-l border-slate-200 p-4 h-full z-10 hidden lg:block">
          <QuestionPalette 
            questions={initialQuestions}
            responses={responses}
            currentIndex={currentIndex}
            onNavigate={handleNavigate}
          />
        </aside>

      </main>

    </div>
  )
}
