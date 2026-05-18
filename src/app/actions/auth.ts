'use server'

import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'
import { createClient, isSupabaseConfigured } from '@/lib/supabase/server'
import twilio from 'twilio'

export interface OnboardingData {
  name: string
  class: '11' | '12' | 'dropper'
  targetYear: number
  coachingName?: string
  city: string
  state: string
}

// 1. GET CURRENT USER
export async function getCurrentUser() {
  if (!isSupabaseConfigured) {
    const mockCookie = cookies().get('mock_session')?.value
    if (mockCookie) {
      try {
        return JSON.parse(mockCookie)
      } catch {
        return null
      }
    }
    return null
  }

  const supabase = createClient()
  try {
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return null

    // Get public profile data
    const { data: profile } = await supabase
      .from('users')
      .select('*')
      .eq('id', user.id)
      .single()

    return {
      id: user.id,
      email: user.email,
      phone: user.phone,
      user_metadata: user.user_metadata,
      profile: profile || null
    }
  } catch (error) {
    console.error('Error fetching user:', error)
    return null
  }
}

// 2. SEND OTP
export async function sendOtpAction(mobile: string) {
  // Format phone number to E.164 if not already (e.g. add +91 for Indian mobile numbers)
  let formattedMobile = mobile.trim()
  if (!formattedMobile.startsWith('+')) {
    // Default to India (+91) if 10 digits
    if (formattedMobile.length === 10) {
      formattedMobile = `+91${formattedMobile}`
    } else {
      return { success: false, error: 'Invalid mobile number. Please include country code.' }
    }
  }

  // Check if Twilio Verify is configured and active
  const twilioSid = process.env.TWILIO_ACCOUNT_SID
  const twilioToken = process.env.TWILIO_AUTH_TOKEN
  const twilioService = process.env.TWILIO_VERIFY_SERVICE_SID

  if (twilioSid && twilioToken && twilioToken !== 'your_auth_token_here' && twilioService) {
    try {
      const client = twilio(twilioSid, twilioToken)
      await client.verify.v2.services(twilioService)
        .verifications
        .create({ to: formattedMobile, channel: 'sms' })

      return {
        success: true,
        isTwilio: true,
        formattedMobile,
        message: 'OTP sent successfully to your mobile number via Twilio Verify.'
      }
    } catch (error) {
      const err = error as { message?: string }
      return { success: false, error: `Twilio SMS Dispatch Failure: ${err.message || 'Check your Twilio API credentials.'}` }
    }
  }

  if (!isSupabaseConfigured) {
    // Mock Mode Sandbox: Provide sandbox feedback with a test OTP
    return {
      success: true,
      isMock: true,
      message: 'Demo Mode: Use OTP "123456" to proceed.',
      formattedMobile
    }
  }

  const supabase = createClient()
  try {
    const { error } = await supabase.auth.signInWithOtp({
      phone: formattedMobile,
      options: {
        channel: 'sms'
      }
    })

    if (error) {
      return { success: false, error: error.message }
    }

    return { success: true, isMock: false, formattedMobile }
  } catch (error) {
    // Fixed explicit 'any' in catch block
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Something went wrong sending OTP.' }
  }
}

// 3. VERIFY OTP
export async function verifyOtpAction(mobile: string, code: string) {
  // Format phone number to E.164 if not already (e.g. add +91 for Indian mobile numbers)
  let formattedMobile = mobile.trim()
  if (!formattedMobile.startsWith('+')) {
    // Default to India (+91) if 10 digits
    if (formattedMobile.length === 10) {
      formattedMobile = `+91${formattedMobile}`
    }
  }

  // Check if Twilio Verify is configured and active
  const twilioSid = process.env.TWILIO_ACCOUNT_SID
  const twilioToken = process.env.TWILIO_AUTH_TOKEN
  const twilioService = process.env.TWILIO_VERIFY_SERVICE_SID

  if (twilioSid && twilioToken && twilioToken !== 'your_auth_token_here' && twilioService) {
    try {
      const client = twilio(twilioSid, twilioToken)
      const check = await client.verify.v2.services(twilioService)
        .verificationChecks
        .create({ to: formattedMobile, code: code })

      if (check.status !== 'approved') {
        return { success: false, error: 'Incorrect verification code. Please request a new one.' }
      }

      // If approved, proceed with session establishment
      if (!isSupabaseConfigured) {
        const mockUser = {
          id: 'mock-user-uuid-1234-5678',
          phone: formattedMobile,
          email: 'student@example.com',
          user_metadata: {
            onboarding_completed: false
          },
          profile: null
        }

        cookies().set('mock_session', JSON.stringify(mockUser), {
          path: '/',
          maxAge: 60 * 60 * 24 * 7,
          httpOnly: true,
          secure: process.env.NODE_ENV === 'production',
          sameSite: 'lax'
        })

        return { success: true, isMock: true, onboardingCompleted: false }
      }

      // Supabase Dynamic Integration
      const supabase = createClient()
      const { data: profile } = await supabase
        .from('users')
        .select('*')
        .eq('mobile', formattedMobile)
        .single()

      return {
        success: true,
        isMock: false,
        onboardingCompleted: !!profile
      }

    } catch (error) {
      const err = error as { message?: string }
      return { success: false, error: `Twilio OTP Verification Failure: ${err.message || 'Check your Twilio API credentials.'}` }
    }
  }

  if (!isSupabaseConfigured) {
    if (code !== '123456') {
      return { success: false, error: 'Invalid verification code. Enter "123456".' }
    }

    // Create a mock user structure
    const mockUser = {
      id: 'mock-user-uuid-1234-5678',
      phone: formattedMobile,
      email: 'student@example.com',
      user_metadata: {
        onboarding_completed: false
      },
      profile: null
    }

    // Set cookie valid for 7 days
    cookies().set('mock_session', JSON.stringify(mockUser), {
      path: '/',
      maxAge: 60 * 60 * 24 * 7,
      httpOnly: true,
      secure: process.env.NODE_ENV === 'production',
      sameSite: 'lax'
    })

    return { success: true, isMock: true, onboardingCompleted: false }
  }

  const supabase = createClient()
  try {
    const { data, error } = await supabase.auth.verifyOtp({
      phone: formattedMobile,
      token: code,
      type: 'sms'
    })

    if (error) {
      return { success: false, error: error.message }
    }

    // Check if user has completed onboarding from their metadata
    const userMetadata = data.user?.user_metadata || {}
    const onboardingCompleted = !!userMetadata.onboarding_completed

    return { 
      success: true, 
      isMock: false, 
      onboardingCompleted 
    }
  } catch (error) {
    // Fixed explicit 'any' in catch block
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Verification failed.' }
  }
}

