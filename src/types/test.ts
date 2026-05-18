export type ResponseStatus = 
  | 'not_visited'
  | 'not_answered'
  | 'answered'
  | 'marked_review'
  | 'answered_marked'

export interface UserResponse {
  question_id: string
  answer: string | string[] | number | null
  time_spent: number // in seconds
  status: ResponseStatus
}

export interface TestSection {
  subject: string
  startIndex: number
  endIndex: number // exclusive
}

export interface Test {
  id: string
  title: string
  test_type: 'chapter_test' | 'part_test' | 'full_mock' | 'pyq_paper'
  exam_pattern: 'jee_main' | 'jee_advanced'
  duration_minutes: number
  total_marks: number
  question_ids: string[]
  is_scheduled?: boolean
  scheduled_at?: string
  available_from?: string
  available_till?: string
  is_free?: boolean
  subjects?: string[]
  chapters_covered?: Record<string, string[]>
  created_at?: string
}

export interface TestAttempt {
  id: string
  user_id: string
  test_id: string
  started_at: string
  submitted_at?: string
  time_taken_seconds: number
  responses: Record<string, UserResponse> // Keyed by question_id
  score?: number
  subject_scores?: Record<string, number>
  status: 'in_progress' | 'submitted' | 'timed_out'
}
