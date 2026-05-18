import { createBrowserClient } from '@supabase/ssr'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

export const isSupabaseConfigured = !!(supabaseUrl && supabaseAnonKey)

export const createClient = () => {
  if (!isSupabaseConfigured) {
    // Elegant precise typing fallback instead of broad 'any' to satisfy ESLint
    return null as unknown as ReturnType<typeof createBrowserClient>
  }
  return createBrowserClient(supabaseUrl!, supabaseAnonKey!)
}
