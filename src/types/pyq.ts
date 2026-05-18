import { SubjectType } from './question'

export interface PyqFilters {
  exam: 'all' | 'jee_main' | 'jee_advanced'
  year: 'all' | number
  month: 'all' | 'january' | 'april'
  shift: 'all' | string
  subject: 'all' | SubjectType
  chapter: string
  topic: string
  searchQuery: string
}

export interface PyqBookmark {
  question_id: string
  tag?: string
  note?: string
  created_at: string
}

export interface PyqQuestionStats {
  views: number
  bookmarks: number
}
