'use server'

import { cookies } from 'next/headers'
import { createClient, isSupabaseConfigured } from '@/lib/supabase/server'

export async function updateSubscriptionTierAction(tier: 'free' | 'pro' | 'elite') {
  if (!isSupabaseConfigured) {
    const mockCookie = cookies().get('mock_session')?.value
    if (!mockCookie) {
      return { success: false, error: 'Session not found. Please log in again.' }
    }

    try {
      const mockUser = JSON.parse(mockCookie)
      mockUser.profile = {
        ...mockUser.profile,
        subscription_tier: tier
      }

      // Re-save session cookie
      cookies().set('mock_session', JSON.stringify(mockUser), {
        path: '/',
        maxAge: 60 * 60 * 24 * 7,
        httpOnly: true,
        secure: process.env.NODE_ENV === 'production',
        sameSite: 'lax'
      })

      return { success: true, tier }
    } catch {
      return { success: false, error: 'Failed to update mock subscription session.' }
    }
  }

  const supabase = createClient()
  try {
    const { data: { user }, error: userError } = await supabase.auth.getUser()
    if (userError || !user) {
      return { success: false, error: 'User session not found.' }
    }

    // 1. Update public.users table
    const { error: dbError } = await supabase
      .from('users')
      .update({ subscription_tier: tier })
      .eq('id', user.id)

    if (dbError) {
      return { success: false, error: dbError.message }
    }

    // 2. Update auth.users metadata
    const { error: metaError } = await supabase.auth.updateUser({
      data: { subscription_tier: tier }
    })

    if (metaError) {
      return { success: false, error: 'Updated profile, but failed to update session metadata.' }
    }

    return { success: true, tier }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to complete subscription update.' }
  }
}
