'use client'

import React, { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { saveOnboardingAction, getCurrentUser } from '@/app/actions/auth'
import { User, MapPin, Building2, GraduationCap, CheckCircle2, AlertCircle } from 'lucide-react'

export default function OnboardingPage() {
  const router = useRouter()

  // Form State
  const [name, setName] = useState('')
  const [selectedClass, setSelectedClass] = useState<'11' | '12' | 'dropper' | null>(null)
  const [targetYear, setTargetYear] = useState<number | null>(null)
  const [coachingName, setCoachingName] = useState('')
  const [city, setCity] = useState('')
  const [state, setState] = useState('')
  
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [userPhone, setUserPhone] = useState('')

  // Load current user phone number for display context
  useEffect(() => {
    async function loadUser() {
      const user = await getCurrentUser()
      if (user) {
        setUserPhone(user.phone || user.email || '')
      }
    }
    loadUser()
  }, [])

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setError(null)

    if (!name || name.trim() === '') {
      setError('Please enter your full name.')
      return
    }
    if (!selectedClass) {
      setError('Please select your current academic class.')
      return
    }
    if (!targetYear) {
      setError('Please select your target JEE exam year.')
      return
    }
    if (!city || city.trim() === '') {
      setError('Please enter your city.')
      return
    }
    if (!state || state.trim() === '') {
      setError('Please enter your state.')
      return
    }

    setLoading(true)
    try {
      const result = await saveOnboardingAction({
        name,
        class: selectedClass,
        targetYear,
        coachingName: coachingName || undefined,
        city,
        state
      })

      if (result.success) {
        // Redirect to dashboard on success
        router.replace('/dashboard')
        router.refresh()
      } else {
        setError(result.error || 'Failed to save profile. Please try again.')
      }
    } catch {
      setError('An unexpected error occurred. Please try again.')
    } finally {
      setLoading(false)
    }
  }

  return (
    <main className="min-h-screen w-full flex items-center justify-center p-4 sm:p-6 md:p-10 font-sans grid-bg">
      <div className="max-w-4xl w-full flex flex-col md:flex-row glass-panel rounded-3xl overflow-hidden shadow-premium border border-white/40 animate-fade-in">
        
        {/* LEFT COLUMN: HERO INFORMATION */}
        <div className="w-full md:w-5/12 bg-gradient-to-br from-primary to-blue-800 p-8 sm:p-10 text-white flex flex-col justify-between relative">
          <div className="absolute inset-0 bg-[radial-gradient(circle_at_top_right,rgba(255,255,255,0.05)_0%,transparent_60%)] pointer-events-none" />
          
          <div>
            <div className="flex items-center gap-2 mb-8">
              <div className="h-8 w-8 rounded-lg bg-white/10 flex items-center justify-center text-white font-extrabold text-sm border border-white/10">
                CJ
              </div>
              <span className="font-display font-extrabold text-lg tracking-tight">ClearJEE</span>
            </div>

            <span className="text-xs font-bold text-accent tracking-widest uppercase mb-1 block">Step 2 of 2</span>
            <h1 className="font-display font-extrabold text-2xl sm:text-3xl tracking-tight leading-tight mb-4">
              Configure Your Academic Profile
            </h1>
            <p className="text-blue-100 text-xs leading-relaxed mb-6">
              Welcome aboard! Let&apos;s tailor the test engine, difficulty settings, and percentile estimators to your specific batch and target targets.
            </p>

            <div className="space-y-4">
              <div className="flex items-center gap-3">
                <CheckCircle2 className="h-4.5 w-4.5 text-accent shrink-0" />
                <span className="text-xs text-blue-50 font-medium">Activate Free Test Package (3 Full Mock Papers)</span>
              </div>
              <div className="flex items-center gap-3">
                <CheckCircle2 className="h-4.5 w-4.5 text-accent shrink-0" />
                <span className="text-xs text-blue-50 font-medium">Unlock Chapter Performance Heatmap</span>
              </div>
              <div className="flex items-center gap-3">
                <CheckCircle2 className="h-4.5 w-4.5 text-accent shrink-0" />
                <span className="text-xs text-blue-50 font-medium">Enable All India Percentile Estimators</span>
              </div>
            </div>
          </div>

          <div className="mt-8 pt-6 border-t border-white/10 flex items-center gap-3 text-xs text-blue-100">
            <GraduationCap className="h-5 w-5 text-accent" />
            <div>
              <span className="block font-semibold">Account Verified</span>
              <span className="text-[10px] text-blue-200">{userPhone}</span>
            </div>
          </div>
        </div>

        {/* RIGHT COLUMN: ONBOARDING FORM */}
        <form onSubmit={handleSubmit} className="w-full md:w-7/12 p-8 sm:p-10 bg-white flex flex-col justify-between">
          
          <div>
            <div className="mb-6">
              <h3 className="font-display font-extrabold text-xl text-neutral-title">Academic Details</h3>
              <p className="text-xs text-neutral-desc">We use these parameters to build custom percentile estimations.</p>
            </div>

            {error && (
              <div className="mb-6 p-4 rounded-xl bg-danger-light border border-danger/10 text-danger text-xs font-semibold flex items-center gap-2">
                <AlertCircle className="h-4.5 w-4.5 shrink-0 text-danger" />
                <span>{error}</span>
              </div>
            )}

            <div className="space-y-5">
              
              {/* Name */}
              <div>
                <label className="block text-[11px] font-bold uppercase tracking-wider text-neutral-title mb-2">
                  Full Name
                </label>
                <div className="relative group">
                  <input
                    type="text"
                    required
                    value={name}
                    onChange={(e) => setName(e.target.value)}
                    placeholder="Enter your full name"
                    className="w-full pl-10 pr-4 py-3 bg-slate-50 hover:bg-slate-100/50 border border-slate-200 focus:bg-white rounded-xl text-xs font-medium text-neutral-title transition-all focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary"
                  />
                  <div className="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-400 group-focus-within:text-primary transition-colors">
                    <User className="h-4 w-4" />
                  </div>
                </div>
              </div>

              {/* Class Selection Pills */}
              <div>
                <label className="block text-[11px] font-bold uppercase tracking-wider text-neutral-title mb-2">
                  Select Your Class
                </label>
                <div className="grid grid-cols-3 gap-3">
                  {(['11', '12', 'dropper'] as const).map((cls) => (
                    <button
                      key={cls}
                      type="button"
                      onClick={() => setSelectedClass(cls)}
                      className={`py-3 rounded-xl border text-xs font-bold transition-all ${
                        selectedClass === cls
                          ? 'border-primary bg-primary-light text-primary shadow-sm ring-1 ring-primary/25'
                          : 'border-slate-200 bg-white text-neutral-title hover:bg-slate-50 hover:border-slate-300'
                      }`}
                    >
                      {cls === '11' && 'Class 11th'}
                      {cls === '12' && 'Class 12th'}
                      {cls === 'dropper' && 'Dropper Batch'}
                    </button>
                  ))}
                </div>
              </div>

              {/* Target Year Selection Pills */}
              <div>
                <label className="block text-[11px] font-bold uppercase tracking-wider text-neutral-title mb-2">
                  Target JEE Exam Year
                </label>
                <div className="grid grid-cols-3 gap-3">
                  {[2026, 2027, 2028].map((year) => (
                    <button
                      key={year}
                      type="button"
                      onClick={() => setTargetYear(year)}
                      className={`py-3 rounded-xl border text-xs font-bold transition-all ${
                        targetYear === year
                          ? 'border-primary bg-primary-light text-primary shadow-sm ring-1 ring-primary/25'
                          : 'border-slate-200 bg-white text-neutral-title hover:bg-slate-50 hover:border-slate-300'
                      }`}
                    >
                      JEE {year}
                    </button>
                  ))}
                </div>
              </div>

              {/* Coaching Institute */}
              <div>
                <label className="block text-[11px] font-bold uppercase tracking-wider text-neutral-title mb-2">
                  Coaching Institute <span className="text-neutral-desc lowercase font-normal">(Optional)</span>
                </label>
                <div className="relative group">
                  <input
                    type="text"
                    value={coachingName}
                    onChange={(e) => setCoachingName(e.target.value)}
                    placeholder="Allen, Resonance, FIITJEE, PW, Self Study, etc."
                    className="w-full pl-10 pr-4 py-3 bg-slate-50 hover:bg-slate-100/50 border border-slate-200 focus:bg-white rounded-xl text-xs font-medium text-neutral-title transition-all focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary"
                  />
                  <div className="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-400 group-focus-within:text-primary transition-colors">
                    <Building2 className="h-4 w-4" />
                  </div>
                </div>
              </div>

              {/* Region Grid (City, State) */}
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-[11px] font-bold uppercase tracking-wider text-neutral-title mb-2">
                    City
                  </label>
                  <div className="relative group">
                    <input
                      type="text"
                      required
                      value={city}
                      onChange={(e) => setCity(e.target.value)}
                      placeholder="e.g. Kota"
                      className="w-full pl-10 pr-4 py-3 bg-slate-50 hover:bg-slate-100/50 border border-slate-200 focus:bg-white rounded-xl text-xs font-medium text-neutral-title transition-all focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary"
                    />
                    <div className="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-400 group-focus-within:text-primary transition-colors">
                      <MapPin className="h-4 w-4" />
                    </div>
                  </div>
                </div>

                <div>
                  <label className="block text-[11px] font-bold uppercase tracking-wider text-neutral-title mb-2">
                    State
                  </label>
                  <div className="relative group">
                    <input
                      type="text"
                      required
                      value={state}
                      onChange={(e) => setState(e.target.value)}
                      placeholder="e.g. Rajasthan"
                      className="w-full pl-10 pr-4 py-3 bg-slate-50 hover:bg-slate-100/50 border border-slate-200 focus:bg-white rounded-xl text-xs font-medium text-neutral-title transition-all focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary"
                    />
                    <div className="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-400 group-focus-within:text-primary transition-colors">
                      <MapPin className="h-4 w-4" />
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>

          <div className="pt-8 border-t border-slate-100 mt-8">
            <button
              type="submit"
              disabled={loading}
              className="w-full bg-primary hover:bg-primary-dark disabled:bg-slate-300 text-white font-bold py-3.5 px-4 rounded-xl text-xs transition-all shadow-premium flex items-center justify-center gap-2 hover:translate-y-[-1px] active:translate-y-[1px]"
            >
              {loading ? 'Activating Profile...' : 'Complete Registration & Access Mock Tests'}
            </button>
          </div>

        </form>

      </div>
    </main>
  )
}
