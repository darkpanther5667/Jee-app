'use server'

import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'
import { isSupabaseConfigured } from '@/lib/supabase/server'
import { ADMIN_COOKIE } from '@/lib/admin/auth'

// ─── FIX #2: Default passcode is no longer 'clearjee' ────────────────────────
// ADMIN_PASSCODE must be explicitly set in .env. If it is not set, admin login
// is disabled entirely — no fallback default.
const SANDBOX_PASSCODE = process.env.ADMIN_PASSCODE

export async function adminLoginAction(passcode: string) {
  if (!isSupabaseConfigured) {
    if (!SANDBOX_PASSCODE) {
      return {
        success: false,
        error: 'Admin access is disabled. Set ADMIN_PASSCODE in your environment variables.',
      }
    }
    if (passcode.trim() !== SANDBOX_PASSCODE) {
      return { success: false, error: 'Invalid admin passcode.' }
    }
    cookies().set(ADMIN_COOKIE, 'granted', {
      httpOnly: true,
      sameSite: 'strict',   // FIX: was 'lax', strict prevents CSRF
      path: '/',
      maxAge: 60 * 60 * 8,  // FIX: 8 hours instead of 7 days
      secure: process.env.NODE_ENV === 'production',
    })
    return { success: true }
  }

  return {
    success: false,
    error: 'Supabase mode: sign in with an account that has admin role in user_metadata.',
  }
}

export async function adminLogoutAction() {
  cookies().delete(ADMIN_COOKIE)
  redirect('/admin/login')
}
