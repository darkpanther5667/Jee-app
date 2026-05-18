'use client'

import React, { useState, useEffect } from 'react'
import { getLeaderboardAction, LeaderboardEntry } from '@/app/actions/leaderboard'
import { Trophy, Sparkles, ArrowLeft, Loader2, RefreshCw } from 'lucide-react'
import Link from 'next/link'

export default function LeaderboardPage() {
  const [loading, setLoading] = useState(true)
  const [isRefreshing, setIsRefreshing] = useState(false)
  const [activeTab, setActiveTab] = useState<'overall' | 'mock_1' | 'mock_2'>('mock_1')
  const [topPerformers, setTopPerformers] = useState<LeaderboardEntry[]>([])
  const [normalList, setNormalList] = useState<LeaderboardEntry[]>([])
  
  useEffect(() => {
    setLoading(false)
  }, [])

  useEffect(() => {
    async function fetchRankings() {
      setIsRefreshing(true)
      const res = await getLeaderboardAction(activeTab)
      if (res.success && res.top3 && res.list) {
        setTopPerformers(res.top3)
        setNormalList(res.list)
      }
      setIsRefreshing(false)
    }
    fetchRankings()
  }, [activeTab])

  const currentUserEntry = normalList.find(e => e.isCurrentUser)
  const estRankStr = currentUserEntry ? `#${currentUserEntry.rank}` : '#4,210'

  if (loading) {
    return (
      <div className="min-h-screen bg-slate-50 flex flex-col items-center justify-center font-sans">
        <Loader2 className="h-10 w-10 text-primary animate-spin mb-4" />
        <span className="text-xs font-bold text-neutral-desc uppercase tracking-wider">Syncing National Leaderboards...</span>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-slate-50 font-sans pb-24 relative overflow-hidden">
      
      {/* Mesh background glows */}
      <div className="absolute top-0 right-0 w-96 h-96 bg-primary/5 rounded-full blur-3xl pointer-events-none -translate-y-1/3 translate-x-1/3" />
      <div className="absolute bottom-0 left-0 w-96 h-96 bg-amber-500/5 rounded-full blur-3xl pointer-events-none translate-y-1/3 -translate-x-1/3" />

      {/* 1. HEADER */}
      <header className="sticky top-0 z-40 bg-white/80 backdrop-blur-md border-b border-slate-200/80 px-6 py-4 flex items-center justify-between shadow-sm">
        <div className="flex items-center gap-4">
          <Link href="/dashboard" className="p-2 bg-slate-50 hover:bg-slate-100 text-slate-500 rounded-xl transition-all">
            <ArrowLeft className="w-5 h-5" />
          </Link>
          <div>
            <h1 className="font-display font-extrabold text-base tracking-tight text-neutral-title flex items-center gap-2">
              National Leaderboard
            </h1>
            <p className="text-[10px] font-bold text-neutral-desc uppercase tracking-wider">
              Compare mock scores and estimated percentiles with JEE aspirants nationwide
            </p>
          </div>
        </div>
        <div className="flex items-center gap-2 px-3 py-1 bg-amber-50 border border-amber-200 text-amber-700 text-[10px] font-extrabold uppercase rounded-full">
          <Trophy className="h-3.5 w-3.5" /> Est Rank: <span className="font-black text-xs">{estRankStr}</span>
        </div>
      </header>

      {/* 2. BODY CONTENT */}
      <main className="max-w-4xl w-full mx-auto px-6 pt-10 space-y-8 relative z-10 animate-fade-in">
        
        {/* Navigation Tabs */}
        <div className="flex gap-2 overflow-x-auto custom-scrollbar border-b border-slate-200 pb-px">
          {[
            { id: 'mock_1', label: 'JEE Full Syllabus Mock #1' },
            { id: 'mock_2', label: 'JEE Chapterwise Projectile Test' },
            { id: 'overall', label: 'Cumulative Grand Rank' }
          ].map(tab => (
            <button
              key={tab.id}
              onClick={() => setActiveTab(tab.id as 'overall' | 'mock_1' | 'mock_2')}
              className={`px-5 py-3 rounded-t-xl text-xs font-extrabold uppercase tracking-wider transition-all border-b-2 ${
                activeTab === tab.id
                  ? 'border-primary text-primary bg-primary/5'
                  : 'border-transparent text-slate-500 hover:bg-slate-100 hover:text-slate-700'
              }`}
            >
              {tab.label}
            </button>
          ))}
        </div>

        {/* 3. PODIUM (TOP 3) DISPLAY */}
        {topPerformers.length < 3 ? (
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 items-end pt-4 animate-pulse">
            <div className="bg-white rounded-3xl border border-slate-200 h-[230px] flex flex-col justify-between p-6">
              <div className="h-6 bg-slate-200 rounded-full w-24 mx-auto" />
              <div className="h-10 bg-slate-200 rounded-full w-10 mx-auto" />
              <div className="h-4 bg-slate-200 rounded w-28 mx-auto" />
              <div className="h-8 bg-slate-200 rounded-xl w-full" />
            </div>
            <div className="bg-white rounded-3xl border border-slate-200 h-[270px] flex flex-col justify-between p-6">
              <div className="h-6 bg-slate-200 rounded-full w-24 mx-auto" />
              <div className="h-12 bg-slate-200 rounded-full w-12 mx-auto" />
              <div className="h-4 bg-slate-200 rounded w-28 mx-auto" />
              <div className="h-10 bg-slate-200 rounded-xl w-full" />
            </div>
            <div className="bg-white rounded-3xl border border-slate-200 h-[210px] flex flex-col justify-between p-6">
              <div className="h-6 bg-slate-200 rounded-full w-24 mx-auto" />
              <div className="h-10 bg-slate-200 rounded-full w-10 mx-auto" />
              <div className="h-4 bg-slate-200 rounded w-28 mx-auto" />
              <div className="h-8 bg-slate-200 rounded-xl w-full" />
            </div>
          </div>
        ) : (
          <section className="grid grid-cols-1 md:grid-cols-3 gap-6 items-end pt-4">
            
            {/* Rank 2 - Silver Medal */}
            <div className="bg-white rounded-3xl border border-slate-200 shadow-sm p-6 text-center order-2 md:order-1 flex flex-col items-center justify-between h-[230px] relative">
              <span className="absolute -top-3 left-1/2 -translate-x-1/2 h-7 w-7 rounded-full bg-slate-300 text-slate-700 border-2 border-white flex items-center justify-center font-black text-xs shadow-sm">
                2
              </span>
              <div className="space-y-1">
                <span className="h-10 w-10 rounded-full bg-slate-100 border border-slate-200 text-slate-500 flex items-center justify-center font-black text-sm">
                  🥈
                </span>
                <h4 className="font-display font-extrabold text-sm text-neutral-title mt-2">{topPerformers[1].name}</h4>
                <p className="text-[9px] text-neutral-desc uppercase font-bold tracking-wider">{topPerformers[1].coaching}</p>
              </div>
              <div className="w-full bg-slate-50/50 p-2.5 rounded-xl border border-slate-100 flex justify-between text-xs font-bold mt-4">
                <span className="text-slate-500">Score: <strong className="text-neutral-title font-black">{topPerformers[1].score}</strong></span>
                <span className="text-primary font-extrabold">{topPerformers[1].percentile}%ile</span>
              </div>
            </div>

            {/* Rank 1 - Gold Medal (Main Centerpiece) */}
            <div className="bg-white rounded-3xl border-2 border-amber-300 shadow-md p-6 text-center order-1 md:order-2 flex flex-col items-center justify-between h-[270px] relative">
              <div className="absolute top-0 right-0 w-full h-full bg-amber-50/10 pointer-events-none rounded-3xl" />
              <span className="absolute -top-3.5 left-1/2 -translate-x-1/2 h-8 w-8 rounded-full bg-amber-400 text-amber-950 border-2 border-white flex items-center justify-center font-black text-sm shadow-md animate-bounce">
                1
              </span>
              <div className="space-y-1">
                <div className="h-12 w-12 rounded-full bg-amber-100 border border-amber-200 text-amber-500 flex items-center justify-center font-black text-lg mx-auto shadow-inner">
                  🏆
                </div>
                <h4 className="font-display font-black text-base text-neutral-title mt-3 flex items-center gap-1">
                  {topPerformers[0].name}
                  <Sparkles className="h-4 w-4 text-amber-500 shrink-0" />
                </h4>
                <p className="text-[10px] text-neutral-desc uppercase font-bold tracking-wider">{topPerformers[0].coaching}</p>
              </div>
              <div className="w-full bg-amber-50/30 p-3 rounded-xl border border-amber-100 flex justify-between text-xs font-bold mt-4">
                <span className="text-amber-800">Score: <strong className="text-neutral-title font-black">{topPerformers[0].score}</strong></span>
                <span className="text-amber-700 font-extrabold">{topPerformers[0].percentile}%ile</span>
              </div>
            </div>

            {/* Rank 3 - Bronze Medal */}
            <div className="bg-white rounded-3xl border border-slate-200 shadow-sm p-6 text-center order-3 flex flex-col items-center justify-between h-[210px] relative">
              <span className="absolute -top-3 left-1/2 -translate-x-1/2 h-7 w-7 rounded-full bg-amber-700 text-amber-50 border-2 border-white flex items-center justify-center font-black text-xs shadow-sm">
                3
              </span>
              <div className="space-y-1">
                <span className="h-10 w-10 rounded-full bg-amber-50 text-amber-700 flex items-center justify-center font-black text-sm">
                  🥉
                </span>
                <h4 className="font-display font-extrabold text-sm text-neutral-title mt-2">{topPerformers[2].name}</h4>
                <p className="text-[9px] text-neutral-desc uppercase font-bold tracking-wider">{topPerformers[2].coaching}</p>
              </div>
              <div className="w-full bg-slate-50/50 p-2.5 rounded-xl border border-slate-100 flex justify-between text-xs font-bold mt-4">
                <span className="text-slate-500">Score: <strong className="text-neutral-title font-black">{topPerformers[2].score}</strong></span>
                <span className="text-primary font-extrabold">{topPerformers[2].percentile}%ile</span>
              </div>
            </div>

          </section>
        )}

        {/* 4. EXTENDED LEADERBOARD LIST */}
        <section className="bg-white border border-slate-200 rounded-3xl shadow-sm overflow-hidden">
          
          <div className="px-6 py-4 bg-slate-50 border-b border-slate-100 flex justify-between items-center text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc">
            <span className="flex items-center gap-2">
              Rankings Dashboard
              {isRefreshing && <RefreshCw className="h-3 w-3 text-primary animate-spin" />}
            </span>
            <span>Est. percentile cutoff: 90%ile</span>
          </div>

          <div className="divide-y divide-slate-100">
            {normalList.length === 0 ? (
              // Extended list loading skeleton
              Array.from({ length: 5 }).map((_, idx) => (
                <div key={idx} className="px-6 py-4 flex items-center justify-between animate-pulse">
                  <div className="flex items-center gap-4">
                    <div className="h-4 w-6 bg-slate-200 rounded" />
                    <div>
                      <div className="h-4 w-28 bg-slate-200 rounded mb-1.5" />
                      <div className="h-3 w-40 bg-slate-100 rounded" />
                    </div>
                  </div>
                  <div className="flex gap-6 items-center">
                    <div className="h-6 w-16 bg-slate-100 rounded-lg" />
                    <div className="h-6 w-16 bg-slate-100 rounded-lg" />
                  </div>
                </div>
              ))
            ) : (
              normalList.map((student) => {
                const isCurrentUser = student.isCurrentUser
                
                return (
                  <div 
                    key={student.rank} 
                    className={`px-6 py-4 flex items-center justify-between transition-all ${
                      isCurrentUser 
                        ? 'bg-primary-light/40 border-y border-primary/10 shadow-[inset_0_1px_3px_rgba(0,0,0,0.02)]' 
                        : 'hover:bg-slate-50/60'
                    }`}
                  >
                    
                    {/* Left info: rank and name */}
                    <div className="flex items-center gap-4">
                      <span className={`w-8 text-xs font-black text-center ${isCurrentUser ? 'text-primary' : 'text-slate-400'}`}>
                        #{student.rank}
                      </span>
                      <div>
                        <span className={`block text-xs font-bold text-neutral-title flex items-center gap-1.5 ${isCurrentUser ? 'text-primary font-black' : ''}`}>
                          {student.name}
                          {isCurrentUser && (
                            <span className="px-1.5 py-0.5 text-[8px] bg-primary text-white rounded font-extrabold uppercase">YOU</span>
                          )}
                        </span>
                        <span className="text-[9px] text-slate-400 font-medium uppercase tracking-wider flex items-center gap-1.5">
                          <span>Class {student.class}</span>
                          <span className="w-1 h-1 rounded-full bg-slate-300" />
                          <span>{student.coaching}</span>
                        </span>
                      </div>
                    </div>

                    {/* Right info: marks and percentile */}
                    <div className="flex items-center gap-8 text-right">
                      <div>
                        <span className="block text-xs font-black text-neutral-title">{student.score} <span className="text-[10px] text-slate-400 font-bold">marks</span></span>
                        <span className="text-[9px] font-bold text-slate-400 uppercase">raw score</span>
                      </div>
                      <div className="w-20">
                        <span className="block text-xs font-black text-primary">{student.percentile}%ile</span>
                        <span className="text-[9px] font-bold text-slate-400 uppercase">percentile</span>
                      </div>
                    </div>

                  </div>
                )
              })
            )}
          </div>

        </section>

      </main>

    </div>
  )
}
