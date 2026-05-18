import React from 'react'
import { getTestAttemptAction, getTestConfigAction } from '@/app/actions/test'
import AnalysisClient from './AnalysisClient'
import { AlertCircle } from 'lucide-react'
import Link from 'next/link'

export default async function AnalysisPage({ params }: { params: { attemptId: string } }) {
  // 1. Fetch Attempt Record
  const attemptRes = await getTestAttemptAction(params.attemptId)

  if (!attemptRes.success || !attemptRes.attempt) {
    return (
      <div className="min-h-screen bg-slate-50 flex flex-col items-center justify-center p-6 text-center">
        <AlertCircle className="h-16 w-16 text-danger mb-4" />
        <h1 className="text-2xl font-display font-extrabold text-neutral-title mb-2">Attempt Not Found</h1>
        <p className="text-neutral-desc max-w-md mx-auto mb-6">
          {attemptRes.error || 'We could not locate this test attempt. It may have expired from the sandbox cache.'}
        </p>
        <Link 
          href="/dashboard"
          className="px-6 py-3 bg-primary text-white font-bold rounded-xl shadow-premium hover:bg-primary-dark transition-all"
        >
          Return to Dashboard
        </Link>
      </div>
    )
  }

  // 2. Fetch the corresponding Test blueprint & question bank
  const testRes = await getTestConfigAction(attemptRes.attempt.test_id)

  if (!testRes.success || !testRes.test || !testRes.questions) {
    return (
      <div className="min-h-screen bg-slate-50 flex flex-col items-center justify-center p-6 text-center">
        <AlertCircle className="h-16 w-16 text-danger mb-4" />
        <h1 className="text-2xl font-display font-extrabold text-neutral-title mb-2">Test Data Missing</h1>
        <p className="text-neutral-desc max-w-md mx-auto mb-6">
          The underlying test data for this attempt could not be loaded.
        </p>
        <Link 
          href="/dashboard"
          className="px-6 py-3 bg-primary text-white font-bold rounded-xl shadow-premium hover:bg-primary-dark transition-all"
        >
          Return to Dashboard
        </Link>
      </div>
    )
  }

  // 3. Render High-Fidelity Analytics Dashboard
  return (
    <AnalysisClient 
      attempt={attemptRes.attempt} 
      test={testRes.test} 
      questions={testRes.questions} 
    />
  )
}
