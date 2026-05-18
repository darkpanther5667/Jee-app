import { NextResponse, type NextRequest } from 'next/server'
import { updateSession } from '@/lib/supabase/middleware'

export async function middleware(request: NextRequest) {
  const { supabaseResponse, user } = await updateSession(request)

  const url = request.nextUrl.clone()

  // Define paths
  const isDashboard = url.pathname.startsWith('/dashboard')
  const isOnboarding = url.pathname.startsWith('/onboarding')
  const isAuthPage = url.pathname.startsWith('/login') || url.pathname.startsWith('/register')

  // Redirection rules
  if ((isDashboard || isOnboarding) && !user) {
    url.pathname = '/login'
    return NextResponse.redirect(url)
  }

  if (isAuthPage && user) {
    // If we have a user but they haven't finished onboarding, redirect to onboarding
    // Use clear TypeScript definitions instead of 'any' to satisfy strict linting
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
    /*
     * Match all request paths except for the ones starting with:
     * - _next/static (static files)
     * - _next/image (image optimization files)
     * - favicon.ico (favicon file)
     * - api routes (handled individually)
     * Feel free to modify this pattern to include more paths.
     */
    '/((?!_next/static|_next/image|favicon.ico|api|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)',
  ],
}
