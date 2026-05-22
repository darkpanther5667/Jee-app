'use client'

import React, { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { getCurrentUser } from '@/app/actions/auth'
import { verifyAndUpgradeSubscriptionAction, sandboxUpgradeSubscriptionAction } from '@/app/actions/subscription'
import { Check, Shield, Sparkles, Award, Zap, ArrowLeft, Loader2 } from 'lucide-react'
import Link from 'next/link'
import Script from 'next/script'

interface UserProfile {
  name?: string
  class?: '11' | '12' | 'dropper'
  subscription_tier?: string
  email?: string
  mobile?: string
}

interface UserSession {
  email?: string
  profile?: UserProfile
  user_metadata?: {
    name?: string
    subscription_tier?: string
  }
}

export default function SubscriptionPage() {
  const router = useRouter()
  const [currentUser, setCurrentUser] = useState<UserSession | null>(null)
  const [currentTier, setCurrentTier] = useState<string>('free')

  const [loading, setLoading] = useState(true)
  const [selectedPlan, setSelectedPlan] = useState<'pro' | 'elite'>('pro')
  const [isProcessing, setIsProcessing] = useState(false)
  const [paymentSuccess, setPaymentSuccess] = useState(false)
  const [errorMsg, setErrorMsg] = useState<string | null>(null)

  // Sandbox simulator UI states (only shown when no real Razorpay key)
  const [showSimulatorModal, setShowSimulatorModal] = useState(false)
  const [paymentMethod, setPaymentMethod] = useState<'upi' | 'card' | 'netbanking'>('upi')
  const [upiId, setUpiId] = useState('')
  const [cardNumber, setCardNumber] = useState('')
  const [cardExpiry, setCardExpiry] = useState('')
  const [cardCvv, setCardCvv] = useState('')
  const [selectedBank, setSelectedBank] = useState('SBI')

  useEffect(() => {
    async function loadUser() {
      const user = await getCurrentUser()
      if (user) {
        setCurrentUser(user as UserSession)
        const tier = user.profile?.subscription_tier || user.user_metadata?.subscription_tier || 'free'
        setCurrentTier(tier)
      }
      setLoading(false)
    }
    loadUser()
  }, [])

  const handleCheckout = async (plan: 'pro' | 'elite') => {
    setSelectedPlan(plan)
    setErrorMsg(null)

    const rzpKey = process.env.NEXT_PUBLIC_RAZORPAY_KEY_ID
    if (rzpKey) {
      // Real Razorpay: create order server-side first, then verify signature on success
      setIsProcessing(true)
      let orderId: string
      try {
        const orderRes = await fetch('/api/payments/create-order', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ plan }),
        })
        const orderData = await orderRes.json()
        if (!orderData.orderId) throw new Error(orderData.error || 'Failed to create order')
        orderId = orderData.orderId
      } catch (err) {
        const e = err as { message?: string }
        setErrorMsg(e.message || 'Could not initiate payment. Please try again.')
        setIsProcessing(false)
        return
      }
      setIsProcessing(false)

      const amountPaise = plan === 'pro' ? 99900 : 199900
      const options = {
        key: rzpKey,
        amount: amountPaise,
        currency: 'INR',
        order_id: orderId,
        name: 'ClearJEE Prep Platform',
        description: `${plan === 'pro' ? 'Pro' : 'Elite'} Subscription Plan Upgrade`,
        handler: async function (response: {
          razorpay_payment_id: string
          razorpay_order_id: string
          razorpay_signature: string
        }) {
          setIsProcessing(true)
          try {
            const result = await verifyAndUpgradeSubscriptionAction(
              plan,
              response.razorpay_payment_id,
              response.razorpay_order_id,
              response.razorpay_signature
            )
            if (result.success) {
              setPaymentSuccess(true)
              setCurrentTier(plan)
              setTimeout(() => { router.push('/dashboard'); router.refresh() }, 2200)
            } else {
              setErrorMsg(result.error || 'Payment verification failed.')
            }
          } catch {
            setErrorMsg('Network error validating transaction details.')
          } finally {
            setIsProcessing(false)
          }
        },
        prefill: {
          name: currentUser?.profile?.name || '',
          email: currentUser?.email || currentUser?.profile?.email || '',
          contact: currentUser?.profile?.mobile || ''
        },
        theme: { color: '#1A56DB' }
      }
      try {
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        const rzp = new (window as any).Razorpay(options)
        rzp.open()
      } catch {
        setErrorMsg('Failed to initialize Razorpay checkout.')
      }
    } else {
      // No real key — show sandbox simulator (dev/demo only)
      setShowSimulatorModal(true)
    }
  }

  // Sandbox upgrade — server-side action rejects if real Razorpay key is present
  const handleSimulatedPayment = async () => {
    setShowSimulatorModal(false)
    setIsProcessing(true)
    setErrorMsg(null)

    await new Promise(resolve => setTimeout(resolve, 1800))

    try {
      const result = await sandboxUpgradeSubscriptionAction(selectedPlan)
      if (result.success) {
        setPaymentSuccess(true)
        setCurrentTier(selectedPlan)
        setTimeout(() => { router.push('/dashboard'); router.refresh() }, 2200)
      } else {
        setErrorMsg(result.error || 'Simulated checkout validation failed.')
      }
    } catch {
      setErrorMsg('Network timeout during checkout simulation.')
    } finally {
      setIsProcessing(false)
    }
  }

  if (loading) {
    return (
      <div className="min-h-screen bg-slate-50 flex flex-col items-center justify-center font-sans">
        <Loader2 className="h-10 w-10 text-primary animate-spin mb-4" />
        <span className="text-xs font-bold text-neutral-desc uppercase tracking-wider">Syncing Membership Status...</span>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-slate-50 font-sans pb-24 relative overflow-hidden">

      <div className="absolute top-0 right-0 w-96 h-96 bg-primary/5 rounded-full blur-3xl pointer-events-none -translate-y-1/3 translate-x-1/3" />
      <div className="absolute bottom-0 left-0 w-96 h-96 bg-purple-500/5 rounded-full blur-3xl pointer-events-none translate-y-1/3 -translate-x-1/3" />

      <header className="sticky top-0 z-40 bg-white/80 backdrop-blur-md border-b border-slate-200/80 px-6 py-4 flex items-center justify-between shadow-sm">
        <div className="flex items-center gap-4">
          <Link href="/dashboard" className="p-2 bg-slate-50 hover:bg-slate-100 text-slate-500 rounded-xl transition-all">
            <ArrowLeft className="w-5 h-5" />
          </Link>
          <div>
            <h1 className="font-display font-extrabold text-base tracking-tight text-neutral-title">Upgrade Account</h1>
            <p className="text-[10px] font-bold text-neutral-desc uppercase tracking-wider">Choose your tailored learning acceleration plan</p>
          </div>
        </div>
        <div className="px-3 py-1 bg-slate-100 text-slate-700 text-[10px] font-extrabold uppercase rounded-full border border-slate-200">
          Current Tier: <span className="text-primary font-black uppercase">{currentTier}</span>
        </div>
      </header>

      <main className="max-w-5xl w-full mx-auto px-6 pt-12 space-y-10 relative z-10">

        <div className="text-center space-y-3 max-w-xl mx-auto">
          <span className="inline-flex items-center gap-1 px-3 py-1 bg-primary/5 text-primary text-[10px] font-extrabold uppercase rounded-full border border-primary/10">
            <Sparkles className="h-3.5 w-3.5" />
            Accelerate to IIT JEE
          </span>
          <h2 className="font-display font-black text-3xl sm:text-4xl text-neutral-title tracking-tight">
            Premium Features for Serious Aspirants
          </h2>
          <p className="text-xs text-neutral-desc leading-relaxed">
            Unlimited mock tests, full PYQ solutions, advanced analytics, and rank predictor.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 pt-4">

          {/* FREE */}
          <div className={`bg-white rounded-3xl border border-slate-200 p-6 flex flex-col justify-between shadow-sm relative overflow-hidden transition-all duration-300 ${currentTier === 'free' ? 'ring-2 ring-slate-400' : ''}`}>
            {currentTier === 'free' && (
              <span className="absolute top-4 right-4 px-2.5 py-0.5 bg-slate-100 text-slate-700 text-[9px] font-extrabold uppercase rounded-full border border-slate-200">ACTIVE</span>
            )}
            <div>
              <h3 className="font-display font-black text-xl text-neutral-title uppercase tracking-wide">Free Tier</h3>
              <p className="text-[10px] text-neutral-desc mt-1.5 leading-relaxed">Perfect for test driving the core engine</p>
              <div className="my-6">
                <span className="font-display font-black text-4xl text-neutral-title">₹0</span>
                <span className="text-xs text-slate-400 font-bold ml-1">forever</span>
              </div>
              <div className="w-full h-px bg-slate-100 my-6" />
              <ul className="space-y-3.5">
                {['3 Full Mock Exam Papers', 'PYQ Browser Index queries', 'Standard chapter-wise filters', 'Basic score evaluations'].map((feat, idx) => (
                  <li key={idx} className="flex items-start gap-2.5 text-xs text-slate-600">
                    <Check className="h-4 w-4 text-emerald-500 shrink-0 mt-0.5" /><span>{feat}</span>
                  </li>
                ))}
              </ul>
            </div>
            <div className="pt-8">
              <button disabled className="w-full py-3 bg-slate-100 text-slate-500 font-bold rounded-xl text-xs uppercase tracking-wider">
                {currentTier === 'free' ? 'Currently Active' : 'Free Standard Account'}
              </button>
            </div>
          </div>

          {/* PRO */}
          <div className={`bg-white rounded-3xl border border-slate-200 p-6 flex flex-col justify-between shadow-sm relative overflow-hidden transition-all duration-300 ${currentTier === 'pro' ? 'ring-2 ring-primary border-primary/20' : 'hover:border-primary/20 hover:shadow-md'}`}>
            <div className="absolute top-0 right-0 w-36 h-36 bg-primary/5 rounded-full blur-2xl pointer-events-none -translate-y-1/2 translate-x-1/2" />
            {currentTier === 'pro' ? (
              <span className="absolute top-4 right-4 px-2.5 py-0.5 bg-primary/10 text-primary text-[9px] font-extrabold uppercase rounded-full border border-primary/20">ACTIVE</span>
            ) : (
              <span className="absolute top-4 right-4 px-2.5 py-0.5 bg-primary text-white text-[9px] font-black uppercase rounded-full shadow-sm flex items-center gap-1">
                <Zap className="h-3 w-3 fill-white" /> MOST POPULAR
              </span>
            )}
            <div>
              <h3 className="font-display font-black text-xl text-neutral-title uppercase tracking-wide">Pro Tier</h3>
              <p className="text-[10px] text-neutral-desc mt-1.5 leading-relaxed">The ultimate pack for class 11, 12, & droppers</p>
              <div className="my-6">
                <span className="font-display font-black text-4xl text-neutral-title">₹999</span>
                <span className="text-xs text-slate-400 font-bold ml-1">/ month</span>
              </div>
              <div className="w-full h-px bg-slate-100 my-6" />
              <ul className="space-y-3.5">
                {['Unlimited Mock Tests (Scheduled + Dynamic)', 'Full Step-by-Step solutions & video walk sheets', 'All PYQ detailed explanations unlocked', 'Advanced Response Time scatter charts', 'Est. National Rank & Percentile predictor', 'Custom Bookmarks + revision tags'].map((feat, idx) => (
                  <li key={idx} className="flex items-start gap-2.5 text-xs text-slate-600">
                    <Check className="h-4 w-4 text-emerald-500 shrink-0 mt-0.5" /><span className="font-medium">{feat}</span>
                  </li>
                ))}
              </ul>
            </div>
            <div className="pt-8">
              <button
                type="button"
                onClick={() => handleCheckout('pro')}
                disabled={currentTier === 'pro' || currentTier === 'elite' || isProcessing}
                className={`w-full py-3 font-bold rounded-xl text-xs transition-all uppercase tracking-wider flex items-center justify-center gap-2 ${
                  currentTier === 'pro' ? 'bg-primary/10 text-primary border border-primary/25 cursor-default'
                  : currentTier === 'elite' ? 'bg-slate-100 text-slate-400 cursor-not-allowed'
                  : 'bg-primary hover:bg-primary-dark text-white shadow-premium active:scale-[0.98]'
                }`}
              >
                {currentTier === 'pro' ? 'Currently Active' : currentTier === 'elite' ? 'Downgrade Locked' : 'Upgrade to Pro'}
              </button>
            </div>
          </div>

          {/* ELITE */}
          <div className={`bg-white rounded-3xl border border-slate-200 p-6 flex flex-col justify-between shadow-sm relative overflow-hidden transition-all duration-300 ${currentTier === 'elite' ? 'ring-2 ring-purple-500 border-purple-500/20' : 'hover:border-purple-300 hover:shadow-md'}`}>
            <div className="absolute top-0 right-0 w-36 h-36 bg-purple-500/5 rounded-full blur-2xl pointer-events-none -translate-y-1/2 translate-x-1/2" />
            {currentTier === 'elite' && (
              <span className="absolute top-4 right-4 px-2.5 py-0.5 bg-purple-100 text-purple-700 text-[9px] font-extrabold uppercase rounded-full border border-purple-200">ACTIVE</span>
            )}
            <div>
              <h3 className="font-display font-black text-xl text-neutral-title uppercase tracking-wide flex items-center gap-1.5 text-purple-700">
                <Award className="h-5 w-5" /><span>Elite Tier</span>
              </h3>
              <p className="text-[10px] text-neutral-desc mt-1.5 leading-relaxed">Dedicated elite support and spaced revision algorithms</p>
              <div className="my-6">
                <span className="font-display font-black text-4xl text-neutral-title">₹1,999</span>
                <span className="text-xs text-slate-400 font-bold ml-1">/ month</span>
              </div>
              <div className="w-full h-px bg-slate-100 my-6" />
              <ul className="space-y-3.5">
                {['Everything in Pro Tier Plan', 'Guaranteed educator doubt replies (< 4 hours)', 'Personalized Spaced Repetition Revision Scheduler', 'Weak chapter accuracy target builders', 'Downloadable test result analysis reports (PDF)', 'Early access to all phase releases'].map((feat, idx) => (
                  <li key={idx} className="flex items-start gap-2.5 text-xs text-slate-600">
                    <Check className="h-4 w-4 text-emerald-500 shrink-0 mt-0.5" /><span>{feat}</span>
                  </li>
                ))}
              </ul>
            </div>
            <div className="pt-8">
              <button
                type="button"
                onClick={() => handleCheckout('elite')}
                disabled={currentTier === 'elite' || isProcessing}
                className={`w-full py-3 font-bold rounded-xl text-xs transition-all uppercase tracking-wider ${
                  currentTier === 'elite' ? 'bg-purple-100 text-purple-700 border border-purple-200 cursor-default'
                  : 'bg-slate-900 hover:bg-slate-800 text-white shadow-premium active:scale-[0.98]'
                }`}
              >
                {currentTier === 'elite' ? 'Currently Active' : 'Upgrade to Elite'}
              </button>
            </div>
          </div>

        </div>

        {errorMsg && (
          <div className="max-w-md mx-auto p-4 bg-rose-50 text-rose-800 text-xs font-bold rounded-2xl border border-rose-200 text-center animate-fade-in">
            {errorMsg}
          </div>
        )}

        <div className="max-w-md mx-auto text-center p-4 bg-slate-100 rounded-2xl border border-slate-200 flex items-center justify-center gap-3">
          <Shield className="h-5 w-5 text-slate-400" />
          <span className="text-[10px] font-bold text-neutral-desc uppercase tracking-wider">
            Payments secured via Razorpay. Signature verified server-side.
          </span>
        </div>

      </main>

      {/* Processing modal */}
      {isProcessing && (
        <div className="fixed inset-0 z-50 bg-slate-900/60 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-white rounded-3xl p-8 max-w-sm w-full border border-slate-200 shadow-premium flex flex-col items-center text-center space-y-4">
            <Loader2 className="h-10 w-10 text-primary animate-spin" />
            <div>
              <h4 className="font-display font-extrabold text-base text-neutral-title">Verifying Payment</h4>
              <p className="text-[11px] text-neutral-desc mt-1">Please do not refresh. Confirming with Razorpay...</p>
            </div>
          </div>
        </div>
      )}

      {/* Success modal */}
      {paymentSuccess && (
        <div className="fixed inset-0 z-50 bg-slate-900/80 backdrop-blur-md flex items-center justify-center p-4">
          <div className="bg-white rounded-3xl p-10 max-w-sm w-full border border-slate-200 shadow-premium flex flex-col items-center text-center space-y-4">
            <div className="h-16 w-16 bg-emerald-100 rounded-full flex items-center justify-center text-emerald-600 mb-2">
              <Check className="h-8 w-8 stroke-[3]" />
            </div>
            <div>
              <h4 className="font-display font-black text-xl text-neutral-title uppercase tracking-wide">Payment Confirmed</h4>
              <p className="text-xs text-neutral-desc mt-2">
                Your account has been upgraded to <strong className="text-primary uppercase font-extrabold">{selectedPlan}</strong>.
              </p>
            </div>
          </div>
        </div>
      )}

      <Script src="https://checkout.razorpay.com/v1/checkout.js" strategy="lazyOnload" />

      {/* Sandbox simulator — only shown when NEXT_PUBLIC_RAZORPAY_KEY_ID is not set */}
      {showSimulatorModal && (
        <div className="fixed inset-0 z-50 bg-slate-900/60 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-white rounded-3xl w-full max-w-md border border-slate-200 shadow-premium overflow-hidden relative">
            <div className="bg-slate-950 text-white p-6 relative">
              <button type="button" onClick={() => setShowSimulatorModal(false)}
                className="absolute top-4 right-4 text-slate-400 hover:text-white p-1 bg-slate-800 rounded-full text-sm font-bold">✕</button>
              <div className="flex items-center gap-1.5 mb-4">
                <span className="px-2 py-0.5 bg-amber-500 text-amber-950 text-[9px] font-black rounded-full uppercase">Sandbox Mode</span>
                <span className="px-2 py-0.5 bg-primary text-white text-[9px] font-black rounded-full uppercase">No Real Payment</span>
              </div>
              <div className="flex justify-between items-end">
                <div>
                  <h4 className="font-display font-extrabold text-base text-white">ClearJEE Platform</h4>
                  <p className="text-[10px] text-slate-400">Upgrade to {selectedPlan === 'pro' ? 'Pro' : 'Elite'} Plan</p>
                </div>
                <div className="text-right">
                  <span className="text-[9px] text-slate-400 block font-bold uppercase">amount</span>
                  <span className="font-display font-black text-xl text-amber-400">₹{selectedPlan === 'pro' ? '999' : '1,999'}</span>
                </div>
              </div>
            </div>

            <div className="flex border-b border-slate-200 text-xs font-bold uppercase tracking-wider text-slate-400">
              {(['upi', 'card', 'netbanking'] as const).map(method => (
                <button key={method} type="button" onClick={() => setPaymentMethod(method)}
                  className={`flex-1 py-3 text-center transition-all ${paymentMethod === method ? 'text-primary border-b-2 border-primary bg-primary/5' : 'hover:bg-slate-50 hover:text-slate-600'}`}>
                  {method === 'upi' ? 'UPI / GPay' : method === 'card' ? 'Card' : 'Net Banking'}
                </button>
              ))}
            </div>

            <div className="p-6 space-y-4 min-h-[180px] flex flex-col justify-between">
              {paymentMethod === 'upi' && (
                <div className="space-y-3">
                  <label className="block text-[10px] font-bold text-slate-400 uppercase">UPI ID (any value)</label>
                  <input type="text" placeholder="aspirant@okaxis" value={upiId} onChange={e => setUpiId(e.target.value)}
                    className="w-full px-4 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold text-slate-700 focus:outline-none focus:ring-2 focus:ring-primary/20" />
                </div>
              )}
              {paymentMethod === 'card' && (
                <div className="space-y-3">
                  <input type="text" placeholder="Card Number" value={cardNumber} onChange={e => setCardNumber(e.target.value)}
                    className="w-full px-4 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold text-slate-700 focus:outline-none focus:ring-2 focus:ring-primary/20" />
                  <div className="grid grid-cols-2 gap-4">
                    <input type="text" placeholder="MM/YY" value={cardExpiry} onChange={e => setCardExpiry(e.target.value)}
                      className="w-full px-4 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold text-slate-700 focus:outline-none focus:ring-2 focus:ring-primary/20" />
                    <input type="password" placeholder="CVV" value={cardCvv} onChange={e => setCardCvv(e.target.value)}
                      className="w-full px-4 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold text-slate-700 focus:outline-none focus:ring-2 focus:ring-primary/20" />
                  </div>
                </div>
              )}
              {paymentMethod === 'netbanking' && (
                <div className="space-y-3">
                  <label className="block text-[10px] font-bold text-slate-400 uppercase">Select Bank</label>
                  <select value={selectedBank} onChange={e => setSelectedBank(e.target.value)}
                    className="w-full px-4 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold text-slate-700 focus:outline-none focus:ring-2 focus:ring-primary/20">
                    <option value="SBI">State Bank of India</option>
                    <option value="HDFC">HDFC Bank</option>
                    <option value="ICICI">ICICI Bank</option>
                    <option value="AXIS">Axis Bank</option>
                  </select>
                </div>
              )}
              <button type="button" onClick={handleSimulatedPayment}
                className="w-full py-3 bg-primary hover:bg-primary-dark text-white font-bold rounded-xl text-xs uppercase tracking-wider transition-all mt-4">
                Confirm Sandbox Payment
              </button>
            </div>

            <div className="bg-slate-50 px-6 py-3 border-t border-slate-100 flex items-center justify-center gap-2 text-[9px] font-bold text-slate-400 uppercase">
              <Shield className="h-4 w-4" /> Sandbox — no real money charged
            </div>
          </div>
        </div>
      )}

    </div>
  )
}
