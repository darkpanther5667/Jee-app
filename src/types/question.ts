export type SubjectType = 'physics' | 'chemistry' | 'mathematics'
export type ClassType = '11' | '12'
export type DifficultyType = 'easy' | 'medium' | 'hard'
export type QuestionType = 
  | 'single_correct'    // JEE Main MCQ
  | 'multiple_correct'  // JEE Advanced MCQ
  | 'numerical'         // Integer / Decimal answer
  | 'matrix_match'      // JEE Advanced matrix matching
  | 'paragraph'         // Passage-based questions

export interface QuestionOption {
  id: string // "A", "B", "C", "D"
  text: string // KaTeX supported
  image_url?: string
}

export interface CorrectAnswer {
  type: 'single' | 'multiple' | 'numerical' | 'matrix' | 'paragraph'
  value: string | string[] | number | Record<string, string> // e.g. "B" or ["A", "C"] or 5.24
}

export interface Question {
  id: string
  subject: SubjectType
  class: ClassType
  chapter: string
  topic?: string
  difficulty: DifficultyType
  question_type: QuestionType
  question_text: string // KaTeX supported
  question_image_url?: string
  options?: QuestionOption[] // Nullable for numerical answers
  correct_answer: CorrectAnswer
  solution_text?: string // KaTeX supported
  solution_image_url?: string
  solution_video_url?: string
  marks_correct: number
  marks_incorrect: number // Negative markings, e.g. -1 or 0
  is_pyq: boolean
  pyq_year?: number
  pyq_exam?: 'jee_main' | 'jee_advanced'
  pyq_month?: 'january' | 'april'
  pyq_shift?: string // e.g. "jan_s1", "paper_1"
  source: 'original' | 'pyq' | 'adapted'
  tags?: string[]
  verified: boolean
  created_by?: string
  created_at: string
}
