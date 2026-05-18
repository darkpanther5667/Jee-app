'use server'

import fs from 'fs'
import path from 'path'
import { createClient, isSupabaseConfigured } from '@/lib/supabase/server'
import { Question, SubjectType, ClassType, DifficultyType, QuestionType } from '@/types/question'

const MOCK_FILE_PATH = path.join(process.cwd(), 'src', 'app', 'actions', 'mock_questions.json')

// Helper: Seed initial high-quality questions into Mock JSON
const SEED_MOCK_QUESTIONS: Question[] = [
  {
    id: 'mock-q-physics-1',
    subject: 'physics',
    class: '11',
    chapter: 'Kinematics',
    topic: 'Projectile Motion',
    difficulty: 'medium',
    question_type: 'single_correct',
    question_text: 'A ball is projected at angle $\\theta$ with horizontal with speed $u$. The range is maximum when $\\theta = $',
    options: [
      { id: 'A', text: '$30^\\circ$' },
      { id: 'B', text: '$45^\\circ$' },
      { id: 'C', text: '$60^\\circ$' },
      { id: 'D', text: '$90^\\circ$' }
    ],
    correct_answer: { type: 'single', value: 'B' },
    solution_text: 'Range $R = \\frac{u^2 \\sin 2\\theta}{g}$. Maximum when $\\sin 2\\theta = 1$, i.e., $2\\theta = 90^\\circ$, so $\\theta = 45^\\circ$.',
    solution_video_url: 'https://www.youtube.com/embed/dQw4w9WgXcQ',
    marks_correct: 4,
    marks_incorrect: -1,
    is_pyq: true,
    pyq_year: 2019,
    pyq_exam: 'jee_main',
    pyq_shift: 'jan_s1',
    pyq_month: 'january',
    source: 'pyq',
    tags: ['Kinematics', 'Projectile Motion', 'Range Formula'],
    verified: true,
    created_at: new Date().toISOString()
  },
  {
    id: 'mock-q-chemistry-2',
    subject: 'chemistry',
    class: '11',
    chapter: 'Chemical Bonding',
    topic: 'Molecular Orbital Theory',
    difficulty: 'hard',
    question_type: 'multiple_correct',
    question_text: 'Which of the following diatomic species are paramagnetic in nature according to Molecular Orbital Theory (MOT)?',
    options: [
      { id: 'A', text: '$B_2$' },
      { id: 'B', text: '$C_2$' },
      { id: 'C', text: '$O_2$' },
      { id: 'D', text: '$N_2^{2-}$' }
    ],
    correct_answer: { type: 'multiple', value: ['A', 'C', 'D'] },
    solution_text: 'According to Molecular Orbital Theory:\n- $B_2$ has 10 electrons: $\\sigma_{1s}^2 \\sigma_{1s}^{*2} \\sigma_{2s}^2 \\sigma_{2s}^{*2} (\\pi_{2p_x}^1 = \\pi_{2p_y}^1)$. It has 2 unpaired electrons $\\rightarrow$ **Paramagnetic**.\n- $C_2$ has 12 electrons: $\\sigma_{1s}^2 \\sigma_{1s}^{*2} \\sigma_{2s}^2 \\sigma_{2s}^{*2} (\\pi_{2p_x}^2 = \\pi_{2p_y}^2)$. It has 0 unpaired electrons $\\rightarrow$ **Diamagnetic**.\n- $O_2$ has 16 electrons: ... $(\\pi_{2p_x}^{*1} = \\pi_{2p_y}^{*1})$. It has 2 unpaired electrons in antibonding orbitals $\\rightarrow$ **Paramagnetic**.\n- $N_2^{2-}$ has 16 electrons (isoelectronic to $O_2$) $\\rightarrow$ **Paramagnetic**.',
    marks_correct: 4,
    marks_incorrect: -2,
    is_pyq: true,
    pyq_year: 2022,
    pyq_exam: 'jee_advanced',
    pyq_month: 'january',
    pyq_shift: 'paper_1',
    source: 'pyq',
    tags: ['MOT', 'Chemical Bonding', 'Paramagnetism'],
    verified: true,
    created_at: new Date().toISOString()
  },
  {
    id: 'mock-q-math-3',
    subject: 'mathematics',
    class: '12',
    chapter: 'Integration',
    topic: 'Definite Integrals',
    difficulty: 'hard',
    question_type: 'numerical',
    question_text: 'Evaluate the definite integral:\n$$I = \\int_0^{\\pi} x \\sin^2 x \\cos^4 x \\, dx$$\nFind the value of $\\frac{32}{\\pi^2} I$.',
    correct_answer: { type: 'numerical', value: 2 },
    solution_text: 'Using the reflection property $\\int_0^a f(x)\\,dx = \\int_0^a f(a-x)\\,dx$:\n$$I = \\int_0^{\\pi} (\\pi-x) \\sin^2 x \\cos^4 x \\, dx$$\nAdding these two equations:\n$$2I = \\pi \\int_0^{\\pi} \\sin^2 x \\cos^4 x \\, dx = 2\\pi \\int_0^{\\pi/2} \\sin^2 x \\cos^4 x \\, dx$$\n$$I = \\pi \\int_0^{\\pi/2} \\sin^2 x \\cos^4 x \\, dx$$\nApplying Wallis Definite Integral Formula:\n$$\\int_0^{\\pi/2} \\sin^2 x \\cos^4 x \\, dx = \\frac{1 \\cdot (3 \\cdot 1)}{6 \\cdot 4 \\cdot 2} \\frac{\\pi}{2} = \\frac{\\pi}{32}$$\n$$I = \\pi \\left(\\frac{\\pi}{32}\\right) = \\frac{\\pi^2}{32}$$\nTherefore, we solve:\n$$\\frac{32}{\\pi^2} I = \\frac{32}{\\pi^2} \\left(\\frac{\\pi^2}{32}\\right) = 2$$\nHence, the correct answer is **2**.',
    marks_correct: 4,
    marks_incorrect: 0,
    is_pyq: false,
    source: 'original',
    tags: ['Integration', 'Definite Integrals', 'Wallis Formula'],
    verified: true,
    created_at: new Date().toISOString()
  }
]

