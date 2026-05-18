import React from 'react'
import Link from 'next/link'
import { getAdminAttemptsAction } from '@/app/actions/admin'
import { BarChart3 } from 'lucide-react'

export default async function AdminAttemptsPage() {
  const res = await getAdminAttemptsAction()
  const attempts = res.attempts ?? []

  return (
    <div className="p-6 sm:p-8 space-y-6 max-w-6xl">
      <header>
        <h1 className="font-display font-extrabold text-2xl text-neutral-title flex items-center gap-2">
          <BarChart3 className="w-6 h-6 text-primary" />
          Attempt analytics
        </h1>
        <p className="text-sm text-neutral-desc mt-1">
          Sandbox log of submitted tests — scores and time taken per attempt.
        </p>
      </header>

      {attempts.length === 0 ? (
        <div className="bg-white rounded-2xl border border-slate-200 p-12 text-center">
          <p className="text-sm text-neutral-desc">No attempts recorded yet. Students can take a mock from the dashboard.</p>
        </div>
      ) : (
        <div className="bg-white rounded-2xl border border-slate-200 overflow-hidden shadow-sm">
          <table className="w-full text-left text-xs">
            <thead className="bg-slate-50 border-b border-slate-200">
              <tr>
                <th className="px-4 py-3 font-extrabold uppercase text-neutral-desc tracking-wider">Attempt</th>
                <th className="px-4 py-3 font-extrabold uppercase text-neutral-desc tracking-wider">Test</th>
                <th className="px-4 py-3 font-extrabold uppercase text-neutral-desc tracking-wider">Score</th>
                <th className="px-4 py-3 font-extrabold uppercase text-neutral-desc tracking-wider">Time</th>
                <th className="px-4 py-3 font-extrabold uppercase text-neutral-desc tracking-wider">Status</th>
                <th className="px-4 py-3" />
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-100">
              {attempts.map(a => (
                <tr key={a.id} className="hover:bg-slate-50/50">
                  <td className="px-4 py-3 font-mono text-[10px] text-slate-500">{a.id.slice(0, 18)}…</td>
                  <td className="px-4 py-3 font-semibold text-neutral-title">{a.test_id}</td>
                  <td className="px-4 py-3 font-black text-primary">{a.score ?? '—'}</td>
                  <td className="px-4 py-3 text-neutral-desc">
                    {Math.floor(a.time_taken_seconds / 60)}m {a.time_taken_seconds % 60}s
                  </td>
                  <td className="px-4 py-3">
                    <span className="px-2 py-0.5 rounded-full bg-green-50 text-green-700 text-[10px] font-bold uppercase border border-green-100">
                      {a.status}
                    </span>
                  </td>
                  <td className="px-4 py-3 text-right">
                    <Link
                      href={`/analysis/${a.id}`}
                      className="text-primary font-bold hover:underline"
                    >
                      Analysis →
                    </Link>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  )
}
