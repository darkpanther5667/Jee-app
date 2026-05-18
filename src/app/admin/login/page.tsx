'use client'

import React, { useState } from 'react'
import { useRouter } from 'next/navigation'
import { adminLoginAction } from '@/app/actions/admin-auth'
import { Shield, AlertCircle } from 'lucide-react'
import Link from 'next/link'

export default function AdminLoginPage() {
  const router = useRouter()
  const [passcode, setPasscode] = useState('')
  const [error, setError] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)
    const res = await adminLoginAction(passcode)
    setLoading(false)
    if (res.success) {
      router.push('/admin')
      router.refresh()
    } else {
      setError(res.error || 'Login failed.')
    }
  }

  return (
    <div className="min-h-screen bg-slate-50 flex items-center justify-center p-6">
      <div className="w-full max-w-md bg-white rounded-3xl border border-slate-200 shadow-premium p-8 space-y-6">
        <div className="text-center space-y-2">
          <div className="w-14 h-14 rounded-2xl bg-primary/10 flex items-center justify-center mx-auto">
            <Shield className="w-7 h-7 text-primary" />
          </div>
          <h1 className="font-display font-extrabold text-xl text-neutral-title">Admin Console</h1>
          <p className="text-xs text-neutral-desc">
            Sandbox mode: use passcode <code className="bg-slate-100 px-1 rounded font-mono">clearjee</code> unless
            ADMIN_PASSCODE is set.
          </p>
        </div>

        {error && (
          <div className="p-3 rounded-xl bg-danger-light text-danger text-xs font-semibold flex items-center gap-2">
            <AlertCircle className="w-4 h-4 shrink-0" />
            {error}
          </div>
        )}

        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label className="block text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider mb-2">
              Admin passcode
            </label>
            <input
              type="password"
              value={passcode}
              onChange={e => setPasscode(e.target.value)}
              className="w-full px-4 py-3 bg-slate-50 border border-slate-200 rounded-xl text-sm font-bold focus:outline-none focus:ring-2 focus:ring-primary/20"
              placeholder="Enter passcode"
              required
            />
          </div>
          <button
            type="submit"
            disabled={loading}
            className="w-full py-3 bg-primary hover:bg-primary-dark text-white font-bold rounded-xl text-sm disabled:opacity-50"
          >
            {loading ? 'Verifying...' : 'Enter control center'}
          </button>
        </form>

        <p className="text-center text-xs text-slate-500">
          <Link href="/dashboard" className="font-bold hover:text-primary">
            ← Back to student dashboard
          </Link>
        </p>
      </div>
    </div>
  )
}
