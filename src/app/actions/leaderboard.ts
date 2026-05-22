'use server'

import { createClient, isSupabaseConfigured } from '@/lib/supabase/server'
import { getCurrentUser } from './auth'

// ─── FIX #12: Leaderboard no longer injects fake static names or fabricated ───
// scores. It only shows real submitted attempts from the database.
// In sandbox mode (no Supabase), it shows only the current user's own attempts.

export interface LeaderboardEntry {
  rank: number
  name: string
  score: number
  percentile: number
  class: string
  coaching: string
  isCurrentUser?: boolean
}

export async function getLeaderboardAction(tabId: string) {
  const currentUser = await getCurrentUser()
  const currentUserId = currentUser?.id || null
  const currentUserName = currentUser?.profile?.name || currentUser?.user_metadata?.name || 'You'
  const currentUserClass = currentUser?.profile?.class || '12'
  const currentUserCoaching = currentUser?.profile?.coaching_name || 'Self Study'

  // ── SANDBOX MODE: no Supabase ──────────────────────────────────────────────
  if (!isSupabaseConfigured) {
    // Only show the current user — no fake competitors
    const entry: LeaderboardEntry = {
      rank: 1,
      name: currentUserName,
      score: 0,
      percentile: 0,
      class: currentUserClass,
      coaching: currentUserCoaching,
      isCurrentUser: true,
    }
    return {
      success: true,
      top3: [] as LeaderboardEntry[],
      list: [entry],
      notice: 'Leaderboard requires real test submissions. Take a mock test to appear here.',
    }
  }

  // ── SUPABASE MODE ──────────────────────────────────────────────────────────
  const supabase = createClient()

  try {
    interface RawAttempt {
      score: number
      user_id: string
      users: { name: string; class: string; coaching_name: string } | null
    }

    let query = supabase
      .from('attempts')
      .select('score, user_id, users(name, class, coaching_name)')
      .eq('status', 'submitted')
      .order('score', { ascending: false })
      .limit(200)

    // Filter by specific test if not "overall"
    if (tabId !== 'overall') {
      query = query.eq('test_id', tabId)
    }

    const { data: rawAttempts, error } = await query
    if (error) throw error

    const attempts = (rawAttempts as unknown as RawAttempt[]) || []

    // Deduplicate: keep highest score per user
    const bestByUser = new Map<string, RawAttempt>()
    for (const att of attempts) {
      const existing = bestByUser.get(att.user_id)
      if (!existing || att.score > existing.score) {
        bestByUser.set(att.user_id, att)
      }
    }

    const sorted = Array.from(bestByUser.values()).sort((a, b) => b.score - a.score)
    const total = sorted.length

    const entries: LeaderboardEntry[] = sorted.map((att, idx) => ({
      rank: idx + 1,
      name: att.users?.name || 'Aspirant',
      score: Number(att.score) || 0,
      // Percentile = percentage of users scoring below this user
      percentile: total > 1
        ? parseFloat(((1 - idx / (total - 1)) * 100).toFixed(2))
        : 100,
      class: att.users?.class || '12',
      coaching: att.users?.coaching_name || 'Self Study',
      isCurrentUser: att.user_id === currentUserId,
    }))

    // If current user has no attempt yet, append them at the bottom with score 0
    const userInList = entries.some(e => e.isCurrentUser)
    if (!userInList && currentUserId) {
      entries.push({
        rank: total + 1,
        name: currentUserName,
        score: 0,
        percentile: 0,
        class: currentUserClass,
        coaching: currentUserCoaching,
        isCurrentUser: true,
      })
    }

    const top3 = entries.slice(0, 3)
    const rest = entries.slice(3)

    return { success: true, top3, list: rest }
  } catch (err) {
    const e = err as { message?: string }
    return {
      success: false,
      error: e.message || 'Failed to load leaderboard.',
      top3: [] as LeaderboardEntry[],
      list: [] as LeaderboardEntry[],
    }
  }
}
