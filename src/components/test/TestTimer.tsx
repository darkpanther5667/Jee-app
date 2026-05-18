'use client'

import React from 'react'
import { Clock, AlertTriangle } from 'lucide-react'
import { useTimer } from '@/hooks/useTimer'

export interface TestTimerProps {
  testId: string
  durationSeconds: number
  serverStartedAt: string
  onTimeUp: () => void
  warningAt?: number
}

function formatTime(seconds: number) {
  const h = Math.floor(seconds / 3600)
  const m = Math.floor((seconds % 3600) / 60)
  const s = seconds % 60

  if (h > 0) {
    return `${h.toString().padStart(2, '0')}:${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`
  }
  return `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`
}

export default function TestTimer({
  testId,
  durationSeconds,
  serverStartedAt,
  onTimeUp,
  warningAt = 300,
}: TestTimerProps) {
  const { timeLeft, isWarning } = useTimer({
    testId,
    durationSeconds,
    serverStartedAt,
    onTimeUp,
    warningAt,
  })

  return (
    <div
      className={`flex items-center gap-2 px-3 py-1.5 rounded-lg border shadow-sm transition-all ${
        isWarning
          ? 'bg-danger-light border-danger/30 text-danger animate-pulse-subtle'
          : 'bg-slate-50 border-slate-200 text-neutral-title'
      }`}
    >
      {isWarning ? (
        <AlertTriangle className="h-4 w-4" />
      ) : (
        <Clock className="h-4 w-4 text-slate-500" />
      )}
      <span className="font-mono font-extrabold text-sm tracking-widest min-w-[70px] text-center">
        {formatTime(timeLeft)}
      </span>
    </div>
  )
}
