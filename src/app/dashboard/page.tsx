import React from 'react'
import { redirect } from 'next/navigation'
import Link from 'next/link'
import { getCurrentUser, logoutAction } from '@/app/actions/auth'
import { 
  LogOut, 
  GraduationCap, 
  Award, 
  Flame, 
  BookOpen, 
  ChevronRight, 
  Clock, 
  Sparkles, 
  TrendingUp, 
  MapPin, 
  Building2,
  Calendar,
  Layers,
  FileText,
} from 'lucide-react'

export default async function DashboardPage() {
  const user = await getCurrentUser()

  // In case the middleware hasn't finished loading or a user drops through
  if (!user) {
    redirect('/login')
  }

  const profile = user.profile || {
    name: 'Aspirant',
    class: '12',
    target_year: 2026,
    coaching_name: 'Self Study',
    city: 'Kota',
    state: 'Rajasthan',
    subscription_tier: 'free'
  }

  // Capitalize first letter of class for display
  const displayClass = profile.class === 'dropper' ? 'Dropper Batch' : `Class ${profile.class}th`

  return (
    <div className="min-h-screen w-full flex flex-col bg-slate-50 font-sans">
      
      {/* 1. STICKY PREMIUM NAVIGATION BAR */}
      <header className="sticky top-0 z-50 bg-white/80 backdrop-blur-md border-b border-slate-200/80 px-6 py-4 flex items-center justify-between shadow-sm">
        <div className="flex items-center gap-3">
          <div className="h-9 w-9 rounded-xl bg-gradient-to-br from-primary to-blue-700 flex items-center justify-center text-white font-extrabold text-sm shadow-sm">
            CJ
          </div>
          <div>
            <span className="font-display font-extrabold text-base tracking-tight text-neutral-title">
              Clear<span className="text-primary">JEE</span>
            </span>
          </div>
        </div>

        <div className="flex items-center gap-4">
          <Link 
            href="/subscription" 
            className="hidden sm:flex items-center gap-2 px-3 py-1.5 bg-primary-light hover:bg-primary-light/60 text-primary border border-primary/10 rounded-full text-xs font-semibold cursor-pointer transition-all active:scale-95"
            title="Click to manage subscription plan"
          >
            <span className="h-1.5 w-1.5 rounded-full bg-primary animate-ping" />
            <span>Active Student Tier: <strong className="uppercase">{profile.subscription_tier}</strong></span>
          </Link>
          
          {profile.subscription_tier !== 'elite' && (
            <Link 
              href="/subscription" 
              className="px-3.5 py-1.5 text-xs font-bold text-white bg-primary hover:bg-primary-dark rounded-xl shadow-sm transition-all flex items-center gap-1 active:scale-95"
            >
              <Sparkles className="h-3.5 w-3.5 fill-white" />
              <span>Upgrade</span>
            </Link>
          )}
          
          <form action={logoutAction}>
            <button
              type="submit"
              className="px-3.5 py-1.5 text-xs font-bold text-slate-600 hover:text-danger hover:bg-danger-light border border-slate-200 hover:border-danger/10 rounded-xl transition-all flex items-center gap-2 active:scale-95"
            >
              <LogOut className="h-4 w-4" />
              <span className="hidden sm:inline">Log Out</span>
            </button>
          </form>
        </div>
      </header>

      {/* 2. DASHBOARD BODY LAYOUT */}
      <main className="max-w-7xl w-full mx-auto p-4 sm:p-6 lg:p-8 flex-grow space-y-8 animate-fade-in">
        
        {/* Welcome Greeting Banner Card */}
        <section className="relative overflow-hidden rounded-3xl bg-gradient-to-br from-primary-dark via-blue-900 to-indigo-950 text-white p-6 sm:p-8 md:p-10 shadow-premium">
          <div className="absolute inset-0 bg-[radial-gradient(circle_at_bottom_right,rgba(245,158,11,0.12)_0%,transparent_55%)] pointer-events-none" />
          <div className="absolute -top-24 -right-24 h-48 w-48 bg-white/5 rounded-full blur-2xl pointer-events-none" />
          
          <div className="relative z-10 flex flex-col md:flex-row md:items-center justify-between gap-6">
            <div className="space-y-3">
              <div className="inline-flex items-center gap-2 px-2.5 py-1 bg-white/10 border border-white/10 rounded-full text-[10px] font-bold tracking-wider uppercase text-accent">
                <Sparkles className="h-3 w-3 text-accent" />
                <span>IIT JEE Preparation Active</span>
              </div>
              <h2 className="font-display font-extrabold text-3xl sm:text-4xl tracking-tight leading-tight">
                Welcome back, {profile.name}!
              </h2>
              
              <div className="flex flex-wrap items-center gap-y-2 gap-x-4 pt-1 text-xs text-blue-100 font-medium">
                <div className="flex items-center gap-1.5">
                  <GraduationCap className="h-4.5 w-4.5 text-accent" />
                  <span>{displayClass}</span>
                </div>
                <span className="h-1 w-1 bg-white/30 rounded-full hidden sm:inline" />
                <div className="flex items-center gap-1.5">
                  <Calendar className="h-4 w-4 text-accent" />
                  <span>Target Exam: JEE {profile.target_year}</span>
                </div>
                {profile.coaching_name && (
                  <>
                    <span className="h-1 w-1 bg-white/30 rounded-full hidden sm:inline" />
                    <div className="flex items-center gap-1.5">
                      <Building2 className="h-4 w-4 text-accent" />
                      <span>Coaching: {profile.coaching_name}</span>
                    </div>
                  </>
                )}
                <span className="h-1 w-1 bg-white/30 rounded-full hidden sm:inline" />
                <div className="flex items-center gap-1.5">
                  <MapPin className="h-4 w-4 text-accent" />
                  <span>{profile.city}, {profile.state}</span>
                </div>
              </div>
            </div>

            <div className="shrink-0 flex gap-3 self-start md:self-center">
              <div className="px-5 py-4 bg-white/10 backdrop-blur-md border border-white/10 rounded-2xl text-center shadow-inner min-w-[90px]">
                <span className="block text-2xl font-black text-accent">3</span>
                <span className="text-[10px] font-semibold text-blue-200 uppercase tracking-wider">Free Tests</span>
              </div>
              <div className="px-5 py-4 bg-white/10 backdrop-blur-md border border-white/10 rounded-2xl text-center shadow-inner min-w-[90px]">
                <span className="block text-2xl font-black text-accent">0</span>
                <span className="text-[10px] font-semibold text-blue-200 uppercase tracking-wider">Taken</span>
              </div>
            </div>
          </div>
        </section>

        {/* 3. PERFORMANCE STATS GRID */}
        <section className="grid grid-cols-1 sm:grid-cols-3 gap-5">
          
          <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-sm flex items-center gap-4">
            <div className="h-11 w-11 rounded-xl bg-primary-light text-primary flex items-center justify-center">
              <Award className="h-6 w-6" />
            </div>
            <div>
              <span className="block text-[11px] font-bold uppercase tracking-wider text-neutral-desc">Avg. Accuracy Score</span>
              <strong className="text-xl text-neutral-title font-extrabold font-display">-- %</strong>
            </div>
          </div>

          <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-sm flex items-center gap-4">
            <div className="h-11 w-11 rounded-xl bg-orange-50 text-orange-500 flex items-center justify-center">
              <Flame className="h-6 w-6" />
            </div>
            <div>
              <span className="block text-[11px] font-bold uppercase tracking-wider text-neutral-desc">Mock Preparation Streak</span>
              <strong className="text-xl text-neutral-title font-extrabold font-display">0 Days</strong>
            </div>
          </div>

          <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-sm flex items-center gap-4">
            <div className="h-11 w-11 rounded-xl bg-green-50 text-green-500 flex items-center justify-center">
              <TrendingUp className="h-6 w-6" />
            </div>
            <div>
              <span className="block text-[11px] font-bold uppercase tracking-wider text-neutral-desc">Est. India Percentile</span>
              <strong className="text-xl text-neutral-title font-extrabold font-display">90.00% +</strong>
            </div>
          </div>

        </section>

        {/* 4. MAIN CONTENT AREA: ACTIVE TESTS AND ACTIONS */}
        <section className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          
          {/* Left Columns: Available Mock Tests */}
          <div className="lg:col-span-2 space-y-6">
            <div className="flex items-center justify-between">
              <h3 className="font-display font-extrabold text-lg text-neutral-title">Available Mock Tests</h3>
              <span className="text-xs font-semibold text-primary hover:underline cursor-pointer">View All</span>
            </div>

            {/* Test Card 1 */}
            <div className="bg-white rounded-2xl border border-slate-200 hover:border-primary/20 p-6 shadow-sm hover:shadow-md transition-all flex flex-col md:flex-row md:items-center justify-between gap-6 group">
              <div className="space-y-3">
                <div className="flex items-center gap-2">
                  <span className="px-2 py-0.5 text-[9px] font-bold text-primary bg-primary-light rounded-full">JEE MAIN</span>
                  <span className="px-2 py-0.5 text-[9px] font-bold text-success bg-success-light rounded-full">FREE RESOURCE</span>
                </div>
                
                <h4 className="font-display font-bold text-base text-neutral-title group-hover:text-primary transition-colors">
                  JEE Main 2026 Full Syllabus Mock Test #1
                </h4>
                
                <div className="flex flex-wrap items-center gap-x-4 gap-y-1 text-xs text-neutral-desc">
                  <div className="flex items-center gap-1">
                    <FileText className="h-4 w-4" />
                    <span>75 Questions</span>
                  </div>
                  <span className="h-1 w-1 bg-slate-300 rounded-full" />
                  <div className="flex items-center gap-1">
                    <Award className="h-4 w-4" />
                    <span>300 Marks</span>
                  </div>
                  <span className="h-1 w-1 bg-slate-300 rounded-full" />
                  <div className="flex items-center gap-1">
                    <Clock className="h-4 w-4" />
                    <span>180 Mins</span>
                  </div>
                </div>
              </div>

              <div className="shrink-0 flex items-center">
                <Link
                  href="/test/sandbox-test-1"
                  className="w-full md:w-auto bg-primary hover:bg-primary-dark text-white font-bold py-2.5 px-5 rounded-xl text-xs transition-all shadow-sm flex items-center justify-center gap-2 group-hover:translate-x-0.5"
                >
                  Attempt Free Simulator
                  <ChevronRight className="h-4.5 w-4.5" />
                </Link>
              </div>
            </div>

            {/* Test Card 2 (Locked Pro / Dynamic Active) */}
            {profile.subscription_tier === 'free' ? (
              <div className="bg-white rounded-2xl border border-slate-200/60 opacity-75 p-6 shadow-sm flex flex-col md:flex-row md:items-center justify-between gap-6 relative overflow-hidden group hover:border-amber-200 transition-all">
                <div className="absolute top-3 right-3 px-2 py-0.5 text-[9px] font-bold text-amber-700 bg-amber-50 border border-amber-200 rounded-full">
                  👑 PRO MEMBERSHIP REQUIRED
                </div>
                <div className="space-y-3">
                  <div className="flex items-center gap-2">
                    <span className="px-2 py-0.5 text-[9px] font-bold text-blue-700 bg-blue-50 rounded-full">JEE ADVANCED</span>
                  </div>
                  
                  <h4 className="font-display font-bold text-base text-neutral-title">
                    JEE Advanced Mock Simulator (Paper 1 & Paper 2)
                  </h4>
                  
                  <div className="flex flex-wrap items-center gap-x-4 gap-y-1 text-xs text-neutral-desc">
                    <div className="flex items-center gap-1">
                      <FileText className="h-4 w-4" />
                      <span>36 Questions</span>
                    </div>
                    <span className="h-1 w-1 bg-slate-300 rounded-full" />
                    <div className="flex items-center gap-1">
                      <Award className="h-4 w-4" />
                      <span>180 Marks</span>
                    </div>
                    <span className="h-1 w-1 bg-slate-300 rounded-full" />
                    <div className="flex items-center gap-1">
                      <Clock className="h-4 w-4" />
                      <span>180 Mins</span>
                    </div>
                  </div>
                </div>

                <div className="shrink-0 flex items-center">
                  <Link
                    href="/subscription"
                    className="w-full md:w-auto bg-amber-500 hover:bg-amber-600 text-white font-bold py-2.5 px-5 rounded-xl text-xs transition-all shadow-sm flex items-center justify-center gap-2 active:scale-95 group-hover:translate-x-0.5"
                  >
                    Unlock Pro Simulator
                    <ChevronRight className="h-4.5 w-4.5" />
                  </Link>
                </div>
              </div>
            ) : (
              <div className="bg-white rounded-2xl border border-slate-200 hover:border-primary/20 p-6 shadow-sm hover:shadow-md transition-all flex flex-col md:flex-row md:items-center justify-between gap-6 group">
                <div className="space-y-3">
                  <div className="flex items-center gap-2">
                    <span className="px-2 py-0.5 text-[9px] font-bold text-blue-700 bg-blue-50 rounded-full">JEE ADVANCED</span>
                    <span className="px-2 py-0.5 text-[9px] font-bold text-primary bg-primary-light rounded-full uppercase">{profile.subscription_tier} unlocked</span>
                  </div>
                  
                  <h4 className="font-display font-bold text-base text-neutral-title group-hover:text-primary transition-colors">
                    JEE Advanced Mock Simulator (Paper 1 & Paper 2)
                  </h4>
                  
                  <div className="flex flex-wrap items-center gap-x-4 gap-y-1 text-xs text-neutral-desc">
                    <div className="flex items-center gap-1">
                      <FileText className="h-4 w-4" />
                      <span>36 Questions</span>
                    </div>
                    <span className="h-1 w-1 bg-slate-300 rounded-full" />
                    <div className="flex items-center gap-1">
                      <Award className="h-4 w-4" />
                      <span>180 Marks</span>
                    </div>
                    <span className="h-1 w-1 bg-slate-300 rounded-full" />
                    <div className="flex items-center gap-1">
                      <Clock className="h-4 w-4" />
                      <span>180 Mins</span>
                    </div>
                  </div>
                </div>

                <div className="shrink-0 flex items-center">
                  <Link
                    href="/test/sandbox-test-2"
                    className="w-full md:w-auto bg-primary hover:bg-primary-dark text-white font-bold py-2.5 px-5 rounded-xl text-xs transition-all shadow-sm flex items-center justify-center gap-2 group-hover:translate-x-0.5 active:scale-95"
                  >
                    Attempt Mock Simulator
                    <ChevronRight className="h-4.5 w-4.5" />
                  </Link>
                </div>
              </div>
            )}

          </div>

          {/* Right Column: Actions and Shortcuts */}
          <div className="space-y-6">
            <h3 className="font-display font-extrabold text-lg text-neutral-title">Preparation Shortcuts</h3>
            
            <div className="bg-white rounded-2xl border border-slate-200 p-5 shadow-sm space-y-4">
              
              <Link href="/pyq" className="flex items-center justify-between p-3.5 bg-slate-50 hover:bg-indigo-50/20 border border-slate-100 hover:border-indigo-200/50 rounded-xl cursor-pointer transition-all group">
                <div className="flex items-center gap-3">
                  <div className="h-8 w-8 rounded-lg bg-indigo-50 text-indigo-500 flex items-center justify-center">
                    <BookOpen className="h-4.5 w-4.5" />
                  </div>
                  <div>
                    <span className="block text-xs font-bold text-neutral-title group-hover:text-primary transition-colors">Browse PYQ Archive</span>
                    <span className="text-[10px] text-neutral-desc">Years 2013-2025 organized</span>
                  </div>
                </div>
                <ChevronRight className="h-4 w-4 text-slate-400 group-hover:translate-x-0.5 group-hover:text-primary transition-all" />
              </Link>

              <Link href="/analysis/weak-topics" className="flex items-center justify-between p-3.5 bg-slate-50 hover:bg-emerald-50/20 border border-slate-100 hover:border-emerald-200/50 rounded-xl cursor-pointer transition-all group">
                <div className="flex items-center gap-3">
                  <div className="h-8 w-8 rounded-lg bg-emerald-50 text-emerald-500 flex items-center justify-center">
                    <Layers className="h-4.5 w-4.5" />
                  </div>
                  <div>
                    <span className="block text-xs font-bold text-neutral-title group-hover:text-emerald-700 transition-colors">Weak Topic Analysis</span>
                    <span className="text-[10px] text-neutral-desc">Chapterwise accuracy heatmaps</span>
                  </div>
                </div>
                <ChevronRight className="h-4 w-4 text-slate-400 group-hover:translate-x-0.5 group-hover:text-emerald-700 transition-all" />
              </Link>

              <Link href="/leaderboard" className="flex items-center justify-between p-3.5 bg-slate-50 hover:bg-amber-50/20 border border-slate-100 hover:border-amber-200/50 rounded-xl cursor-pointer transition-all group">
                <div className="flex items-center gap-3">
                  <div className="h-8 w-8 rounded-lg bg-amber-50 text-amber-500 flex items-center justify-center">
                    <Award className="h-4.5 w-4.5" />
                  </div>
                  <div>
                    <span className="block text-xs font-bold text-neutral-title group-hover:text-amber-700 transition-colors">National Leaderboards</span>
                    <span className="text-[10px] text-neutral-desc">Compare ranks with peers</span>
                  </div>
                </div>
                <ChevronRight className="h-4 w-4 text-slate-400 group-hover:translate-x-0.5 group-hover:text-amber-700 transition-all" />
              </Link>

            </div>
          </div>

        </section>

      </main>
      
      {/* 5. FOOTER */}
      <footer className="bg-white border-t border-slate-200 mt-16 py-6 text-center text-xs text-neutral-desc font-medium">
        <p>© 2026 ClearJEE Platform. All India Joint Entrance Examination Preparation. All rights reserved.</p>
      </footer>

    </div>
  )
}
