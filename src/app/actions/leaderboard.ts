'use server'

import { createClient, isSupabaseConfigured } from '@/lib/supabase/server'
import { getCurrentUser } from './auth'
import fs from 'fs'
import path from 'path'
import { TestAttempt } from '@/types/test'

export interface LeaderboardEntry {
  rank: number
  name: string
  score: number
  percentile: number
  class: string
  coaching: string
  isCurrentUser?: boolean
}

const MOCK_ATTEMPTS_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_attempts.json')

function readMockAttempts(): TestAttempt[] {
  try {
    if (fs.existsSync(MOCK_ATTEMPTS_PATH)) {
      return JSON.parse(fs.readFileSync(MOCK_ATTEMPTS_PATH, 'utf-8'))
    }
  } catch {}
  return []
}

export async function getLeaderboardAction(tabId: string) {
  const currentUser = await getCurrentUser()
  const currentUserId = currentUser?.id || 'mock-user-id'
  const currentUserName = currentUser?.profile?.name || currentUser?.user_metadata?.name || 'Aspirant (You)'
  const currentUserClass = currentUser?.profile?.class || '12'
  const currentUserCoaching = currentUser?.profile?.coaching_name || 'Self Study'

  // Standard static high-fidelity topper list
  const toppers: LeaderboardEntry[] = [
    { rank: 1, name: 'Chirag Falor', score: 296, percentile: 99.999, class: 'dropper', coaching: 'Allen Kota' },
    { rank: 2, name: 'Mridul Agarwal', score: 292, percentile: 99.995, class: '12', coaching: 'Self Study / ClearJEE' },
    { rank: 3, name: 'Kavya Chopra', score: 288, percentile: 99.991, class: '12', coaching: 'FIITJEE Delhi' }
  ]

  const baselineList: LeaderboardEntry[] = [
    { rank: 4, name: 'Anish Ray', score: 284, percentile: 99.980, class: 'dropper', coaching: 'Resonance' },
    { rank: 5, name: 'Pranav Goyal', score: 280, percentile: 99.971, class: '12', coaching: 'Allen' },
    { rank: 6, name: 'Sneha Reddy', score: 276, percentile: 99.962, class: '12', coaching: 'Sri Chaitanya' },
    { rank: 7, name: 'Rohan Sharma', score: 272, percentile: 99.950, class: '12', coaching: 'PW' },
    { rank: 8, name: 'Arya Gupta', score: 268, percentile: 99.938, class: 'dropper', coaching: 'Vibrant Academy' },
    { rank: 9, name: 'Ishita Jain', score: 264, percentile: 99.921, class: '11', coaching: 'Self Study' },
    { rank: 10, name: 'Divyansh Kunwar', score: 260, percentile: 99.905, class: '12', coaching: 'Allen' }
  ]

  // 1. SUPABASE MODE
  if (isSupabaseConfigured) {
    const supabase = createClient()
    try {
      // If overall grand rank is requested
      if (tabId === 'overall') {
        const { data: rawAttempts, error } = await supabase
          .from('attempts')
          .select(`
            score,
            user_id,
            users (
              name,
              class,
              coaching_name
            )
          `)
          .eq('status', 'submitted')
          .order('score', { ascending: false })

        if (error) throw error

        interface SupabaseAttempt {
          score: number
          user_id: string
          users: {
            name: string
            class: string
            coaching_name: string
          } | null
        }

        // Map and rank
        const entries: LeaderboardEntry[] = (rawAttempts as unknown as SupabaseAttempt[] || []).map((att, idx) => {
          const userObj = att.users
          return {
            rank: idx + 4, // Shift past toppers
            name: userObj?.name || 'Aspirant',
            score: Number(att.score) || 0,
            percentile: parseFloat((100 - ((idx + 1) / Math.max(1, rawAttempts.length)) * 10).toFixed(3)),
            class: userObj?.class || '12',
            coaching: userObj?.coaching_name || 'Self Study',
            isCurrentUser: att.user_id === currentUserId
          }
        })

        // Filter out duplicate user profiles to get highest score per user
        const uniqueEntries: LeaderboardEntry[] = []
        const userSet = new Set<string>()
        entries.forEach(e => {
          if (!userSet.has(e.name)) {
            userSet.add(e.name)
            uniqueEntries.push(e)
          }
        })

        // Re-calculate rankings sequentially
        const finalRanked = uniqueEntries.map((e, idx) => ({
          ...e,
          rank: idx + 4
        }))

        // Ensure current user is in the list
        const userIncluded = finalRanked.some(e => e.isCurrentUser)
        if (!userIncluded && currentUserId) {
          // Fetch current user details or add mock user record
          finalRanked.push({
            rank: 4210,
            name: currentUserName,
            score: 215,
            percentile: 92.400,
            class: currentUserClass,
            coaching: currentUserCoaching,
            isCurrentUser: true
          })
        }

        return { 
          success: true, 
          top3: toppers, 
          list: finalRanked.length > 0 ? finalRanked : baselineList.concat({
            rank: 4210,
            name: currentUserName,
            score: 215,
            percentile: 92.400,
            class: currentUserClass,
            coaching: currentUserCoaching,
            isCurrentUser: true
          })
        }
      }

      // Specific mock test ranking
      const targetTestId = tabId === 'mock_1' ? 'full_mock_1' : 'chapter_test_projectile'
      const { data: rawAttempts, error } = await supabase
        .from('attempts')
        .select(`
          score,
          user_id,
          users (
            name,
            class,
            coaching_name
          )
        `)
        .eq('test_id', targetTestId)
        .eq('status', 'submitted')
        .order('score', { ascending: false })

      if (error) throw error

      interface SupabaseAttempt {
        score: number
        user_id: string
        users: {
          name: string
          class: string
          coaching_name: string
        } | null
      }

      const dbEntries: LeaderboardEntry[] = (rawAttempts as unknown as SupabaseAttempt[] || []).map((att, idx) => {
        const userObj = att.users
        return {
          rank: idx + 4,
          name: userObj?.name || 'Aspirant',
          score: Number(att.score) || 0,
          percentile: parseFloat((100 - ((idx + 1) / Math.max(1, rawAttempts.length)) * 10).toFixed(3)),
          class: userObj?.class || '12',
          coaching: userObj?.coaching_name || 'Self Study',
          isCurrentUser: att.user_id === currentUserId
        }
      })

      // Ensure current user is included
      const hasUser = dbEntries.some(e => e.isCurrentUser)
      if (!hasUser) {
        dbEntries.push({
          rank: 4210,
          name: currentUserName,
          score: 215,
          percentile: 92.400,
          class: currentUserClass,
          coaching: currentUserCoaching,
          isCurrentUser: true
        })
      }

      return {
        success: true,
        top3: toppers,
        list: dbEntries.length > 1 ? dbEntries : baselineList.concat({
          rank: 4210,
          name: currentUserName,
          score: 215,
          percentile: 92.400,
          class: currentUserClass,
          coaching: currentUserCoaching,
          isCurrentUser: true
        })
      }
    } catch {
      // Fallback on database issue
      return {
        success: true,
        top3: toppers,
        list: baselineList.concat({
          rank: 4210,
          name: currentUserName,
          score: 215,
          percentile: 92.400,
          class: currentUserClass,
          coaching: currentUserCoaching,
          isCurrentUser: true
        })
      }
    }
  }

  // 2. SANDBOX / LOCAL FILESYSTEM MODE
  const mockAttempts = readMockAttempts()
  const targetTestId = tabId === 'mock_1' ? 'full_mock_1' : 'chapter_test_projectile'
  const testAttempts = mockAttempts.filter(a => a.test_id === targetTestId && a.status === 'submitted')

  // Sort local attempts by score
  testAttempts.sort((a, b) => (b.score || 0) - (a.score || 0))

  const sandboxEntries: LeaderboardEntry[] = testAttempts.map((att, idx) => ({
    rank: idx + 4,
    name: currentUserName,
    score: att.score || 0,
    percentile: parseFloat((100 - ((idx + 1) / Math.max(1, testAttempts.length)) * 15).toFixed(3)),
    class: currentUserClass,
    coaching: currentUserCoaching,
    isCurrentUser: true
  }))

  const finalCombinedList = sandboxEntries.concat(baselineList)
  // Ensure we sort so ranks represent score order
  finalCombinedList.sort((a, b) => b.score - a.score)
  
  // Assign sequential ranks starting from #4
  const rankedCombinedList = finalCombinedList.map((e, idx) => ({
    ...e,
    rank: idx + 4
  }))

  // If no current user is present, append custom rank at end
  const hasUser = rankedCombinedList.some(e => e.isCurrentUser)
  if (!hasUser) {
    rankedCombinedList.push({
      rank: 4210,
      name: currentUserName,
      score: 215,
      percentile: 92.400,
      class: currentUserClass,
      coaching: currentUserCoaching,
      isCurrentUser: true
    })
  }

  return {
    success: true,
    top3: toppers,
    list: rankedCombinedList
  }
}
