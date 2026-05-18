import React from 'react'
import { getTestConfigAction } from '@/app/actions/test'
import TestAttemptClient from './TestAttemptClient'
import { AlertCircle } from 'lucide-react'
import Link from 'next/link'

export default async function TestAttemptPage({ params }: { params: { id: string } }) {
  // 1. Fetch test blueprint on the server
  const configRes = await getTestConfigAction(params.id)

  if (!configRes.success || !configRes.test || !configRes.questions) {
    return (
      <div className="min-h-screen bg-slate-50 flex flex-col items-center justify-center p-6 text-center">
        <AlertCircle className="h-16 w-16 text-danger mb-4" />
        <h1 className="text-2xl font-display font-extrabold text-neutral-title mb-2">Test Unavailable</h1>
        <p className="text-neutral-desc max-w-md mx-auto mb-6">
          {configRes.error || 'The test you are trying to access does not exist or has been removed.'}
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

  const serverStartedAt = new Date().toISOString()

  return (
    <TestAttemptClient 
      test={configRes.test} 
      initialQuestions={configRes.questions}
      serverStartedAt={serverStartedAt}
    />
  )
}
