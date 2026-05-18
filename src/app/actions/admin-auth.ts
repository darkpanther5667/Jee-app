'use server'

import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'
import { isSupabaseConfigured } from '@/lib/supabase/server'
import { ADMIN_COOKIE } from '@/lib/admin/auth'

const SANDBOX_PASSCODE = process.env.ADMIN_PASSCODE ?? 'clearjee'

export async function adminLoginAction(passcode: string) {
  if (!isSupabaseConfigured) {
    if (passcode.trim() !== SANDBOX_PASSCODE) {
      return { success: false, error: 'Invalid admin passcode.' }
    }
    cookies().set(ADMIN_COOKIE, 'granted', {
      httpOnly: true,
      sameSite: 'lax',
      path: '/',
      maxAge: 60 * 60 * 24 * 7,
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
