'use client'

import React, { useState, useMemo } from 'react'
import { Test, TestAttempt } from '@/types/test'
import { Question } from '@/types/question'
import Link from 'next/link'
import QuestionCard from '@/components/test/QuestionCard'
import { 
  XAxis, YAxis, Tooltip as RechartsTooltip, ResponsiveContainer, Cell, ScatterChart, Scatter, ZAxis
} from 'recharts'
import { 
  Trophy, 
  Target, 
  Clock, 
  Activity,
  ListChecks,
  ArrowLeft,
  CheckCircle2,
  XCircle,
  MinusCircle
} from 'lucide-react'

interface AnalysisClientProps {
  attempt: TestAttempt
  test: Test
  questions: Question[]
}

export default function AnalysisClient({ attempt, test, questions }: AnalysisClientProps) {
  const [activeTab, setActiveTab] = useState<'overview' | 'time' | 'review'>('overview')
  const [reviewFilter, setReviewFilter] = useState<'all' | 'correct' | 'incorrect' | 'skipped'>('all')

  // ==========================================
  // DATA AGGREGATION ENGINE
  // ==========================================
  const analytics = useMemo(() => {
    let correct = 0
    let incorrect = 0
    let skipped = 0
    const totalTime = attempt.time_taken_seconds
    
    // Aggregate by subject
    const bySubject: Record<string, { correct: number, incorrect: number, skipped: number, time: number }> = {}
    
    // Aggregation for scatter plot (Question ID vs Time)
    const timeScatterData: Record<string, string | number>[] = []

    questions.forEach((q, idx) => {
      if (!bySubject[q.subject]) bySubject[q.subject] = { correct: 0, incorrect: 0, skipped: 0, time: 0 }
      
      const resp = attempt.responses[q.id]
      const hasAnswer = resp && resp.status !== 'not_visited' && resp.status !== 'not_answered' && resp.status !== 'marked_review'
      
      // Determine correctness (Sandbox logic matching backend)
      let isCorrect = false
      if (hasAnswer) {
        if (q.question_type === 'single_correct' || q.question_type === 'numerical') {
          isCorrect = String(q.correct_answer.value) === String(resp.answer)
        } else if (q.question_type === 'multiple_correct') {
          const correctArray = q.correct_answer.value as string[]
          const respArray = (resp.answer as string[]) || []
          isCorrect = correctArray.length === respArray.length && correctArray.every(val => respArray.includes(val))
        }
      }

      if (!hasAnswer) {
        skipped++
        bySubject[q.subject].skipped++
      } else if (isCorrect) {
        correct++
        bySubject[q.subject].correct++
      } else {
        incorrect++
        bySubject[q.subject].incorrect++
      }

      // Use actual tracked time_spent from responses, fall back to 0 if not tracked
      const timeSpent = resp?.time_spent ?? 0
      bySubject[q.subject].time += timeSpent
      
      timeScatterData.push({
        index: idx + 1,
        time: timeSpent,
        status: !hasAnswer ? 'skipped' : isCorrect ? 'correct' : 'incorrect',
        subject: q.subject
      })
    })

    const accuracy = (correct / (correct + incorrect)) * 100 || 0
    
    return {
      correct, incorrect, skipped, totalTime, bySubject, timeScatterData, accuracy
    }
  }, [attempt, questions])

  // Filter questions for review tab
  const reviewQuestions = questions.filter(q => {
    const resp = attempt.responses[q.id]
    const hasAnswer = resp && resp.status !== 'not_visited' && resp.status !== 'not_answered' && resp.status !== 'marked_review'
    
    let isCorrect = false
    if (hasAnswer) {
      if (q.question_type === 'single_correct' || q.question_type === 'numerical') {
        isCorrect = String(q.correct_answer.value) === String(resp.answer)
      } else if (q.question_type === 'multiple_correct') {
        const correctArray = q.correct_answer.value as string[]
        const respArray = (resp.answer as string[]) || []
        isCorrect = correctArray.length === respArray.length && correctArray.every(val => respArray.includes(val))
      }
    }

    if (reviewFilter === 'correct') return hasAnswer && isCorrect
    if (reviewFilter === 'incorrect') return hasAnswer && !isCorrect
    if (reviewFilter === 'skipped') return !hasAnswer
    return true
  })

  // ==========================================
  // VIEW RENDER
  // ==========================================
  return (
    <div className="min-h-screen bg-slate-50 font-sans pb-20">
      
      {/* 1. STICKY HEADER */}
      <header className="sticky top-0 z-40 bg-white border-b border-slate-200 px-4 sm:px-8 py-4 flex items-center justify-between shadow-sm">
        <div className="flex items-center gap-4">
          <Link href="/dashboard" className="p-2 bg-slate-50 hover:bg-slate-100 text-slate-500 rounded-xl transition-all">
            <ArrowLeft className="w-5 h-5" />
          </Link>
          <div>
            <h1 className="font-display font-extrabold text-lg text-neutral-title flex items-center gap-2">
              Performance Analytics
            </h1>
            <p className="text-xs font-bold text-neutral-desc uppercase tracking-wide">
              {test.title}
            </p>
          </div>
        </div>
      </header>

      <main className="max-w-6xl w-full mx-auto px-4 sm:px-6 pt-8 space-y-8 animate-fade-in">
        
        {/* 2. GRAND SUMMARY CARD */}
        <section className="bg-white rounded-3xl border border-slate-200 shadow-sm p-6 sm:p-10 relative overflow-hidden flex flex-col md:flex-row items-center justify-between gap-10">
          <div className="absolute top-0 right-0 w-96 h-96 bg-primary/5 rounded-full blur-3xl pointer-events-none -translate-y-1/2 translate-x-1/2" />
          
          <div className="flex-shrink-0 text-center md:text-left z-10">
            <span className="inline-flex items-center gap-1.5 px-3 py-1 bg-green-50 text-green-700 text-[10px] font-black uppercase tracking-wider rounded-full mb-4 border border-green-200">
              <Trophy className="w-3.5 h-3.5" />
              Score Evaluated
            </span>
            <div className="flex items-baseline justify-center md:justify-start gap-2">
              <span className="font-display font-black text-7xl text-neutral-title tracking-tighter">
                {attempt.score}
              </span>
              <span className="font-bold text-xl text-slate-400">/ {test.total_marks}</span>
            </div>
            
            <div className="mt-6 flex flex-wrap justify-center md:justify-start gap-4">
              <div className="flex flex-col items-center md:items-start">
                <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider">Est. Rank</span>
                <span className="font-bold text-slate-700">{attempt.rank ? `#${attempt.rank.toLocaleString()}` : 'N/A'}</span>
              </div>
              <div className="w-px h-8 bg-slate-200 hidden md:block" />
              <div className="flex flex-col items-center md:items-start">
                <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider">Percentile</span>
                <span className="font-bold text-slate-700">{attempt.percentile != null ? `${attempt.percentile.toFixed(2)} %ile` : 'N/A'}</span>
              </div>
              <div className="w-px h-8 bg-slate-200 hidden md:block" />
              <div className="flex flex-col items-center md:items-start">
                <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider">Accuracy</span>
                <span className="font-bold text-slate-700">{analytics.accuracy.toFixed(1)}%</span>
              </div>
            </div>
          </div>

          {/* Quick Stat Rings */}
          <div className="flex-grow w-full max-w-md grid grid-cols-3 gap-4 z-10">
            <div className="bg-slate-50 border border-slate-100 p-4 rounded-2xl flex flex-col items-center text-center">
              <CheckCircle2 className="w-6 h-6 text-success mb-2" />
              <span className="text-2xl font-black text-neutral-title">{analytics.correct}</span>
              <span className="text-[9px] font-bold uppercase text-neutral-desc tracking-wider mt-1">Correct</span>
            </div>
            <div className="bg-slate-50 border border-slate-100 p-4 rounded-2xl flex flex-col items-center text-center">
              <XCircle className="w-6 h-6 text-danger mb-2" />
              <span className="text-2xl font-black text-neutral-title">{analytics.incorrect}</span>
              <span className="text-[9px] font-bold uppercase text-neutral-desc tracking-wider mt-1">Incorrect</span>
            </div>
            <div className="bg-slate-50 border border-slate-100 p-4 rounded-2xl flex flex-col items-center text-center">
              <MinusCircle className="w-6 h-6 text-slate-400 mb-2" />
              <span className="text-2xl font-black text-neutral-title">{analytics.skipped}</span>
              <span className="text-[9px] font-bold uppercase text-neutral-desc tracking-wider mt-1">Skipped</span>
            </div>
          </div>
        </section>

        {/* 3. NAVIGATION TABS */}
        <div className="flex gap-2 overflow-x-auto custom-scrollbar border-b border-slate-200 pb-px">
          {[
            { id: 'overview', icon: Activity, label: 'Subject Overview' },
            { id: 'time', icon: Clock, label: 'Time Management' },
            { id: 'review', icon: ListChecks, label: 'Question Autopsy' }
          ].map(tab => (
            <button
              key={tab.id}
              onClick={() => setActiveTab(tab.id as 'overview' | 'time' | 'review')}
              className={`flex items-center gap-2 px-6 py-3 rounded-t-xl text-xs font-extrabold uppercase tracking-wider transition-all border-b-2 ${
                activeTab === tab.id
                  ? 'border-primary text-primary bg-primary/5'
                  : 'border-transparent text-slate-500 hover:bg-slate-100 hover:text-slate-700'
              }`}
            >
              <tab.icon className="w-4 h-4" />
              {tab.label}
            </button>
          ))}
        </div>

        {/* 4. TAB CONTENTS */}
        <div className="pt-2 animate-fade-in">
          
          {/* TAB 1: OVERVIEW */}
          {activeTab === 'overview' && (
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
              {Object.keys(analytics.bySubject).map(sub => {
                const s = analytics.bySubject[sub]
                const total = s.correct + s.incorrect + s.skipped
                const acc = total > 0 ? ((s.correct / (s.correct + s.incorrect)) * 100).toFixed(0) : 0
                return (
                  <div key={sub} className="bg-white border border-slate-200 rounded-2xl p-6 shadow-sm relative overflow-hidden group hover:border-primary/30 transition-all">
                    <div className="absolute top-0 right-0 w-24 h-24 rounded-bl-[100px] bg-slate-50 group-hover:bg-primary/5 transition-all -z-0" />
                    
                    <h3 className="text-sm font-black uppercase tracking-wider text-neutral-title capitalize mb-6 relative z-10">{sub}</h3>
                    
                    <div className="space-y-4 relative z-10">
                      <div className="flex justify-between items-end">
                        <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider">Score</span>
                        <span className="text-2xl font-black text-primary">{attempt.subject_scores?.[sub] ?? 0}</span>
                      </div>
                      
                      {/* Mini Bar Breakdown */}
                      <div>
                        <div className="flex justify-between text-[9px] font-bold uppercase text-neutral-desc mb-1.5">
                          <span>Accuracy Breakdown</span>
                          <span>{acc}%</span>
                        </div>
                        <div className="h-2.5 w-full bg-slate-100 rounded-full flex overflow-hidden">
                          <div style={{ width: `${(s.correct / total) * 100}%` }} className="bg-success h-full" />
                          <div style={{ width: `${(s.incorrect / total) * 100}%` }} className="bg-danger h-full" />
                        </div>
                        <div className="flex justify-between text-[9px] font-bold text-slate-500 mt-2">
                          <span className="text-success">{s.correct} Right</span>
                          <span className="text-danger">{s.incorrect} Wrong</span>
                          <span className="text-slate-400">{s.skipped} Skip</span>
                        </div>
                      </div>
                    </div>
                  </div>
                )
              })}
            </div>
          )}

          {/* TAB 2: TIME MANAGEMENT */}
          {activeTab === 'time' && (
            <div className="space-y-6">
              <div className="bg-white border border-slate-200 rounded-3xl p-6 md:p-8 shadow-sm">
                <div className="mb-8">
                  <h3 className="font-display font-extrabold text-xl text-neutral-title tracking-tight flex items-center gap-2">
                    <Target className="w-5 h-5 text-accent" />
                    Time Per Question Analysis
                  </h3>
                  <p className="text-xs font-medium text-neutral-desc mt-1">
                    Identify questions where you spent excessive time. Red dots indicate incorrect answers.
                  </p>
                </div>
                
                <div className="w-full h-[400px]">
                  <ResponsiveContainer width="100%" height="100%">
                    <ScatterChart margin={{ top: 20, right: 20, bottom: 20, left: 0 }}>
                      <XAxis type="number" dataKey="index" name="Question No." tick={{fontSize: 12}} />
                      <YAxis type="number" dataKey="time" name="Time (s)" unit="s" tick={{fontSize: 12}} />
                      <ZAxis type="category" dataKey="status" name="Status" />
                      <RechartsTooltip 
                        cursor={{ strokeDasharray: '3 3' }}
                        content={({ active, payload }) => {
                          if (active && payload && payload.length) {
                            const data = payload[0].payload;
                            return (
                              <div className="bg-slate-900 text-white text-xs font-bold p-3 rounded-lg shadow-xl">
                                <p className="mb-1 text-slate-300">Q.{data.index} • <span className="uppercase">{data.subject}</span></p>
                                <p>Time: <span className="text-amber-400">{data.time} seconds</span></p>
                                <p>Result: <span className={data.status === 'correct' ? 'text-green-400' : data.status === 'incorrect' ? 'text-red-400' : 'text-slate-400'}>{data.status.toUpperCase()}</span></p>
                              </div>
                            );
                          }
                          return null;
                        }}
                      />
                      <Scatter name="Time Distribution" data={analytics.timeScatterData}>
                        {analytics.timeScatterData.map((entry, index) => (
                          <Cell 
                            key={`cell-${index}`} 
                            fill={entry.status === 'correct' ? '#10B981' : entry.status === 'incorrect' ? '#EF4444' : '#CBD5E1'} 
                          />
                        ))}
                      </Scatter>
                    </ScatterChart>
                  </ResponsiveContainer>
                </div>
              </div>
            </div>
          )}

          {/* TAB 3: QUESTION AUTOPSY */}
          {activeTab === 'review' && (
            <div className="space-y-6">
              {/* Filters */}
              <div className="bg-white border border-slate-200 rounded-2xl p-4 shadow-sm flex flex-wrap items-center gap-2">
                <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider mr-2">Filter By:</span>
                {(['all', 'correct', 'incorrect', 'skipped'] as const).map(f => (
                  <button
                    key={f}
                    onClick={() => setReviewFilter(f)}
                    className={`px-4 py-2 rounded-xl text-xs font-bold capitalize transition-all border ${
                      reviewFilter === f
                        ? 'bg-primary border-primary text-white shadow-sm'
                        : 'bg-slate-50 border-slate-200 text-slate-600 hover:bg-slate-100'
                    }`}
                  >
                    {f}
                  </button>
                ))}
              </div>

              {/* Questions List */}
              <div className="space-y-8">
                {reviewQuestions.map((q) => (
                  <div key={q.id} className="relative">
                    <div className="absolute -left-3 top-6 w-1.5 h-20 rounded-r-full bg-slate-200" />
                    <QuestionCard 
                      question={q} 
                      selectedAnswer={attempt.responses[q.id]?.answer} 
                      showSolution={true} 
                    />
                  </div>
                ))}
                
                {reviewQuestions.length === 0 && (
                  <div className="py-12 text-center text-slate-400 font-bold text-sm">
                    No questions match this filter.
                  </div>
                )}
              </div>
            </div>
          )}

        </div>
      </main>
    </div>
  )
}
