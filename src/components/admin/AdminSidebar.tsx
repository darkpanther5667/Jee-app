'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'
import {
  LayoutDashboard,
  FileQuestion,
  CalendarClock,
  BarChart3,
  ArrowLeft,
  Shield,
} from 'lucide-react'
import { adminLogoutAction } from '@/app/actions/admin-auth'

const NAV = [
  { href: '/admin', label: 'Overview', icon: LayoutDashboard, exact: true },
  { href: '/admin/questions', label: 'Question Bank', icon: FileQuestion },
  { href: '/admin/tests', label: 'Tests & Schedule', icon: CalendarClock },
  { href: '/admin/attempts', label: 'Attempts', icon: BarChart3 },
]

export default function AdminSidebar() {
  const pathname = usePathname()

  return (
    <aside className="w-56 flex-shrink-0 bg-white border-r border-slate-200 flex flex-col min-h-screen">
      <div className="p-5 border-b border-slate-100">
        <div className="flex items-center gap-2">
          <div className="h-8 w-8 rounded-lg bg-gradient-to-br from-primary to-blue-700 flex items-center justify-center text-white text-xs font-black">
            CJ
          </div>
          <div>
            <p className="text-xs font-extrabold text-neutral-title">ClearJEE</p>
            <p className="text-[9px] font-bold text-amber-700 uppercase tracking-wider flex items-center gap-1">
              <Shield className="w-3 h-3" />
              Admin
            </p>
          </div>
        </div>
      </div>

      <nav className="flex-grow p-3 space-y-1">
        {NAV.map(({ href, label, icon: Icon, exact }) => {
          const active = exact ? pathname === href : pathname.startsWith(href)
          return (
            <Link
              key={href}
              href={href}
              className={`flex items-center gap-2.5 px-3 py-2.5 rounded-xl text-xs font-bold transition-all ${
                active
                  ? 'bg-primary text-white shadow-sm'
                  : 'text-slate-600 hover:bg-slate-50 hover:text-neutral-title'
              }`}
            >
              <Icon className="w-4 h-4 shrink-0" />
              {label}
            </Link>
          )
        })}
      </nav>

      <div className="p-3 border-t border-slate-100 space-y-1">
        <Link
          href="/dashboard"
          className="flex items-center gap-2 px-3 py-2 text-xs font-bold text-slate-500 hover:text-primary rounded-xl hover:bg-slate-50"
        >
          <ArrowLeft className="w-4 h-4" />
          Student app
        </Link>
        <form action={adminLogoutAction}>
          <button
            type="submit"
            className="w-full text-left px-3 py-2 text-xs font-bold text-slate-500 hover:text-danger rounded-xl hover:bg-danger-light/30"
          >
            Sign out of admin
          </button>
        </form>
      </div>
    </aside>
  )
}
