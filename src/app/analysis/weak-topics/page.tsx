'use client'

import React, { useState, useEffect } from 'react'
import { getCurrentUser } from '@/app/actions/auth'
import { Layers, ArrowLeft, Loader2, Sparkles, Clock, CheckCircle2, AlertTriangle, Play } from 'lucide-react'
import Link from 'next/link'

interface TopicPerformance {
  chapter: string
  subject: 'physics' | 'chemistry' | 'mathematics'
  totalQuestions: number
  accuracy: number // 0 to 100
  avgTimeSeconds: number
  status: 'strong' | 'moderate' | 'weak'
  spacingStatus?: string // for Revision Spaced Repetition
}

interface UserProfile {
  name?: string
  class?: '11' | '12' | 'dropper'
  target_year?: number
  subscription_tier?: string
}

interface UserSession {
  profile?: UserProfile
  user_metadata?: {
    name?: string
  }
}

export default function WeakTopicsPage() {
  const [currentUser, setCurrentUser] = useState<UserSession | null>(null)
  const [loading, setLoading] = useState(true)
  const [activeSubject, setActiveSubject] = useState<'all' | 'physics' | 'chemistry' | 'mathematics'>('all')

  useEffect(() => {
    async function loadUser() {
      const user = await getCurrentUser()
      if (user) {
        setCurrentUser(user as UserSession)
      }
      setLoading(false)
    }
    loadUser()
  }, [])

  // Dynamic sandbox data showing performance stats across chapters
  const performances: TopicPerformance[] = [
    // Mathematics
    { chapter: 'Definite Integrals', subject: 'mathematics', totalQuestions: 15, accuracy: 40, avgTimeSeconds: 165, status: 'weak', spacingStatus: 'Review Scheduled: In 2 Days' },
    { chapter: 'Matrices & Determinants', subject: 'mathematics', totalQuestions: 12, accuracy: 83, avgTimeSeconds: 95, status: 'strong', spacingStatus: 'Mastered' },
    { chapter: 'Probability', subject: 'mathematics', totalQuestions: 10, accuracy: 50, avgTimeSeconds: 140, status: 'moderate', spacingStatus: 'Review Scheduled: In 5 Days' },
    
    // Physics
    { chapter: 'Rotational Dynamics', subject: 'physics', totalQuestions: 18, accuracy: 33, avgTimeSeconds: 190, status: 'weak', spacingStatus: 'Review Scheduled: Tomorrow' },
    { chapter: 'Electrostatics', subject: 'physics', totalQuestions: 14, accuracy: 78, avgTimeSeconds: 110, status: 'strong', spacingStatus: 'Mastered' },
    { chapter: 'Kinematics', subject: 'physics', totalQuestions: 20, accuracy: 90, avgTimeSeconds: 65, status: 'strong', spacingStatus: 'Mastered' },
    
    // Chemistry
    { chapter: 'Chemical Bonding', subject: 'chemistry', totalQuestions: 16, accuracy: 88, avgTimeSeconds: 45, status: 'strong', spacingStatus: 'Mastered' },
    { chapter: 'Ionic Equilibrium', subject: 'chemistry', totalQuestions: 12, accuracy: 25, avgTimeSeconds: 155, status: 'weak', spacingStatus: 'Review Scheduled: Tomorrow' },
    { chapter: 'Coordination Compounds', subject: 'chemistry', totalQuestions: 10, accuracy: 60, avgTimeSeconds: 80, status: 'moderate', spacingStatus: 'Review Scheduled: In 4 Days' }
  ]

  const filteredPerformances = activeSubject === 'all'
    ? performances
    : performances.filter(p => p.subject === activeSubject)

  // Styling helper for accuracy heat blocks
  const getHeatColor = (accuracy: number) => {
    if (accuracy >= 80) return 'bg-emerald-500 text-white'
    if (accuracy >= 50) return 'bg-amber-400 text-amber-950'
    return 'bg-rose-500 text-white'
  }

  const getStatusBadge = (status: 'strong' | 'moderate' | 'weak') => {
    switch (status) {
      case 'strong':
        return 'bg-emerald-50 text-emerald-700 border-emerald-200'
      case 'moderate':
        return 'bg-amber-50 text-amber-700 border-amber-200'
      case 'weak':
        return 'bg-rose-50 text-rose-700 border-rose-200'
    }
  }

  if (loading) {
    return (
      <div className="min-h-screen bg-slate-50 flex flex-col items-center justify-center font-sans">
        <Loader2 className="h-10 w-10 text-primary animate-spin mb-4" />
        <span className="text-xs font-bold text-neutral-desc uppercase tracking-wider">Loading Performance Heatmaps...</span>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-slate-50 font-sans pb-24 relative overflow-hidden">
      
      {/* Mesh background glows */}
      <div className="absolute top-0 right-0 w-96 h-96 bg-primary/5 rounded-full blur-3xl pointer-events-none -translate-y-1/3 translate-x-1/3" />
      <div className="absolute bottom-0 left-0 w-96 h-96 bg-rose-500/5 rounded-full blur-3xl pointer-events-none translate-y-1/3 -translate-x-1/3" />

      {/* 1. HEADER */}
      <header className="sticky top-0 z-40 bg-white/80 backdrop-blur-md border-b border-slate-200/80 px-6 py-4 flex items-center justify-between shadow-sm">
        <div className="flex items-center gap-4">
          <Link href="/dashboard" className="p-2 bg-slate-50 hover:bg-slate-100 text-slate-500 rounded-xl transition-all">
            <ArrowLeft className="w-5 h-5" />
          </Link>
          <div>
            <h1 className="font-display font-extrabold text-base tracking-tight text-neutral-title flex items-center gap-2">
              Weak Topic Analysis
            </h1>
            <p className="text-[10px] font-bold text-neutral-desc uppercase tracking-wider">
              Chapter-wise accuracy heatmaps and Spaced Repetition scheduler
            </p>
          </div>
        </div>
        <div className="flex items-center gap-2 px-3 py-1 bg-rose-50 border border-rose-200 text-rose-700 text-[10px] font-extrabold uppercase rounded-full">
          <AlertTriangle className="h-3.5 w-3.5" /> Weak Topics: <span className="font-black text-xs">3 Chapters</span>
        </div>
      </header>

      {/* 2. BODY CONTENT */}
      <main className="max-w-4xl w-full mx-auto px-6 pt-10 space-y-8 relative z-10 animate-fade-in">
        
        {/* Subject Filters Pills */}
        <div className="flex items-center gap-2 border-b border-slate-200 pb-4">
          <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider mr-2">Subject Filter:</span>
          {(['all', 'physics', 'chemistry', 'mathematics'] as const).map((sub) => (
            <button
              key={sub}
              type="button"
              onClick={() => setActiveSubject(sub)}
              className={`px-4 py-2 rounded-xl text-xs font-bold transition-all uppercase tracking-wide border ${
                activeSubject === sub
                  ? 'bg-primary border-primary text-white shadow-sm'
                  : 'bg-white border-slate-200 text-slate-500 hover:bg-slate-50 hover:text-slate-700'
              }`}
            >
              {sub}
            </button>
          ))}
        </div>

        {/* 3. HEAT BLOCKS ROW */}
        <section className="bg-white rounded-3xl border border-slate-200 p-6 shadow-sm space-y-4">
          <h3 className="font-display font-black text-base text-neutral-title uppercase tracking-wide flex items-center gap-2">
            <Layers className="h-5 w-5 text-primary" />
            <span>Chapterwise Accuracy Heatmap</span>
          </h3>
          <p className="text-[11px] text-neutral-desc leading-relaxed">
            Color intensity represents raw performance accuracy across questions attempted in full mocks, pyqs, and chapter tests.
          </p>

          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-4 pt-4">
            {filteredPerformances.map((perf, index) => (
              <div 
                key={index} 
                className={`p-4 rounded-2xl flex flex-col justify-between h-[120px] transition-transform duration-300 hover:scale-[1.03] shadow-inner ${getHeatColor(perf.accuracy)}`}
              >
                <div className="space-y-1">
                  <span className="text-[9px] uppercase font-black tracking-widest opacity-80">{perf.subject}</span>
                  <h4 className="text-xs font-black leading-tight line-clamp-2">{perf.chapter}</h4>
                </div>
                <div className="flex justify-between items-baseline">
                  <span className="text-[9px] font-bold opacity-85">{perf.totalQuestions} Qs</span>
                  <span className="text-2xl font-black">{perf.accuracy}%</span>
                </div>
              </div>
            ))}
          </div>
        </section>

        {/* 4. DETAILS SPACING ACTION LIST */}
        <section className="bg-white rounded-3xl border border-slate-200 shadow-sm overflow-hidden">
          <div className="px-6 py-4 bg-slate-50 border-b border-slate-100 flex justify-between items-center text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc">
            <span>{currentUser?.profile?.name || currentUser?.user_metadata?.name || 'Aspirant'}&apos;s Spaced Repetition Scheduler</span>
            <span className="flex items-center gap-1 text-primary">
              <Sparkles className="h-3.5 w-3.5 fill-primary" />
              <span>Elite scheduler enabled</span>
            </span>
          </div>

          <div className="divide-y divide-slate-100">
            {filteredPerformances.map((perf, index) => (
              <div key={index} className="px-6 py-4 flex flex-col sm:flex-row sm:items-center justify-between gap-4 hover:bg-slate-50/60 transition-colors">
                
                {/* Left */}
                <div className="space-y-1.5">
                  <div className="flex items-center gap-2.5">
                    <span className="text-xs font-bold text-neutral-title">{perf.chapter}</span>
                    <span className={`px-2 py-0.5 text-[8px] font-bold uppercase rounded-full border ${getStatusBadge(perf.status)}`}>
                      {perf.status}
                    </span>
                  </div>
                  
                  <div className="flex items-center gap-3 text-[10px] text-slate-400 font-bold uppercase">
                    <span className="capitalize text-primary">{perf.subject}</span>
                    <span className="w-1 h-1 rounded-full bg-slate-300" />
                    <span className="flex items-center gap-0.5">
                      <Clock className="h-3.5 w-3.5" /> {Math.floor(perf.avgTimeSeconds / 60)}m {perf.avgTimeSeconds % 60}s / Q
                    </span>
                  </div>
                </div>

                {/* Right */}
                <div className="flex items-center justify-between sm:justify-end gap-6 text-right">
                  <div className="text-left sm:text-right">
                    <span className="block text-xs font-black text-slate-700">{perf.spacingStatus}</span>
                    <span className="text-[9px] font-extrabold uppercase text-slate-400">spaced repetition status</span>
                  </div>
                  
                  {perf.status === 'weak' ? (
                    <Link
                      href="/pyq"
                      className="px-3.5 py-1.5 bg-rose-500 hover:bg-rose-600 active:scale-95 text-white font-bold rounded-xl text-[10px] uppercase tracking-wider flex items-center gap-1.5 shadow-sm transition-all"
                    >
                      <Play className="h-3 w-3 fill-white" />
                      <span>Review PYQs</span>
                    </Link>
                  ) : perf.status === 'moderate' ? (
                    <Link
                      href="/pyq"
                      className="px-3.5 py-1.5 bg-amber-500 hover:bg-amber-600 active:scale-95 text-white font-bold rounded-xl text-[10px] uppercase tracking-wider flex items-center gap-1.5 shadow-sm transition-all"
                    >
                      <Play className="h-3 w-3 fill-white" />
                      <span>Strengthen</span>
                    </Link>
                  ) : (
                    <button
                      disabled
                      className="px-3.5 py-1.5 bg-emerald-50 text-emerald-600 font-bold rounded-xl text-[10px] uppercase tracking-wider border border-emerald-150 flex items-center gap-1.5 cursor-default"
                    >
                      <CheckCircle2 className="h-3.5 w-3.5" />
                      <span>Mastered</span>
                    </button>
                  )}
                </div>

              </div>
            ))}
          </div>
        </section>

      </main>

    </div>
  )
}
