'use client'

import React, { useState, useEffect } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import { signInWithGoogleAction } from '@/app/actions/auth'
import { isSupabaseConfigured } from '@/lib/supabase/client'
import { Sparkles, BarChart3, GraduationCap, Laptop, ShieldCheck, Globe, ArrowRight, Info } from 'lucide-react'

export default function LoginPage() {
  const router = useRouter()
  
  // Auth state
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [message, setMessage] = useState<string | null>(null)
  const isDemo = !isSupabaseConfigured
  const searchParams = useSearchParams()

  // Show error from OAuth callback redirect if any
  useEffect(() => {
    const urlError = searchParams.get('error')
    if (urlError === 'auth_callback_failed') {
      setError('Google sign-in failed. Please check that your Google account is enabled in Supabase and try again.')
    }
  }, [searchParams])

  // Handle Google Login
  const handleGoogleLogin = async () => {
    setError(null)
    setMessage(null)
    setLoading(true)
    try {
      const result = await signInWithGoogleAction()
      if (result.success) {
        if (result.isMock) {
          setMessage('Successfully signed in using Simulated Google Sandbox Account! Redirecting...')
          setTimeout(() => {
            router.replace(result.redirectUrl || '/onboarding')
            router.refresh()
          }, 1000)
        } else {
          // Supabase Client Oauth redirect
          const { createClient } = await import('@/lib/supabase/client')
          const supabase = createClient()
          if (supabase) {
            const { error: authError } = await supabase.auth.signInWithOAuth({
              provider: 'google',
              options: {
                redirectTo: `${window.location.origin}/api/auth/callback`
              }
            })
            
            if (authError) {
              setError(`Google Auth Error: ${authError.message}`)
            }
          }
        }
      } else {
        setError('Google authentication failed. Please try again.')
      }
    } catch {
      setError('An error occurred during Google sign-in. Please try again.')
    } finally {
      if (!isDemo) setLoading(false)
    }
  }

  return (
    <main className="min-h-screen w-full flex items-stretch overflow-hidden font-sans">
      
      {/* LEFT COLUMN: AUTH FORM PANEL */}
      <div className="w-full lg:w-1/2 flex flex-col justify-between p-6 sm:p-10 md:p-16 bg-gradient-to-tr from-slate-50 via-white to-blue-50/20 z-10">
        
        {/* Header Branding */}
        <div className="flex items-center gap-3">
          <div className="h-10 w-10 rounded-xl bg-gradient-to-br from-primary to-blue-700 flex items-center justify-center text-white font-extrabold text-xl shadow-premium animate-pulse-subtle">
            CJ
          </div>
          <div>
            <span className="font-display font-extrabold text-xl tracking-tight text-neutral-title">
              Clear<span className="text-primary">JEE</span>
            </span>
            <span className="hidden sm:inline-block ml-2 px-2 py-0.5 text-[10px] font-semibold text-primary bg-primary-light rounded-full border border-primary/10 uppercase tracking-wider">
              v1.0
            </span>
          </div>
        </div>

        {/* Center Auth Card */}
        <div className="my-auto py-10 max-w-md w-full mx-auto animate-slide-up">
          
          <div className="mb-8 text-center lg:text-left">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-primary/10 text-primary border border-primary/10 text-xs font-bold uppercase tracking-wider mb-4">
              <Sparkles className="h-3.5 w-3.5 text-accent animate-spin" style={{ animationDuration: '3s' }} />
              India&apos;s Smartest JEE Test Platform
            </div>
            <h2 className="font-display font-extrabold text-3xl md:text-4xl text-neutral-title tracking-tight mb-2">
              Let&apos;s Crack IIT!
            </h2>
            <p className="text-neutral-desc text-sm">
              Sign in instantly to access India’s most student-centric, data-driven test series.
            </p>
          </div>

          {/* Alert messages */}
          {error && (
            <div className="mb-6 p-4 rounded-xl bg-danger-light border border-danger/10 text-danger text-xs font-medium flex items-center gap-2">
              <span className="h-2 w-2 rounded-full bg-danger animate-pulse" />
              <span>{error}</span>
            </div>
          )}

          {message && (
            <div className="mb-6 p-4 rounded-xl bg-green-50 border border-green-200 text-green-800 text-xs font-semibold flex items-center gap-2 shadow-sm animate-pulse-subtle">
              <ShieldCheck className="h-4 w-4 text-green-600 shrink-0" />
              <span>{message}</span>
            </div>
          )}

          {/* Sandbox Indicator */}
          {isDemo && (
            <div className="mb-6 p-4 rounded-xl bg-amber-50 border border-amber-200 text-amber-900 text-xs shadow-sm flex items-start gap-2.5">
              <Info className="h-4.5 w-4.5 text-amber-700 shrink-0 mt-0.5" />
              <div>
                <span className="font-bold text-amber-800 block mb-0.5">🎮 Developer Sandbox Active</span>
                The app is currently running in offline mock mode. Clicking Google Sign-In will log you in instantly with a simulated student account.
              </div>
            </div>
          )}

          {/* Google Sign In Card */}
          <div className="bg-white border border-slate-200 rounded-2xl p-6 sm:p-8 shadow-premium hover:shadow-premium-hover transition-all duration-300 relative overflow-hidden group">
            <div className="absolute inset-x-0 top-0 h-1.5 bg-gradient-to-r from-primary via-blue-500 to-accent" />
            
            <div className="flex flex-col items-center text-center space-y-6">
              <div className="h-16 w-16 rounded-full bg-slate-50 border border-slate-100 flex items-center justify-center shadow-inner group-hover:scale-105 transition-all duration-300 relative">
                <div className="absolute inset-0 rounded-full bg-primary/5 opacity-0 group-hover:opacity-100 transition-opacity duration-300 animate-ping" />
                <svg className="h-8 w-8" viewBox="0 0 24 24" width="24" height="24" xmlns="http://www.w3.org/2000/svg">
                  <path d="M21.35,11.1H12v2.7h5.38C16.88,15.75,14.77,17,12,17c-3.15,0-5.83-2.14-6.78-5c-0.24-0.72-0.38-1.49-0.38-2.3s0.14-1.58,0.38-2.3c0.95-2.86,3.63-5,6.78-5c1.8,0,3.42,0.68,4.68,1.8l2-2C16.88,2.5,14.63,1.5,12,1.5C7.2,1.5,3.12,4.62,1.75,8.9C1.24,10.5,0.95,12.2,0.95,14s0.29,3.5,0.8,5.1c1.37,4.28,5.45,7.4,10.25,7.4c2.85,0,5.48-1,7.5-2.77c2.32-2.03,3.8-5.18,3.8-8.98C23.3,13.78,23.2,12.28,21.35,11.1z" fill="#4285F4"/>
                </svg>
              </div>

              <div>
                <h3 className="font-display font-bold text-lg text-neutral-title mb-1">
                  Secure Google Authentication
                </h3>
                <p className="text-xs text-neutral-desc">
                  No passwords, no delays. Access your dashboard instantly via Google OAuth.
                </p>
              </div>

              <button
                type="button"
                onClick={handleGoogleLogin}
                disabled={loading}
                className="w-full bg-gradient-to-r from-primary to-blue-700 hover:from-primary-dark hover:to-blue-800 text-white font-bold py-4 px-6 rounded-xl text-sm transition-all duration-300 shadow-premium flex items-center justify-center gap-3 hover:translate-y-[-1px] active:translate-y-[1px] disabled:opacity-85 disabled:cursor-not-allowed group/btn overflow-hidden relative"
              >
                {loading ? (
                  <>
                    <div className="h-4 w-4 border-2 border-white border-t-transparent rounded-full animate-spin" />
                    <span>Signing you in...</span>
                  </>
                ) : (
                  <>
                    <Globe className="h-4.5 w-4.5 text-white animate-pulse" />
                    <span>Continue with Google</span>
                    <ArrowRight className="h-4 w-4 group-hover/btn:translate-x-1 transition-transform" />
                  </>
                )}
              </button>

              <div className="grid grid-cols-2 gap-4 w-full pt-4 border-t border-slate-100 text-left">
                <div className="flex items-center gap-2">
                  <ShieldCheck className="h-4 w-4 text-primary shrink-0" />
                  <span className="text-[11px] font-semibold text-neutral-title">Official OAuth 2.0</span>
                </div>
                <div className="flex items-center gap-2">
                  <ShieldCheck className="h-4 w-4 text-primary shrink-0" />
                  <span className="text-[11px] font-semibold text-neutral-title">AES-256 Encrypted</span>
                </div>
              </div>
            </div>
          </div>

        </div>

        {/* Footer */}
        <div className="flex justify-between items-center text-xs text-neutral-desc pt-4 border-t border-slate-100 font-medium">
          <span>Secure AES Encrypted</span>
          <div className="flex gap-4">
            <a href="#" className="hover:underline hover:text-neutral-title">Privacy Policy</a>
            <a href="#" className="hover:underline hover:text-neutral-title">Terms</a>
          </div>
        </div>

      </div>

      {/* RIGHT COLUMN: MARKETING SHOWCASE SIDEBAR */}
      <div className="hidden lg:flex w-1/2 bg-gradient-to-br from-primary-dark to-blue-900 text-white p-12 md:p-16 flex-col justify-between relative overflow-hidden">
        
        {/* Subtle decorative mesh background */}
        <div className="absolute inset-0 bg-[radial-gradient(ellipse_at_top_right,rgba(245,158,11,0.12)_0%,transparent_50%)] z-0" />
        <div className="absolute -bottom-40 -left-40 h-80 w-80 bg-blue-500/20 rounded-full blur-[100px] z-0" />
        
        {/* Top badge */}
        <div className="flex justify-end z-10">
          <div className="glass-panel text-white border-white/10 px-4 py-1.5 rounded-full flex items-center gap-2 text-xs font-semibold shadow-sm">
            <span className="h-2 w-2 rounded-full bg-accent animate-ping" />
            <span>Over 1,24,000+ JEE Aspirants Live</span>
          </div>
        </div>

        {/* Features Content */}
        <div className="my-auto z-10 max-w-lg space-y-10">
          <div>
            <span className="text-xs font-extrabold uppercase tracking-widest text-accent mb-2 block">
              The Ultimate IIT Preparation Edge
            </span>
            <h1 className="font-display font-extrabold text-4xl xl:text-5xl leading-tight tracking-tight">
              Don&apos;t just practice.<br />
              <span className="text-transparent bg-clip-text bg-gradient-to-r from-accent to-amber-300">
                Measure, Refine, and Conquer.
              </span>
            </h1>
          </div>

          <div className="space-y-6">
            
            {/* Feature 1 */}
            <div className="flex items-start gap-4">
              <div className="h-10 w-10 shrink-0 rounded-xl bg-white/10 border border-white/10 flex items-center justify-center text-accent shadow-md">
                <Laptop className="h-5 w-5" />
              </div>
              <div>
                <h4 className="font-display font-bold text-base mb-1">Pixel-Perfect NTA Testing Simulator</h4>
                <p className="text-blue-100 text-xs leading-relaxed">
                  Prepare under realistic pressure. Enforced fullscreen, anti-cheat tracking, and color-coded interactive question palettes identical to the real exam.
                </p>
              </div>
            </div>

            {/* Feature 2 */}
            <div className="flex items-start gap-4">
              <div className="h-10 w-10 shrink-0 rounded-xl bg-white/10 border border-white/10 flex items-center justify-center text-accent shadow-md">
                <BarChart3 className="h-5 w-5" />
              </div>
              <div>
                <h4 className="font-display font-bold text-base mb-1">Hyper-Granular Performance Heatmaps</h4>
                <p className="text-blue-100 text-xs leading-relaxed">
                  Forget generic feedback. See chapter & topic-level accuracy, speed graphs, and precise percentile estimates using historical cutoff models.
                </p>
              </div>
            </div>

            {/* Feature 3 */}
            <div className="flex items-start gap-4">
              <div className="h-10 w-10 shrink-0 rounded-xl bg-white/10 border border-white/10 flex items-center justify-center text-accent shadow-md">
                <GraduationCap className="h-5 w-5" />
              </div>
              <div>
                <h4 className="font-display font-bold text-base mb-1">JEE PYQ Timed Simulator</h4>
                <p className="text-blue-100 text-xs leading-relaxed">
                  Attempt every single shift of JEE Main & Advanced from 2013-2025 as real-time mini-mocks, with robust LaTeX/KaTeX solutions.
                </p>
              </div>
            </div>

          </div>
        </div>

        {/* Bottom Testimonial */}
        <div className="z-10 bg-white/5 border border-white/10 rounded-2xl p-5 backdrop-blur-md">
          <p className="text-xs italic text-blue-100 leading-relaxed mb-3">
            &quot;The topic performance heatmap pinpointed exactly where I was leaking marks in Rotational Dynamics. Improved my score from 165 to 240 in just 6 weeks!&quot;
          </p>
          <div className="flex items-center gap-3">
            <div className="h-8 w-8 rounded-full bg-accent flex items-center justify-center text-neutral-title font-bold text-xs">
              PS
            </div>
            <div>
              <h5 className="text-xs font-bold font-display">Pranav Sharma</h5>
              <p className="text-[10px] text-accent font-semibold">IIT Delhi, Computer Science (AIR 84, JEE 2025)</p>
            </div>
          </div>
        </div>

      </div>

      {/* Glowing background blob */}
      <div className="absolute top-20 left-20 h-72 w-72 bg-primary/10 rounded-full blur-[120px] -z-10 animate-pulse-slow pointer-events-none" />

    </main>
  )
}

