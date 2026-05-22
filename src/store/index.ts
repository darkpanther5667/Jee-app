// Root store file — combines all slices
import { create } from 'zustand'
import { UserResponse } from '@/types/test'

// ─── FIX #21: Replaced all `any` types with proper interfaces ─────────────────

interface UserProfile {
  id: string
  name?: string
  email?: string
  phone?: string
  class?: '11' | '12' | 'dropper'
  target_year?: number
  coaching_name?: string
  city?: string
  state?: string
  subscription_tier?: 'free' | 'pro' | 'elite'
}

interface AuthUser {
  id: string
  email?: string
  phone?: string
  user_metadata?: Record<string, unknown>
  profile?: UserProfile | null
}

interface AuthState {
  user: AuthUser | null
  setUser: (user: AuthUser | null) => void
}

interface TestState {
  currentQuestionIndex: number
  responses: Record<string, UserResponse>
  setCurrentQuestionIndex: (index: number) => void
  setResponse: (questionId: string, response: UserResponse) => void
  clearResponses: () => void
}

interface StoreState extends AuthState, TestState {}

export const useStore = create<StoreState>((set) => ({
  // Auth slice
  user: null,
  setUser: (user) => set({ user }),

  // Test slice
  currentQuestionIndex: 0,
  responses: {},
  setCurrentQuestionIndex: (index) => set({ currentQuestionIndex: index }),
  setResponse: (questionId, response) =>
    set((state) => ({
      responses: { ...state.responses, [questionId]: response },
    })),
  clearResponses: () => set({ responses: {}, currentQuestionIndex: 0 }),
}))