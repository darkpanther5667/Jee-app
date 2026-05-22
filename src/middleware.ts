import { NextResponse, type NextRequest } from 'next/server'
import { updateSession } from '@/lib/supabase/middleware'

export async function middleware(request: NextRequest) {
  const { supabaseResponse, user } = await updateSession(request)

  const url = request.nextUrl.clone()
  const { pathname } = url

  // ─── FIX #13: Protect all authenticated routes ────────────────────────────
  const protectedPrefixes = [
    '/dashboard',
    '/onboarding',
    '/test',
    '/analysis',
    '/pyq',
    '/subscription',
    '/leaderboard',
  ]
  const isProtected = protectedPrefixes.some(p => pathname.startsWith(p))
  const isOnboarding = pathname.startsWith('/onboarding')
  const isAuthPage = pathname.startsWith('/login') || pathname.startsWith('/register')

  // Redirect unauthenticated users away from protected routes
  if (isProtected && !user) {
    url.pathname = '/login'
    return NextResponse.redirect(url)
  }

  if (isAuthPage && user) {
    const userMetadata = (user as { user_metadata?: Record<string, unknown> })?.user_metadata || {}
    const hasFinishedOnboarding = !!userMetadata.onboarding_completed

    if (!hasFinishedOnboarding && !isOnboarding) {
      url.pathname = '/onboarding'
      return NextResponse.redirect(url)
    }

    if (hasFinishedOnboarding && isOnboarding) {
      url.pathname = '/dashboard'
      return NextResponse.redirect(url)
    }

    if (isAuthPage) {
      url.pathname = '/dashboard'
      return NextResponse.redirect(url)
    }
  }

  supabaseResponse.headers.set('x-pathname', request.nextUrl.pathname)
  return supabaseResponse
}

export const config = {
  matcher: [
    '/((?!_next/static|_next/image|favicon.ico|api|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)',
  ],
}
