import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'
import { createClient, isSupabaseConfigured } from '@/lib/supabase/server'

export const ADMIN_COOKIE = 'cj_admin_session'

export async function isAdminSession(): Promise<boolean> {
  if (!isSupabaseConfigured) {
    return cookies().get(ADMIN_COOKIE)?.value === 'granted'
  }

  const supabase = createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return false

  const role = (user.user_metadata?.role as string | undefined) ?? ''
  return role === 'admin' || role === 'educator'
}

export async function requireAdmin() {
  if (!(await isAdminSession())) {
    redirect('/admin/login')
  }
}