// Internal helper to read mock questions JSON
function readMockQuestions(): Question[] {
  try {
    if (!fs.existsSync(MOCK_FILE_PATH)) {
      // Seed initial questions
      fs.writeFileSync(MOCK_FILE_PATH, JSON.stringify(SEED_MOCK_QUESTIONS, null, 2), 'utf-8')
      return SEED_MOCK_QUESTIONS
    }
    const data = fs.readFileSync(MOCK_FILE_PATH, 'utf-8')
    return JSON.parse(data)
  } catch {
    return SEED_MOCK_QUESTIONS
  }
}

// Internal helper to write mock questions JSON
function writeMockQuestions(questions: Question[]) {
  try {
    fs.writeFileSync(MOCK_FILE_PATH, JSON.stringify(questions, null, 2), 'utf-8')
  } catch (error) {
    console.error('Error writing mock questions file:', error)
  }
}

// 1. GET QUESTIONS (Filtered & Paginated)
export async function getQuestionsAction(filters?: {
  subject?: SubjectType
  class?: ClassType
  chapter?: string
  difficulty?: DifficultyType
  question_type?: QuestionType
  is_pyq?: boolean
  verified?: boolean
  searchQuery?: string
  pyq_exam?: 'jee_main' | 'jee_advanced'
  pyq_year?: number
  pyq_month?: 'january' | 'april'
  pyq_shift?: string
  topic?: string
}) {
  if (!isSupabaseConfigured) {
    let mockList = readMockQuestions()

    if (filters) {
      if (filters.subject) mockList = mockList.filter(q => q.subject === filters.subject)
      if (filters.class) mockList = mockList.filter(q => q.class === filters.class)
      if (filters.chapter) mockList = mockList.filter(q => q.chapter.toLowerCase().includes(filters.chapter!.toLowerCase()))
      if (filters.difficulty) mockList = mockList.filter(q => q.difficulty === filters.difficulty)
      if (filters.question_type) mockList = mockList.filter(q => q.question_type === filters.question_type)
      if (filters.is_pyq !== undefined) mockList = mockList.filter(q => q.is_pyq === filters.is_pyq)
      if (filters.verified !== undefined) mockList = mockList.filter(q => q.verified === filters.verified)
      if (filters.searchQuery) {
        const query = filters.searchQuery.toLowerCase()
        mockList = mockList.filter(q => 
          q.question_text.toLowerCase().includes(query) || 
          q.chapter.toLowerCase().includes(query) ||
          (q.topic && q.topic.toLowerCase().includes(query))
        )
      }
      if (filters.pyq_exam) mockList = mockList.filter(q => q.pyq_exam === filters.pyq_exam)
      if (filters.pyq_year) mockList = mockList.filter(q => q.pyq_year === filters.pyq_year)
      if (filters.pyq_shift) mockList = mockList.filter(q => q.pyq_shift === filters.pyq_shift)
      if (filters.pyq_month) mockList = mockList.filter(q => q.pyq_month === filters.pyq_month)
      if (filters.topic) mockList = mockList.filter(q => q.topic?.toLowerCase().includes(filters.topic!.toLowerCase()))
    }

    return { success: true, questions: mockList }
  }

  const supabase = createClient()
  try {
    let query = supabase.from('questions').select('*').order('created_at', { ascending: false })

    if (filters) {
      if (filters.subject) query = query.eq('subject', filters.subject)
      if (filters.class) query = query.eq('class', filters.class)
      if (filters.chapter) query = query.ilike('chapter', `%${filters.chapter}%`)
      if (filters.difficulty) query = query.eq('difficulty', filters.difficulty)
      if (filters.question_type) query = query.eq('question_type', filters.question_type)
      if (filters.is_pyq !== undefined) query = query.eq('is_pyq', filters.is_pyq)
      if (filters.verified !== undefined) query = query.eq('verified', filters.verified)
      if (filters.searchQuery) {
        const q = filters.searchQuery
        query = query.or(`question_text.ilike.%${q}%,chapter.ilike.%${q}%,topic.ilike.%${q}%`)
      }
      if (filters.pyq_exam) query = query.eq('pyq_exam', filters.pyq_exam)
      if (filters.pyq_year) query = query.eq('pyq_year', filters.pyq_year)
      if (filters.pyq_shift) query = query.eq('pyq_shift', filters.pyq_shift)
      if (filters.pyq_month) query = query.eq('pyq_month', filters.pyq_month)
      if (filters.topic) query = query.ilike('topic', `%${filters.topic}%`)
    }

    const { data, error } = await query
    if (error) throw error

    return { success: true, questions: (data as Question[]) || [] }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to fetch questions.', questions: [] }
  }
}

