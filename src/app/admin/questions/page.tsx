'use client'

import React, { useState, useEffect } from 'react'
import { 
  getQuestionsAction, 
  createQuestionAction, 
  updateQuestionAction, 
  deleteQuestionAction,
  seedMockQuestionsAction 
} from '@/app/actions/question'
import { toggleQuestionVerifiedAction } from '@/app/actions/admin'
import { PYQ_MONTHS, JEE_MAIN_SHIFTS, JEE_ADVANCED_SHIFTS } from '@/constants/pyq'
import { Question, SubjectType, ClassType, DifficultyType, QuestionType, CorrectAnswer, QuestionOption } from '@/types/question'
import QuestionCard from '@/components/test/QuestionCard'
import { 
  Plus, 
  Search, 
  Edit3, 
  Trash2, 
  RefreshCw, 
  X, 
  Check, 
  HelpCircle,
  Sparkles, 
  ArrowLeft, 
  AlertCircle
} from 'lucide-react'

export default function AdminQuestionsPage() {
  // Lists State
  const [questions, setQuestions] = useState<Question[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [successMsg, setSuccessMsg] = useState<string | null>(null)

  // Filters State
  const [subjectFilter, setSubjectFilter] = useState<SubjectType | 'all'>('all')
  const [difficultyFilter, setDifficultyFilter] = useState<DifficultyType | 'all'>('all')
  const [classFilter, setClassFilter] = useState<ClassType | 'all'>('all')
  const [searchQuery, setSearchQuery] = useState('')
  const [verifiedFilter, setVerifiedFilter] = useState<'all' | 'verified' | 'pending'>('all')
  const [pyqOnlyFilter, setPyqOnlyFilter] = useState(false)

  // Editor Workspace State
  const [editorOpen, setEditorOpen] = useState(false)
  const [editingQuestionId, setEditingQuestionId] = useState<string | null>(null)

  // Editor Form Fields
  const [subject, setSubject] = useState<SubjectType>('physics')
  const [classVal, setClassVal] = useState<ClassType>('11')
  const [chapter, setChapter] = useState('')
  const [topic, setTopic] = useState('')
  const [difficulty, setDifficulty] = useState<DifficultyType>('medium')
  const [questionType, setQuestionType] = useState<QuestionType>('single_correct')
  const [questionText, setQuestionText] = useState('')
  const [questionImageUrl, setQuestionImageUrl] = useState('')
  
  // MCQ Options State
  const [optionA, setOptionA] = useState('')
  const [optionB, setOptionB] = useState('')
  const [optionC, setOptionC] = useState('')
  const [optionD, setOptionD] = useState('')
  
  // Correct Answer State
  const [correctSingle, setCorrectSingle] = useState('A')
  const [correctMultiple, setCorrectMultiple] = useState<string[]>([])
  const [correctNumerical, setCorrectNumerical] = useState('')
  
  const [solutionText, setSolutionText] = useState('')
  const [solutionImageUrl, setSolutionImageUrl] = useState('')
  const [solutionVideoUrl, setSolutionVideoUrl] = useState('')
  const [marksCorrect, setMarksCorrect] = useState(4)
  const [marksIncorrect, setMarksIncorrect] = useState(-1)
  
  // PYQ Settings
  const [isPyq, setIsPyq] = useState(false)
  const [pyqYear, setPyqYear] = useState(2025)
  const [pyqExam, setPyqExam] = useState<'jee_main' | 'jee_advanced'>('jee_main')
  const [pyqShift, setPyqShift] = useState('')
  const [pyqMonth, setPyqMonth] = useState<'january' | 'april' | ''>('')
  const [verified, setVerified] = useState(true)
  
  const [saving, setSaving] = useState(false)

  // Load Questions initially and on filter changes
  useEffect(() => {
    loadQuestions()
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [subjectFilter, difficultyFilter, classFilter, searchQuery, verifiedFilter, pyqOnlyFilter])

  const loadQuestions = async () => {
    setLoading(true)
    setError(null)
    try {
      const filters: Record<string, string | boolean> = {}
      if (subjectFilter !== 'all') filters.subject = subjectFilter
      if (difficultyFilter !== 'all') filters.difficulty = difficultyFilter
      if (classFilter !== 'all') filters.class = classFilter
      if (searchQuery.trim() !== '') filters.searchQuery = searchQuery
      if (pyqOnlyFilter) filters.is_pyq = true

      const result = await getQuestionsAction(filters)
      if (result.success) {
        let list = result.questions ?? []
        if (verifiedFilter === 'verified') list = list.filter(q => q.verified)
        if (verifiedFilter === 'pending') list = list.filter(q => !q.verified)
        setQuestions(list)
      } else {
        setError(result.error || 'Failed to fetch questions.')
      }
    } catch {
      setError('An error occurred loading questions.')
    } finally {
      setLoading(false)
    }
  }

  // Pre-seed mock data trigger
  const handleSeedMockData = async () => {
    if (!confirm('Are you sure you want to seed default mock questions? This will restore the Physics, Chemistry, and Math questions.')) {
      return
    }
    setLoading(true)
    try {
      const result = await seedMockQuestionsAction()
      if (result.success) {
        setSuccessMsg(result.message || 'Seeded mock questions successfully!')
        loadQuestions()
      } else {
        setError(result.error || 'Failed to seed mock questions.')
      }
    } catch {
      setError('An error occurred during seeding.')
    } finally {
      setLoading(false)
    }
  }

  // Delete Question handler
  const handleDeleteQuestion = async (id: string) => {
    if (!confirm('Are you sure you want to permanently delete this question? This action is irreversible.')) {
      return
    }
    try {
      const result = await deleteQuestionAction(id)
      if (result.success) {
        setSuccessMsg('Question deleted successfully.')
        loadQuestions()
      } else {
        setError(result.error || 'Failed to delete question.')
      }
    } catch {
      setError('An error occurred while deleting the question.')
    }
  }

  // Open Editor for Creating New
  const handleOpenCreate = () => {
    setEditingQuestionId(null)
    setSubject('physics')
    setClassVal('11')
    setChapter('')
    setTopic('')
    setDifficulty('medium')
    setQuestionType('single_correct')
    setQuestionText('')
    setQuestionImageUrl('')
    setOptionA('')
    setOptionB('')
    setOptionC('')
    setOptionD('')
    setCorrectSingle('A')
    setCorrectMultiple([])
    setCorrectNumerical('')
    setSolutionText('')
    setSolutionImageUrl('')
    setSolutionVideoUrl('')
    setMarksCorrect(4)
    setMarksIncorrect(-1)
    setIsPyq(false)
    setPyqYear(2025)
    setPyqExam('jee_main')
    setPyqShift('')
    setPyqMonth('')
    setVerified(true)
    
    setEditorOpen(true)
  }

  // Open Editor for Editing Existing
  const handleOpenEdit = (q: Question) => {
    setEditingQuestionId(q.id)
    setSubject(q.subject)
    setClassVal(q.class)
    setChapter(q.chapter)
    setTopic(q.topic || '')
    setDifficulty(q.difficulty)
    setQuestionType(q.question_type)
    setQuestionText(q.question_text)
    setQuestionImageUrl(q.question_image_url || '')
    
    // MCQ Options
    if (q.options && q.options.length >= 4) {
      setOptionA(q.options[0].text)
      setOptionB(q.options[1].text)
      setOptionC(q.options[2].text)
      setOptionD(q.options[3].text)
    } else {
      setOptionA('')
      setOptionB('')
      setOptionC('')
      setOptionD('')
    }

    // Correct Answer parsing
    if (q.question_type === 'single_correct') {
      setCorrectSingle(String(q.correct_answer.value))
    } else if (q.question_type === 'multiple_correct' && Array.isArray(q.correct_answer.value)) {
      setCorrectMultiple(q.correct_answer.value)
    } else if (q.question_type === 'numerical') {
      setCorrectNumerical(String(q.correct_answer.value))
    }

    setSolutionText(q.solution_text || '')
    setSolutionImageUrl(q.solution_image_url || '')
    setSolutionVideoUrl(q.solution_video_url || '')
    setMarksCorrect(q.marks_correct)
    setMarksIncorrect(q.marks_incorrect)
    setIsPyq(q.is_pyq)
    setPyqYear(q.pyq_year || 2025)
    setPyqExam(q.pyq_exam || 'jee_main')
    setPyqShift(q.pyq_shift || '')
    setPyqMonth(q.pyq_month || '')
    setVerified(q.verified)

    setEditorOpen(true)
  }

  // Multi-choice correct answer toggling
  const handleToggleMultipleCorrect = (optId: string) => {
    if (correctMultiple.includes(optId)) {
      setCorrectMultiple(correctMultiple.filter(id => id !== optId))
    } else {
      setCorrectMultiple([...correctMultiple, optId].sort())
    }
  }

  // Handle Save (Create / Update)
  const handleSaveQuestion = async (e: React.FormEvent) => {
    e.preventDefault()
    setError(null)
    setSuccessMsg(null)

    if (chapter.trim() === '') {
      setError('Chapter name is required.')
      return
    }
    if (questionText.trim() === '') {
      setError('Question statement cannot be empty.')
      return
    }

    // Correct answer validation
    let finalAnswer: CorrectAnswer
    if (questionType === 'single_correct') {
      finalAnswer = { type: 'single', value: correctSingle }
    } else if (questionType === 'multiple_correct') {
      if (correctMultiple.length === 0) {
        setError('Please select at least one correct option for Multiple Correct MCQ.')
        return
      }
      finalAnswer = { type: 'multiple', value: correctMultiple }
    } else {
      if (correctNumerical.trim() === '') {
        setError('Please provide a correct numerical answer.')
        return
      }
      finalAnswer = { type: 'numerical', value: parseFloat(correctNumerical) }
    }

    // MCQ Options structuring
    let optionsList: QuestionOption[] | undefined = undefined
    if (questionType === 'single_correct' || questionType === 'multiple_correct') {
      if (!optionA || !optionB || !optionC || !optionD) {
        setError('Options A, B, C, and D are all required for MCQ question types.')
        return
      }
      optionsList = [
        { id: 'A', text: optionA },
        { id: 'B', text: optionB },
        { id: 'C', text: optionC },
        { id: 'D', text: optionD }
      ]
    }

    const questionPayload = {
      subject,
      class: classVal,
      chapter,
      topic: topic || undefined,
      difficulty,
      question_type: questionType,
      question_text: questionText,
      question_image_url: questionImageUrl || undefined,
      options: optionsList,
      correct_answer: finalAnswer,
      solution_text: solutionText || undefined,
      solution_image_url: solutionImageUrl || undefined,
      solution_video_url: solutionVideoUrl || undefined,
      marks_correct: Number(marksCorrect),
      marks_incorrect: Number(marksIncorrect),
      is_pyq: isPyq,
      pyq_year: isPyq ? Number(pyqYear) : undefined,
      pyq_exam: isPyq ? pyqExam : undefined,
      pyq_shift: isPyq ? pyqShift || undefined : undefined,
      pyq_month: isPyq && pyqMonth ? pyqMonth : undefined,
      source: isPyq ? 'pyq' as const : 'original' as const,
      tags: [chapter, topic].filter(Boolean) as string[],
      verified,
    }

    setSaving(true)
    try {
      let result
      if (editingQuestionId) {
        result = await updateQuestionAction(editingQuestionId, questionPayload)
      } else {
        result = await createQuestionAction(questionPayload)
      }

      if (result.success) {
        setSuccessMsg(editingQuestionId ? 'Question updated successfully!' : 'New question added successfully!')
        setEditorOpen(false)
        loadQuestions()
      } else {
        setError(result.error || 'Failed to save question.')
      }
    } catch {
      setError('An error occurred while saving.')
    } finally {
      setSaving(false)
    }
  }

  // Pre-compiled object for live preview
  const livePreviewQuestion: Question = {
    id: editingQuestionId || 'live-preview-id',
    subject,
    class: classVal,
    chapter: chapter || 'Sample Chapter',
    topic: topic || 'Sample Topic',
    difficulty,
    question_type: questionType,
    question_text: questionText || 'Begin typing in the **Question Statement** box to see live LaTeX rendering. E.g. $e^{i\\pi} + 1 = 0$ or integrals: \n$$\\int_0^\\infty e^{-x^2} dx = \\frac{\\sqrt{\\pi}}{2}$$',
    question_image_url: questionImageUrl || undefined,
    options: (questionType === 'single_correct' || questionType === 'multiple_correct') ? [
      { id: 'A', text: optionA || 'Option A math: $x$' },
      { id: 'B', text: optionB || 'Option B math: $y$' },
      { id: 'C', text: optionC || 'Option C math: $z$' },
      { id: 'D', text: optionD || 'Option D math: $w$' }
    ] : undefined,
    correct_answer: questionType === 'single_correct'
      ? { type: 'single', value: correctSingle }
      : questionType === 'multiple_correct'
      ? { type: 'multiple', value: correctMultiple }
      : { type: 'numerical', value: parseFloat(correctNumerical) || 0 },
    solution_text: solutionText || 'Solution statement preview with math: $\\nabla \\times \\mathbf{E} = -\\frac{\\partial \\mathbf{B}}{\\partial t}$',
    solution_image_url: solutionImageUrl || undefined,
    solution_video_url: solutionVideoUrl || undefined,
    marks_correct: Number(marksCorrect),
    marks_incorrect: Number(marksIncorrect),
    is_pyq: isPyq,
    pyq_year: isPyq ? Number(pyqYear) : undefined,
    pyq_exam: isPyq ? pyqExam : undefined,
    pyq_shift: isPyq ? pyqShift || undefined : undefined,
    pyq_month: isPyq && pyqMonth ? pyqMonth : undefined,
    source: isPyq ? 'pyq' : 'original',
    verified,
    created_at: new Date().toISOString()
  }

  const handleToggleVerified = async (q: Question) => {
    const res = await toggleQuestionVerifiedAction(q.id, !q.verified)
    if (res.success) {
      setSuccessMsg(q.verified ? 'Marked as pending verification.' : 'Question verified.')
      loadQuestions()
    } else {
      setError(res.error || 'Failed to update verification status.')
    }
  }

  // Preview selected state (numerical or options)
  const getLivePreviewSelectedVal = () => {
    if (questionType === 'single_correct') return correctSingle
    if (questionType === 'multiple_correct') return correctMultiple
    return parseFloat(correctNumerical) || null
  }

  return (
    <div className="min-h-screen w-full flex flex-col bg-slate-50 font-sans">
      
      {/* STICKY HEADER */}
      <header className="sticky top-0 z-40 bg-white/80 backdrop-blur-md border-b border-slate-200/80 px-6 py-4 flex items-center justify-between shadow-sm">
        <div className="flex items-center gap-3">
          <div className="h-9 w-9 rounded-xl bg-gradient-to-br from-primary to-blue-700 flex items-center justify-center text-white font-extrabold text-sm shadow-sm">
            CJ
          </div>
          <div>
            <h1 className="font-display font-extrabold text-base tracking-tight text-neutral-title flex items-center gap-2">
              <span>ClearJEE Control Center</span>
              <span className="px-2 py-0.5 text-[9px] font-bold text-amber-700 bg-amber-50 rounded-full border border-amber-200">
                ADMIN CONSOLE
              </span>
            </h1>
          </div>
        </div>

        <div className="flex items-center gap-3">
          <button
            type="button"
            onClick={handleSeedMockData}
            className="px-3.5 py-1.5 text-xs font-bold text-slate-600 hover:text-primary hover:bg-primary-light border border-slate-200 rounded-xl transition-all flex items-center gap-2 active:scale-95"
            title="Seed baseline mock questions for sandbox testing"
          >
            <RefreshCw className="h-4 w-4" />
            <span>Reset Mock Data</span>
          </button>
          
          <button
            type="button"
            onClick={handleOpenCreate}
            className="px-3.5 py-1.5 text-xs font-bold text-white bg-primary hover:bg-primary-dark rounded-xl shadow-sm transition-all flex items-center gap-2 active:scale-95"
          >
            <Plus className="h-4.5 w-4.5" />
            <span>Add Question</span>
          </button>
        </div>
      </header>

      {/* ERROR & SUCCESS TOASTS */}
      <div className="max-w-7xl w-full mx-auto px-6 pt-6">
        {error && (
          <div className="p-4 rounded-xl bg-danger-light border border-danger/10 text-danger text-xs font-semibold flex items-center gap-2 mb-4 animate-slide-up">
            <AlertCircle className="h-4 w-4 shrink-0" />
            <span>{error}</span>
            <button onClick={() => setError(null)} className="ml-auto hover:opacity-75"><X className="h-4 w-4" /></button>
          </div>
        )}
        {successMsg && (
          <div className="p-4 rounded-xl bg-green-50 border border-green-100 text-green-700 text-xs font-semibold flex items-center gap-2 mb-4 animate-slide-up">
            <Check className="h-4 w-4 shrink-0" />
            <span>{successMsg}</span>
            <button onClick={() => setSuccessMsg(null)} className="ml-auto hover:opacity-75"><X className="h-4 w-4" /></button>
          </div>
        )}
      </div>

      {/* CORE DISPLAY (GRID BROWSER VS SPLIT EDITOR) */}
      {!editorOpen ? (
        
        /* ==================== BROWSER VIEW ==================== */
        <main className="max-w-7xl w-full mx-auto p-4 sm:p-6 lg:p-8 flex-grow space-y-6 animate-fade-in">
          
          {/* Dashboard Summary Deck */}
          <div className="bg-white p-6 rounded-3xl border border-slate-200 shadow-sm flex flex-col md:flex-row md:items-center justify-between gap-6">
            <div>
              <h2 className="font-display font-extrabold text-2xl text-neutral-title tracking-tight mb-1">
                Question Bank Manager
              </h2>
              <p className="text-xs text-neutral-desc">
                Seed, filter, view, edit, and delete IIT JEE Main and Advanced questions. Everything renders with lightning-fast KaTeX layout.
              </p>
            </div>
            <div className="flex gap-4">
              <div className="px-5 py-3 bg-slate-50 border border-slate-200 rounded-2xl text-center">
                <span className="block text-xl font-black text-primary">{questions.length}</span>
                <span className="text-[9px] font-bold text-neutral-desc uppercase tracking-wider">Total Questions</span>
              </div>
            </div>
          </div>

          {/* Filters Control Deck */}
          <div className="bg-white p-4 rounded-2xl border border-slate-200 shadow-sm space-y-4">
            
            <div className="flex flex-wrap items-center gap-4">
              {/* Search Bar */}
              <div className="relative flex-grow max-w-md">
                <input
                  type="text"
                  placeholder="Search questions by chapter, topic or formula..."
                  value={searchQuery}
                  onChange={(e: React.ChangeEvent<HTMLInputElement>) => setSearchQuery(e.target.value)}
                  className="w-full pl-10 pr-4 py-2.5 bg-slate-50 hover:bg-slate-100/50 border border-slate-200 focus:bg-white rounded-xl text-xs font-semibold text-neutral-title transition-all placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-primary/10 focus:border-primary"
                />
                <div className="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-400">
                  <Search className="h-4 w-4" />
                </div>
              </div>

              {/* Class Filter */}
              <div className="flex items-center gap-2">
                <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider">Class:</span>
                <select
                  value={classFilter}
                  onChange={(e: React.ChangeEvent<HTMLSelectElement>) => setClassFilter(e.target.value as ClassType | 'all')}
                  className="bg-slate-50 border border-slate-200 rounded-xl px-3 py-2 text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/10"
                >
                  <option value="all">All Classes</option>
                  <option value="11">Class 11th</option>
                  <option value="12">Class 12th</option>
                </select>
              </div>

              {/* Difficulty Filter */}
              <div className="flex items-center gap-2">
                <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider">Diff:</span>
                <select
                  value={difficultyFilter}
                  onChange={(e: React.ChangeEvent<HTMLSelectElement>) => setDifficultyFilter(e.target.value as DifficultyType | 'all')}
                  className="bg-slate-50 border border-slate-200 rounded-xl px-3 py-2 text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/10"
                >
                  <option value="all">All Difficulties</option>
                  <option value="easy">Easy</option>
                  <option value="medium">Medium</option>
                  <option value="hard">Hard</option>
                </select>
              </div>
            </div>

            {/* Subject Filters Pills */}
            <div className="flex items-center gap-2 pt-2 border-t border-slate-100">
              <span className="text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider mr-2">Subject:</span>
              {(['all', 'physics', 'chemistry', 'mathematics'] as const).map((sub) => (
                <button
                  key={sub}
                  type="button"
                  onClick={() => setSubjectFilter(sub)}
                  className={`px-3 py-1.5 rounded-full text-xs font-bold transition-all uppercase tracking-wide border ${
                    subjectFilter === sub
                      ? 'bg-primary border-primary text-white shadow-sm'
                      : 'bg-white border-slate-200 text-neutral-desc hover:bg-slate-50 hover:text-neutral-title'
                  }`}
                >
                  {sub}
                </button>
              ))}
            </div>

            <div className="flex flex-wrap items-center gap-3 pt-2 border-t border-slate-100">
              <span className="text-[10px] font-extrabold uppercase text-neutral-desc">Status:</span>
              {(['all', 'verified', 'pending'] as const).map(v => (
                <button
                  key={v}
                  type="button"
                  onClick={() => setVerifiedFilter(v)}
                  className={`px-3 py-1 rounded-full text-[10px] font-bold border ${
                    verifiedFilter === v ? 'bg-primary text-white border-primary' : 'border-slate-200 text-slate-500'
                  }`}
                >
                  {v}
                </button>
              ))}
              <button
                type="button"
                onClick={() => setPyqOnlyFilter(v => !v)}
                className={`px-3 py-1 rounded-full text-[10px] font-bold border ${
                  pyqOnlyFilter ? 'bg-amber-100 text-amber-800 border-amber-200' : 'border-slate-200 text-slate-500'
                }`}
              >
                PYQ only
              </button>
            </div>
          </div>

          {/* Questions Grid / Table */}
          {loading ? (
            <div className="space-y-4">
              {[1, 2, 3].map((n) => (
                <div key={n} className="h-44 w-full bg-slate-200/60 rounded-3xl animate-pulse" />
              ))}
            </div>
          ) : questions.length === 0 ? (
            <div className="bg-white rounded-3xl border border-slate-200 p-12 text-center max-w-xl mx-auto space-y-4">
              <HelpCircle className="h-12 w-12 text-slate-300 mx-auto" />
              <h4 className="font-display font-bold text-base text-neutral-title">No questions found</h4>
              <p className="text-xs text-neutral-desc max-w-sm mx-auto">
                No questions match the current filter set. Click **Reset Mock Data** at the top right to restore the 3 default sample test questions in memory!
              </p>
            </div>
          ) : (
            <div className="space-y-6">
              {questions.map((q) => (
                <div key={q.id} className="relative group/card">
                  {/* Absolute Edit/Delete Trigger Deck (Hover activated) */}
                  <div className="absolute top-4 right-4 z-10 flex gap-2 opacity-100 md:opacity-0 group-hover/card:opacity-100 transition-opacity">
                    <button
                      type="button"
                      onClick={() => handleOpenEdit(q)}
                      className="p-2 bg-white/90 backdrop-blur border border-slate-200 hover:border-primary/20 hover:bg-primary-light text-primary hover:text-primary rounded-xl transition-all shadow-sm active:scale-95"
                      title="Edit question text & configurations"
                    >
                      <Edit3 className="h-4 w-4" />
                    </button>
                    <button
                      type="button"
                      onClick={() => handleToggleVerified(q)}
                      className="px-2 py-2 bg-white/90 backdrop-blur border border-slate-200 hover:bg-amber-50 text-amber-800 rounded-xl text-[10px] font-bold"
                    >
                      {q.verified ? 'Unverify' : 'Verify'}
                    </button>
                    <button
                      type="button"
                      onClick={() => handleDeleteQuestion(q.id)}
                      className="p-2 bg-white/90 backdrop-blur border border-slate-200 hover:border-danger/10 hover:bg-danger-light text-slate-500 hover:text-danger rounded-xl transition-all shadow-sm active:scale-95"
                      title="Delete question permanently"
                    >
                      <Trash2 className="h-4 w-4" />
                    </button>
                  </div>

                  <QuestionCard question={q} showSolution={true} adminPreview={true} />
                </div>
              ))}
            </div>
          )}

        </main>

      ) : (

        /* ==================== REAL-TIME SANDBOX WORKSPACE ==================== */
        <main className="w-full flex-grow flex flex-col lg:flex-row items-stretch min-h-[calc(100vh-73px)]">
          
          {/* LEFT PANEL: CONFIG & STATEMENT FORM (5/12 width) */}
          <form onSubmit={handleSaveQuestion} className="w-full lg:w-5/12 bg-white border-r border-slate-200 p-6 sm:p-8 space-y-6 overflow-y-auto max-h-[calc(100vh-73px)]">
            
            {/* Header */}
            <div className="flex items-center justify-between pb-4 border-b border-slate-100">
              <button
                type="button"
                onClick={() => setEditorOpen(false)}
                className="flex items-center gap-2 text-xs font-bold text-neutral-desc hover:text-neutral-title transition-all"
              >
                <ArrowLeft className="h-4 w-4" />
                <span>Cancel</span>
              </button>
              <h3 className="font-display font-extrabold text-base text-neutral-title">
                {editingQuestionId ? 'Modify Question' : 'Create Question'}
              </h3>
            </div>

            <div className="space-y-5">
              
              {/* Subject & Class Selectors */}
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Subject
                  </label>
                  <select
                    value={subject}
                    onChange={(e: React.ChangeEvent<HTMLSelectElement>) => setSubject(e.target.value as SubjectType)}
                    className="w-full bg-slate-50 border border-slate-200 rounded-xl px-3 py-2.5 text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  >
                    <option value="physics">Physics</option>
                    <option value="chemistry">Chemistry</option>
                    <option value="mathematics">Mathematics</option>
                  </select>
                </div>

                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Academic Class
                  </label>
                  <select
                    value={classVal}
                    onChange={(e: React.ChangeEvent<HTMLSelectElement>) => setClassVal(e.target.value as ClassType)}
                    className="w-full bg-slate-50 border border-slate-200 rounded-xl px-3 py-2.5 text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  >
                    <option value="11">Class 11th</option>
                    <option value="12">Class 12th</option>
                  </select>
                </div>
              </div>

              {/* Chapter & Topic Inputs */}
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Chapter Name
                  </label>
                  <input
                    type="text"
                    required
                    value={chapter}
                    onChange={(e) => setChapter(e.target.value)}
                    placeholder="e.g. Definite Integrals"
                    className="w-full px-3 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-semibold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary"
                  />
                </div>

                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Topic Title <span className="text-slate-400 font-normal">(Optional)</span>
                  </label>
                  <input
                    type="text"
                    value={topic}
                    onChange={(e) => setTopic(e.target.value)}
                    placeholder="e.g. Wallis Formula"
                    className="w-full px-3 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-semibold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary"
                  />
                </div>
              </div>

              {/* Difficulty & Type Selectors */}
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Difficulty Level
                  </label>
                  <select
                    value={difficulty}
                    onChange={(e: React.ChangeEvent<HTMLSelectElement>) => setDifficulty(e.target.value as DifficultyType)}
                    className="w-full bg-slate-50 border border-slate-200 rounded-xl px-3 py-2.5 text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  >
                    <option value="easy">Easy</option>
                    <option value="medium">Medium</option>
                    <option value="hard">Hard</option>
                  </select>
                </div>

                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Question Format
                  </label>
                  <select
                    value={questionType}
                    onChange={(e: React.ChangeEvent<HTMLSelectElement>) => setQuestionType(e.target.value as QuestionType)}
                    className="w-full bg-slate-50 border border-slate-200 rounded-xl px-3 py-2.5 text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  >
                    <option value="single_correct">Single Correct MCQ</option>
                    <option value="multiple_correct">Multiple Correct MCQ</option>
                    <option value="numerical">Numerical / Decimal</option>
                  </select>
                </div>
              </div>

              {/* Question Text Area */}
              <div>
                <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                  Question Statement <span className="text-slate-400 font-normal normal-case">(Markdown + LaTeX)</span>
                </label>
                <textarea
                  required
                  rows={6}
                  value={questionText}
                  onChange={(e) => setQuestionText(e.target.value)}
                  placeholder="Enter the question. Use $...$ for inline math and $$...$$ for centered equations. E.g. Find $\lim_{x \to 0} \frac{\sin x}{x}$"
                  className="w-full p-4 bg-slate-50 border border-slate-200 rounded-2xl font-mono text-xs text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary"
                />
              </div>

              {/* MCQ Options input grid */}
              {(questionType === 'single_correct' || questionType === 'multiple_correct') && (
                <div className="space-y-3 p-4 bg-slate-50 rounded-2xl border border-slate-100">
                  <span className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Multiple Choice Options (LaTeX allowed)
                  </span>
                  
                  {/* Option A */}
                  <div className="flex items-center gap-3">
                    <span className="w-5 text-xs font-black text-neutral-desc text-center">A</span>
                    <input
                      type="text"
                      required
                      value={optionA}
                      onChange={(e) => setOptionA(e.target.value)}
                      placeholder="e.g. $u^2 \sin 2\theta$"
                      className="w-full px-3 py-2 bg-white border border-slate-200 rounded-xl text-xs font-medium text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                    />
                  </div>

                  {/* Option B */}
                  <div className="flex items-center gap-3">
                    <span className="w-5 text-xs font-black text-neutral-desc text-center">B</span>
                    <input
                      type="text"
                      required
                      value={optionB}
                      onChange={(e) => setOptionB(e.target.value)}
                      placeholder="Option B value"
                      className="w-full px-3 py-2 bg-white border border-slate-200 rounded-xl text-xs font-medium text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                    />
                  </div>

                  {/* Option C */}
                  <div className="flex items-center gap-3">
                    <span className="w-5 text-xs font-black text-neutral-desc text-center">C</span>
                    <input
                      type="text"
                      required
                      value={optionC}
                      onChange={(e) => setOptionC(e.target.value)}
                      placeholder="Option C value"
                      className="w-full px-3 py-2 bg-white border border-slate-200 rounded-xl text-xs font-medium text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                    />
                  </div>

                  {/* Option D */}
                  <div className="flex items-center gap-3">
                    <span className="w-5 text-xs font-black text-neutral-desc text-center">D</span>
                    <input
                      type="text"
                      required
                      value={optionD}
                      onChange={(e) => setOptionD(e.target.value)}
                      placeholder="Option D value"
                      className="w-full px-3 py-2 bg-white border border-slate-200 rounded-xl text-xs font-medium text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                    />
                  </div>
                </div>
              )}

              {/* Correct Answer Selection Panel */}
              <div className="p-4 bg-slate-50 rounded-2xl border border-slate-100">
                <span className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                  Assign Correct Answer
                </span>

                {/* MCQ Single Choice Selector */}
                {questionType === 'single_correct' && (
                  <div className="flex gap-4">
                    {['A', 'B', 'C', 'D'].map(opt => (
                      <button
                        key={opt}
                        type="button"
                        onClick={() => setCorrectSingle(opt)}
                        className={`flex-grow py-2 rounded-xl text-xs font-bold border transition-all ${
                          correctSingle === opt
                            ? 'bg-primary border-primary text-white shadow-sm'
                            : 'bg-white border-slate-200 text-neutral-desc hover:bg-slate-100'
                        }`}
                      >
                        Option {opt}
                      </button>
                    ))}
                  </div>
                )}

                {/* MCQ Multiple Choice Selector */}
                {questionType === 'multiple_correct' && (
                  <div className="flex gap-4">
                    {['A', 'B', 'C', 'D'].map(opt => {
                      const selected = correctMultiple.includes(opt)
                      return (
                        <button
                          key={opt}
                          type="button"
                          onClick={() => handleToggleMultipleCorrect(opt)}
                          className={`flex-grow py-2 rounded-xl text-xs font-bold border transition-all ${
                            selected
                              ? 'bg-primary border-primary text-white shadow-sm'
                              : 'bg-white border-slate-200 text-neutral-desc hover:bg-slate-100'
                          }`}
                        >
                          {selected && '✓'} Option {opt}
                        </button>
                      )
                    })}
                  </div>
                )}

                {/* Numerical Selector */}
                {questionType === 'numerical' && (
                  <input
                    type="number"
                    step="any"
                    required
                    value={correctNumerical}
                    onChange={(e) => setCorrectNumerical(e.target.value)}
                    placeholder="Enter the correct number (e.g. 2 or 5.24)"
                    className="w-full px-3 py-2 bg-white border border-slate-200 rounded-xl text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  />
                )}
              </div>

              {/* Scoring allocation */}
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Marks on Correct
                  </label>
                  <input
                    type="number"
                    required
                    value={marksCorrect}
                    onChange={(e) => setMarksCorrect(parseInt(e.target.value))}
                    className="w-full px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  />
                </div>

                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Negative marking
                  </label>
                  <input
                    type="number"
                    required
                    value={marksIncorrect}
                    onChange={(e) => setMarksIncorrect(parseInt(e.target.value))}
                    className="w-full px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  />
                </div>
              </div>

              {/* Optional Images / Explainer URLs */}
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Question Image URL <span className="text-slate-400 font-normal lowercase">(Optional)</span>
                  </label>
                  <input
                    type="url"
                    value={questionImageUrl}
                    onChange={(e) => setQuestionImageUrl(e.target.value)}
                    placeholder="https://cdn.com/q-image.png"
                    className="w-full px-3 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-semibold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  />
                </div>

                <div>
                  <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                    Video Explanation Embed <span className="text-slate-400 font-normal lowercase">(Optional)</span>
                  </label>
                  <input
                    type="url"
                    value={solutionVideoUrl}
                    onChange={(e) => setSolutionVideoUrl(e.target.value)}
                    placeholder="https://www.youtube.com/embed/..."
                    className="w-full px-3 py-2.5 bg-slate-50 border border-slate-200 rounded-xl text-xs font-semibold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
                  />
                </div>
              </div>

              {/* Solution Text Area */}
              <div>
                <label className="block text-[10px] font-extrabold uppercase tracking-wider text-neutral-desc mb-2">
                  Step-by-step Solution <span className="text-slate-400 font-normal normal-case">(LaTeX allowed)</span>
                </label>
                <textarea
                  rows={4}
                  value={solutionText}
                  onChange={(e) => setSolutionText(e.target.value)}
                  placeholder="Enter the mathematical proof / steps. Renders instantly in the preview drawer."
                  className="w-full p-4 bg-slate-50 border border-slate-200 rounded-2xl font-mono text-xs text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20 focus:border-primary"
                />
              </div>

              <label className="flex items-center gap-3 cursor-pointer p-4 bg-slate-50 rounded-2xl border border-slate-100">
                <input
                  type="checkbox"
                  checked={verified}
                  onChange={e => setVerified(e.target.checked)}
                  className="h-4 w-4 text-primary rounded"
                />
                <span className="text-xs font-extrabold uppercase text-neutral-title">
                  Verified (visible in student-facing bank)
                </span>
              </label>

              {/* PYQ Checklist & Configurations */}
              <div className="p-4 bg-slate-50 rounded-2xl border border-slate-100 space-y-4">
                <label className="flex items-center gap-3 cursor-pointer">
                  <input
                    type="checkbox"
                    checked={isPyq}
                    onChange={(e) => setIsPyq(e.target.checked)}
                    className="h-4.5 w-4.5 text-primary border-slate-300 rounded focus:ring-primary"
                  />
                  <div>
                    <span className="text-xs font-extrabold uppercase tracking-wider text-neutral-title">Flag as Previous Year Question (PYQ)</span>
                    <span className="block text-[10px] text-neutral-desc mt-0.5">Toggle this to categorise inside Year and Shift mocks.</span>
                  </div>
                </label>

                {isPyq && (
                  <div className="grid grid-cols-3 gap-3 pt-2 border-t border-slate-200/60 animate-fade-in">
                    <div>
                      <label className="block text-[9px] font-extrabold uppercase text-neutral-desc mb-1">Year</label>
                      <input
                        type="number"
                        value={pyqYear}
                        onChange={(e) => setPyqYear(parseInt(e.target.value))}
                        className="w-full px-2 py-1.5 bg-white border border-slate-200 rounded-lg text-xs font-bold text-neutral-title"
                      />
                    </div>
                    <div>
                      <label className="block text-[9px] font-extrabold uppercase text-neutral-desc mb-1">Exam</label>
                      <select
                        value={pyqExam}
                        onChange={(e: React.ChangeEvent<HTMLSelectElement>) => setPyqExam(e.target.value as 'jee_main' | 'jee_advanced')}
                        className="w-full px-2 py-1.5 bg-white border border-slate-200 rounded-lg text-[10px] font-bold text-neutral-title"
                      >
                        <option value="jee_main">JEE Main</option>
                        <option value="jee_advanced">JEE Advanced</option>
                      </select>
                    </div>
                    <div>
                      <label className="block text-[9px] font-extrabold uppercase text-neutral-desc mb-1">Month</label>
                      <select
                        value={pyqMonth}
                        onChange={e => setPyqMonth(e.target.value as '' | 'january' | 'april')}
                        className="w-full px-2 py-1.5 bg-white border border-slate-200 rounded-lg text-xs font-bold mb-2"
                      >
                        <option value="">—</option>
                        {PYQ_MONTHS.map(m => (
                          <option key={m.value} value={m.value}>{m.label}</option>
                        ))}
                      </select>
                      <label className="block text-[9px] font-extrabold uppercase text-neutral-desc mb-1">Shift</label>
                      <select
                        value={pyqShift}
                        onChange={e => setPyqShift(e.target.value)}
                        className="w-full px-2 py-1.5 bg-white border border-slate-200 rounded-lg text-xs font-bold"
                      >
                        <option value="">—</option>
                        {(pyqExam === 'jee_advanced' ? JEE_ADVANCED_SHIFTS : JEE_MAIN_SHIFTS).map(s => (
                          <option key={s.value} value={s.value}>{s.label}</option>
                        ))}
                      </select>
                    </div>
                  </div>
                )}
              </div>

            </div>

            {/* Save Buttons */}
            <div className="pt-6 border-t border-slate-100 mt-6 flex gap-3">
              <button
                type="button"
                onClick={() => setEditorOpen(false)}
                className="w-1/3 border border-slate-200 hover:bg-slate-50 text-slate-600 font-bold py-3.5 px-4 rounded-xl text-xs transition-all flex items-center justify-center"
              >
                Cancel
              </button>
              <button
                type="submit"
                disabled={saving}
                className="w-2/3 bg-primary hover:bg-primary-dark disabled:bg-slate-300 text-white font-bold py-3.5 px-4 rounded-xl text-xs transition-all shadow-premium flex items-center justify-center gap-2 hover:translate-y-[-1px] active:translate-y-[1px]"
              >
                {saving ? 'Saving to Database...' : editingQuestionId ? 'Update & Finalise' : 'Create & Verify'}
              </button>
            </div>

          </form>

          {/* RIGHT PANEL: LIVE DYNAMIC PREVIEW SANDBOX (7/12 width) */}
          <section className="w-full lg:w-7/12 bg-slate-100/60 p-6 sm:p-8 flex flex-col justify-between overflow-y-auto max-h-[calc(100vh-73px)]">
            
            <div className="space-y-4">
              <div className="flex items-center justify-between pb-3 border-b border-slate-200">
                <div className="flex items-center gap-2 text-xs font-extrabold uppercase text-neutral-desc tracking-wider">
                  <Sparkles className="h-4.5 w-4.5 text-accent animate-pulse" />
                  <span>Real-time Interactive Preview</span>
                </div>
                <span className="text-[10px] font-bold text-slate-400">
                  Compiles LaTeX in &lt; 5ms
                </span>
              </div>

              {/* Renders the actual interactive card */}
              <div className="shadow-premium rounded-3xl border border-slate-200/50 bg-white">
                <QuestionCard 
                  question={livePreviewQuestion} 
                  showSolution={true} 
                  adminPreview={true}
                  selectedAnswer={getLivePreviewSelectedVal()}
                />
              </div>

              {/* Helpful LaTeX formatting guide drawer */}
              <div className="bg-white rounded-2xl border border-slate-200 p-4 shadow-sm text-xs text-neutral-desc space-y-2">
                <strong className="text-neutral-title block mb-1">📐 KaTeX Mathematical Quick-Sheet:</strong>
                <ul className="list-disc pl-4 space-y-1.5 font-medium leading-relaxed">
                  <li>Use <code className="bg-slate-50 px-1 py-0.5 rounded text-primary font-mono">$x^2$</code> to write superscripts like $x^2$.</li>
                  <li>Use <code className="bg-slate-50 px-1 py-0.5 rounded text-primary font-mono">{`\\frac{a}{b}`}</code> to render fractions like {`$\\frac{a}{b}$`}.</li>
                  <li>Use <code className="bg-slate-50 px-1 py-0.5 rounded text-primary font-mono">\int_a^b</code> for integral bounds like $\int_a^b$.</li>
                  <li>Greek letters: use <code className="bg-slate-50 px-1 py-0.5 rounded text-primary font-mono">\theta, \pi, \alpha, \beta</code> for $\theta, \pi, \alpha, \beta$.</li>
                  <li>Use double dollars <code className="bg-slate-50 px-1 py-0.5 rounded text-primary font-mono">$$\int_0^\pi x\,dx$$</code> for block formulas.</li>
                </ul>
              </div>
            </div>

            <div className="pt-6 text-center text-[10px] text-slate-400 font-medium">
              ClearJEE © 2026 Admin Engine. Renders standard mathematical fonts accurately.
            </div>

          </section>

        </main>
      )}

    </div>
  )
}
