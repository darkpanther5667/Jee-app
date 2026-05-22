'use server'

import crypto from 'crypto'
import { cookies } from 'next/headers'
import { createClient, isSupabaseConfigured } from '@/lib/supabase/server'

// ─── FIX #1: Payment must be verified server-side before upgrading tier ───────
// Razorpay sends razorpay_payment_id + razorpay_order_id + razorpay_signature.
// We verify the HMAC-SHA256 signature before touching the database.
export async function verifyAndUpgradeSubscriptionAction(
  tier: 'pro' | 'elite',
  razorpayPaymentId: string,
  razorpayOrderId: string,
  razorpaySignature: string
) {
  const keySecret = process.env.RAZORPAY_KEY_SECRET
  if (!keySecret) {
    return { success: false, error: 'Payment gateway not configured on server.' }
  }

  // Verify Razorpay signature: HMAC-SHA256(order_id + "|" + payment_id, key_secret)
  const expectedSignature = crypto
    .createHmac('sha256', keySecret)
    .update(`${razorpayOrderId}|${razorpayPaymentId}`)
    .digest('hex')

  if (expectedSignature !== razorpaySignature) {
    return { success: false, error: 'Payment signature verification failed. Transaction rejected.' }
  }

  return updateSubscriptionTierAction(tier, razorpayPaymentId)
}

// ─── FIX #1 (sandbox): Sandbox simulator upgrade — only allowed when no real
// Razorpay key is configured (i.e. true sandbox/dev mode).
export async function sandboxUpgradeSubscriptionAction(tier: 'pro' | 'elite') {
  const rzpKey = process.env.NEXT_PUBLIC_RAZORPAY_KEY_ID
  if (rzpKey) {
    // Real Razorpay is configured — reject unauthenticated upgrades
    return {
      success: false,
      error: 'Live payment required. Use the Razorpay checkout to upgrade.',
    }
  }
  return updateSubscriptionTierAction(tier, 'sandbox-no-payment')
}

// Internal: actually writes the tier to DB — only called after verification above
async function updateSubscriptionTierAction(
  tier: 'free' | 'pro' | 'elite',
  paymentId: string
) {
  if (!isSupabaseConfigured) {
    const mockCookie = cookies().get('mock_session')?.value
    if (!mockCookie) {
      return { success: false, error: 'Session not found. Please log in again.' }
    }

    try {
      const mockUser = JSON.parse(mockCookie)
      mockUser.profile = {
        ...mockUser.profile,
        subscription_tier: tier
      }

      cookies().set('mock_session', JSON.stringify(mockUser), {
        path: '/',
        maxAge: 60 * 60 * 24 * 7,
        httpOnly: true,
        secure: process.env.NODE_ENV === 'production',
        sameSite: 'lax'
      })

      return { success: true, tier }
    } catch {
      return { success: false, error: 'Failed to update mock subscription session.' }
    }
  }

  const supabase = createClient()
  try {
    const { data: { user }, error: userError } = await supabase.auth.getUser()
    if (userError || !user) {
      return { success: false, error: 'User session not found.' }
    }

    // 1. Record the subscription with payment proof
    const validFrom = new Date().toISOString()
    const validTill = new Date(Date.now() + 30 * 24 * 60 * 60 * 1000).toISOString()
    await supabase.from('subscriptions').insert({
      user_id: user.id,
      plan: tier,
      valid_from: validFrom,
      valid_till: validTill,
      razorpay_payment_id: paymentId,
      amount_paise: tier === 'pro' ? 99900 : 199900,
      status: 'active',
    })

    // 2. Update public.users table
    const { error: dbError } = await supabase
      .from('users')
      .update({ subscription_tier: tier })
      .eq('id', user.id)

    if (dbError) {
      return { success: false, error: dbError.message }
    }

    // 3. Update auth.users metadata
    const { error: metaError } = await supabase.auth.updateUser({
      data: { subscription_tier: tier }
    })

    if (metaError) {
      return { success: false, error: 'Updated profile, but failed to update session metadata.' }
    }

    return { success: true, tier }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to complete subscription update.' }
  }
}