// 2. GET QUESTION BY ID
export async function getQuestionByIdAction(id: string) {
  if (!isSupabaseConfigured) {
    const mockList = readMockQuestions()
    const question = mockList.find(q => q.id === id)
    if (!question) {
      return { success: false, error: 'Question not found.' }
    }
    return { success: true, question }
  }

  const supabase = createClient()
  try {
    const { data, error } = await supabase
      .from('questions')
      .select('*')
      .eq('id', id)
      .single()

    if (error) throw error

    return { success: true, question: data as Question }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to fetch question details.' }
  }
}

// 3. CREATE QUESTION
export async function createQuestionAction(questionData: Omit<Question, 'id' | 'created_at' | 'verified'>) {
  if (!isSupabaseConfigured) {
    const mockList = readMockQuestions()
    const newQuestion: Question = {
      ...questionData,
      id: `mock-q-${Date.now()}`,
      verified: true, // Sandbox mode verifies everything immediately
      created_at: new Date().toISOString()
    }

    mockList.unshift(newQuestion)
    writeMockQuestions(mockList)

    return { success: true, question: newQuestion }
  }

  const supabase = createClient()
  try {
    const { data: { user } } = await supabase.auth.getUser()
    const userId = user?.id || null

    const { data, error } = await supabase
      .from('questions')
      .insert({
        ...questionData,
        created_by: userId,
        verified: false // Requires admin verification trigger
      })
      .select()
      .single()

    if (error) throw error

    return { success: true, question: data as Question }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to insert question.' }
  }
}

// 4. UPDATE QUESTION
export async function updateQuestionAction(id: string, questionData: Partial<Question>) {
  if (!isSupabaseConfigured) {
    const mockList = readMockQuestions()
    const index = mockList.findIndex(q => q.id === id)
    if (index === -1) {
      return { success: false, error: 'Question not found.' }
    }

    const updatedQuestion: Question = {
      ...mockList[index],
      ...questionData,
      // Retain unchangeables
      id: mockList[index].id,
      created_at: mockList[index].created_at
    }

    mockList[index] = updatedQuestion
    writeMockQuestions(mockList)

    return { success: true, question: updatedQuestion }
  }

  const supabase = createClient()
  try {
    const { data, error } = await supabase
      .from('questions')
      .update(questionData)
      .eq('id', id)
      .select()
      .single()

    if (error) throw error

    return { success: true, question: data as Question }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to update question.' }
  }
}

// 5. DELETE QUESTION
export async function deleteQuestionAction(id: string) {
  if (!isSupabaseConfigured) {
    const mockList = readMockQuestions()
    const filteredList = mockList.filter(q => q.id !== id)
    if (filteredList.length === mockList.length) {
      return { success: false, error: 'Question not found.' }
    }

    writeMockQuestions(filteredList)
    return { success: true }
  }

  const supabase = createClient()
  try {
    const { error } = await supabase
      .from('questions')
      .delete()
      .eq('id', id)

    if (error) throw error

    return { success: true }
  } catch (error) {
    const err = error as { message?: string }
    return { success: false, error: err.message || 'Failed to delete question.' }
  }
}

export async function seedMockQuestionsAction() {
  if (!isSupabaseConfigured) {
    try {
      writeMockQuestions(SEED_MOCK_QUESTIONS)
      return { success: true, count: SEED_MOCK_QUESTIONS.length, error: undefined, message: 'Seeded mock questions successfully!' }
    } catch {
      return { success: false, count: 0, error: 'Failed to seed mock questions.' }
    }
  }

  // Real mode seeding could upload sample questions linked to auth.uid()
  return { success: true, count: 0, error: undefined, message: 'Supabase is online. Seeding only operates in sandbox mode.' }
}