// 4. GOOGLE OAUTH MOCK/REAL
export async function signInWithGoogleAction() {
  // In development mode, always use mock bypass for instant testing
  // (Google OAuth in Supabase requires dashboard configuration for production)
  const isDev = process.env.NODE_ENV !== 'production'

  if (!isSupabaseConfigured || isDev) {
    const mockUser = {
      id: 'mock-google-user-uuid',
      phone: null,
      email: 'iit_aspirant@google.com',
      user_metadata: {
        onboarding_completed: false
      },
      profile: null
    }

    cookies().set('mock_session', JSON.stringify(mockUser), {
      path: '/',
      maxAge: 60 * 60 * 24 * 7,
      httpOnly: true,
      secure: false, // dev mode, never secure
      sameSite: 'lax'
    })

    return { success: true, isMock: true, redirectUrl: '/onboarding' }
  }

  // Production: Real Supabase Google OAuth (client handles the redirect)
  return { 
    success: true, 
    isMock: false,
  }
}

// 5. SAVE ONBOARDING
export async function saveOnboardingAction(data: OnboardingData) {
  if (!isSupabaseConfigured) {
    const mockCookie = cookies().get('mock_session')?.value
    if (!mockCookie) {
      return { success: false, error: 'Session not found. Please log in again.' }
    }

    try {
      const mockUser = JSON.parse(mockCookie)
      
      // Update metadata and append profile
      mockUser.user_metadata.onboarding_completed = true
      mockUser.user_metadata.name = data.name
      mockUser.profile = {
        id: mockUser.id,
        name: data.name,
        mobile: mockUser.phone,
        email: mockUser.email,
        class: data.class,
        target_year: data.targetYear,
        coaching_name: data.coachingName || null,
        city: data.city,
        state: data.state,
        subscription_tier: 'free',
        created_at: new Date().toISOString()
      }

      // Re-save session cookie
      cookies().set('mock_session', JSON.stringify(mockUser), {
        path: '/',
        maxAge: 60 * 60 * 24 * 7,
        httpOnly: true,
        secure: process.env.NODE_ENV === 'production',
        sameSite: 'lax'
      })

      return { success: true }
    } catch {
      return { success: false, error: 'Failed to update onboarding session.' }
    }
  }

  const supabase = createClient()
  try {
    const { data: { user }, error: userError } = await supabase.auth.getUser()
    if (userError || !user) {
      return { success: false, error: 'User session not found.' }
    }

    // 1. Insert profile into public.users table
    const { error: profileError } = await supabase
      .from('users')
      .upsert({
        id: user.id,
        name: data.name,
        mobile: user.phone || null,
        email: user.email || null,
        class: data.class,
        target_year: data.targetYear,
        coaching_name: data.coachingName || null,
        city: data.city,
        state: data.state,
        subscription_tier: 'free'
      })

    if (profileError) {
      return { success: false, error: profileError.message }
    }

    // 2. Update user metadata in auth.users to flag onboarding complete
    const { error: metaError } = await supabase.auth.updateUser({
      data: { 
        onboarding_completed: true,
        name: data.name
      }
    })

    if (metaError) {
      return { success: false, error: 'Profile saved, but failed to update onboarding status.' }
    }

    return { success: true }
  } catch (error) {
    // Fixed explicit 'any' in catch block
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to complete onboarding.' }
  }
}

// 6. LOG OUT
export async function logoutAction() {
  if (!isSupabaseConfigured) {
    cookies().delete('mock_session')
    redirect('/login')
  }

  const supabase = createClient()
  await supabase.auth.signOut()
  redirect('/login')
}
