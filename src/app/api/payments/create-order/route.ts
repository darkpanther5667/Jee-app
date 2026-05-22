import { NextRequest, NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'
import Razorpay from 'razorpay'

// ─── FIX #20: Server-side Razorpay order creation ────────────────────────────
// The client never touches the key_secret. Orders are created here, and the
// resulting order_id is used by the client to open the checkout widget.
// After payment, the client sends payment_id + order_id + signature back to
// verifyAndUpgradeSubscriptionAction which verifies the HMAC before upgrading.

export async function POST(request: NextRequest) {
  // Verify the user is authenticated
  const supabase = createClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  }

  const keyId = process.env.NEXT_PUBLIC_RAZORPAY_KEY_ID
  const keySecret = process.env.RAZORPAY_KEY_SECRET
  if (!keyId || !keySecret) {
    return NextResponse.json({ error: 'Payment gateway not configured.' }, { status: 500 })
  }

  let plan: string
  try {
    const body = await request.json()
    plan = body.plan
  } catch {
    return NextResponse.json({ error: 'Invalid request body.' }, { status: 400 })
  }

  if (plan !== 'pro' && plan !== 'elite') {
    return NextResponse.json({ error: 'Invalid plan.' }, { status: 400 })
  }

  const amountPaise = plan === 'pro' ? 99900 : 199900

  try {
    const razorpay = new Razorpay({ key_id: keyId, key_secret: keySecret })
    const order = await razorpay.orders.create({
      amount: amountPaise,
      currency: 'INR',
      receipt: `rcpt_${user.id.slice(0, 8)}_${Date.now()}`,
      notes: { userId: user.id, plan },
    })

    return NextResponse.json({ orderId: order.id })
  } catch (err) {
    const e = err as { message?: string }
    return NextResponse.json({ error: e.message || 'Failed to create order.' }, { status: 500 })
  }
}
