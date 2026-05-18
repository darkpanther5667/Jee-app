import { createServerClient } from '@supabase/ssr'
import { NextResponse, type NextRequest } from 'next/server'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

export async function updateSession(request: NextRequest) {
  let supabaseResponse = NextResponse.next({
    request,
  })

  // In development, if a mock session cookie exists, use it to bypass Supabase auth
  const isDev = process.env.NODE_ENV !== 'production'
  const mockSessionCookie = request.cookies.get('mock_session')?.value
  
  if (isDev && mockSessionCookie) {
    try {
      const user = JSON.parse(mockSessionCookie)
      return { supabaseResponse, user }
    } catch {
      // Ignored invalid JSON cookies
    }
  }

  // If Supabase is not configured, implement cookie-based mock session parsing
  if (!supabaseUrl || !supabaseAnonKey) {
    let user = null
    if (mockSessionCookie) {
      try {
        user = JSON.parse(mockSessionCookie)
      } catch {
        // Ignored invalid JSON cookies
      }
    }
    return { supabaseResponse, user }
  }

  const supabase = createServerClient(
    supabaseUrl,
    supabaseAnonKey,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll()
        },
        setAll(cookiesToSet) {
          // Fixed unused 'options' destructured variable
          cookiesToSet.forEach(({ name, value }) => request.cookies.set(name, value))
          supabaseResponse = NextResponse.next({
            request,
          })
          cookiesToSet.forEach(({ name, value, options }) =>
            supabaseResponse.cookies.set(name, value, options)
          )
        },
      },
    }
  )

  // This is required to refresh session cookie if expired
  let user = null
  try {
    const { data } = await supabase.auth.getUser()
    user = data.user
  } catch {
    // Session parsing error handled gracefully
  }

  return { supabaseResponse, user }
}
