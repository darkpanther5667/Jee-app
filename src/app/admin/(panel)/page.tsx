import React from 'react'
import Link from 'next/link'
import { getAdminStatsAction } from '@/app/actions/admin'
import {
  FileQuestion,
  CalendarClock,
  BarChart3,
  Zap,
  AlertTriangle,
  ChevronRight,
  Bookmark,
} from 'lucide-react'

export default async function AdminDashboardPage() {
  const res = await getAdminStatsAction()
  const stats = res.stats ?? {
    totalQuestions: 0,
    pyqCount: 0,
    unverifiedCount: 0,
    bySubject: { physics: 0, chemistry: 0, mathematics: 0 },
    totalAttempts: 0,
    scheduledTests: 0,
    bookmarkCount: 0,
  }

  const cards = [
    { label: 'Total questions', value: stats.totalQuestions, icon: FileQuestion, href: '/admin/questions', color: 'text-primary' },
    { label: 'PYQ tagged', value: stats.pyqCount, icon: Zap, href: '/admin/questions', color: 'text-amber-600' },
    { label: 'Needs verification', value: stats.unverifiedCount, icon: AlertTriangle, href: '/admin/questions', color: 'text-danger' },
    { label: 'Scheduled tests', value: stats.scheduledTests, icon: CalendarClock, href: '/admin/tests', color: 'text-indigo-600' },
    { label: 'Student attempts', value: stats.totalAttempts, icon: BarChart3, href: '/admin/attempts', color: 'text-success' },
    { label: 'PYQ bookmarks', value: stats.bookmarkCount, icon: Bookmark, href: '/pyq', color: 'text-slate-600' },
  ]

  return (
    <div className="p-6 sm:p-8 space-y-8 max-w-6xl">
      <header>
        <h1 className="font-display font-extrabold text-2xl text-neutral-title tracking-tight">Control Center</h1>
        <p className="text-sm text-neutral-desc mt-1">
          Manage the question bank, schedule mocks, and monitor attempt analytics.
        </p>
      </header>

      <div className="grid grid-cols-2 lg:grid-cols-3 gap-4">
        {cards.map(card => (
          <Link
            key={card.label}
            href={card.href}
            className="bg-white p-5 rounded-2xl border border-slate-200 shadow-sm hover:shadow-md hover:border-primary/20 transition-all group"
          >
            <card.icon className={`w-5 h-5 ${card.color} mb-3`} />
            <p className="text-2xl font-black text-neutral-title">{card.value}</p>
            <p className="text-[10px] font-bold uppercase tracking-wider text-neutral-desc mt-1 flex items-center justify-between">
              {card.label}
              <ChevronRight className="w-4 h-4 opacity-0 group-hover:opacity-100 transition-opacity" />
            </p>
          </Link>
        ))}
      </div>

      <div className="bg-white rounded-2xl border border-slate-200 p-6 shadow-sm">
        <h2 className="font-display font-bold text-sm text-neutral-title mb-4">Subject distribution</h2>
        <div className="grid grid-cols-3 gap-4">
          {(['physics', 'chemistry', 'mathematics'] as const).map(sub => (
            <div key={sub} className="text-center p-4 bg-slate-50 rounded-xl border border-slate-100">
              <p className="text-xl font-black text-primary">{stats.bySubject[sub]}</p>
              <p className="text-[10px] font-bold uppercase text-neutral-desc mt-1">{sub}</p>
            </div>
          ))}
        </div>
      </div>

      <div className="flex flex-wrap gap-3">
        <Link
          href="/admin/questions"
          className="px-5 py-2.5 bg-primary text-white text-xs font-bold rounded-xl shadow-sm hover:bg-primary-dark"
        >
          + Add question
        </Link>
        <Link
          href="/admin/tests"
          className="px-5 py-2.5 border border-slate-200 text-slate-700 text-xs font-bold rounded-xl hover:bg-slate-50"
        >
          Schedule a test
        </Link>
      </div>
    </div>
  )
}
