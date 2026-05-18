'use client'

import { useCallback, useEffect, useRef, useState } from 'react'

const DEADLINE_STORAGE_PREFIX = 'jee-test-deadline-'

export interface UseTimerOptions {
  testId: string
  durationSeconds: number
  /** ISO timestamp from the server when the attempt started */
  serverStartedAt: string
  onTimeUp: () => void
  warningAt?: number
}

function resolveDeadlineMs(
  testId: string,
  durationSeconds: number,
  serverStartedAt: string
): number {
  const storageKey = `${DEADLINE_STORAGE_PREFIX}${testId}`

  if (typeof window !== 'undefined') {
    const stored = localStorage.getItem(storageKey)
    if (stored) {
      const parsed = Number(stored)
      if (!Number.isNaN(parsed) && parsed > Date.now()) {
        return parsed
      }
    }
  }

  const startedMs = new Date(serverStartedAt).getTime()
  const deadlineMs = startedMs + durationSeconds * 1000

  if (typeof window !== 'undefined') {
    localStorage.setItem(storageKey, String(deadlineMs))
  }

  return deadlineMs
}

export function clearTestTimerDeadline(testId: string) {
  if (typeof window !== 'undefined') {
    localStorage.removeItem(`${DEADLINE_STORAGE_PREFIX}${testId}`)
  }
}

export function useTimer({
  testId,
  durationSeconds,
  serverStartedAt,
  onTimeUp,
  warningAt = 300,
}: UseTimerOptions) {
  const [deadlineMs] = useState(() =>
    resolveDeadlineMs(testId, durationSeconds, serverStartedAt)
  )
  const [timeLeft, setTimeLeft] = useState(() =>
    Math.max(0, Math.floor((deadlineMs - Date.now()) / 1000))
  )
  const hasFiredRef = useRef(false)
  const onTimeUpRef = useRef(onTimeUp)

  useEffect(() => {
    onTimeUpRef.current = onTimeUp
  }, [onTimeUp])

  const fireTimeUp = useCallback(() => {
    if (hasFiredRef.current) return
    hasFiredRef.current = true
    clearTestTimerDeadline(testId)
    onTimeUpRef.current()
  }, [testId])

  useEffect(() => {
    const tick = () => {
      const remaining = Math.max(0, Math.floor((deadlineMs - Date.now()) / 1000))
      setTimeLeft(remaining)
      if (remaining <= 0) {
        fireTimeUp()
      }
    }

    tick()
    const interval = setInterval(tick, 1000)
    return () => clearInterval(interval)
  }, [deadlineMs, fireTimeUp])

  const isWarning = timeLeft <= warningAt && timeLeft > 0

  return { timeLeft, isWarning }
}
