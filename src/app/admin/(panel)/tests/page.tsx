'use client'

import React, { useEffect, useState } from 'react'
import Link from 'next/link'
import {
  getAdminTestsAction,
  createAdminTestAction,
  deleteAdminTestAction,
  getAdminQuestionsForPickerAction,
} from '@/app/actions/admin'
import { Test } from '@/types/test'
import { Question } from '@/types/question'
import { Plus, Trash2, Play, AlertCircle, Check, X } from 'lucide-react'

export default function AdminTestsPage() {
  const [tests, setTests] = useState<Test[]>([])
  const [questions, setQuestions] = useState<Question[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [success, setSuccess] = useState<string | null>(null)
  const [creating, setCreating] = useState(false)

  const [title, setTitle] = useState('')
  const [testType, setTestType] = useState<Test['test_type']>('full_mock')
  const [examPattern, setExamPattern] = useState<Test['exam_pattern']>('jee_main')
  const [duration, setDuration] = useState(180)
  const [selectedIds, setSelectedIds] = useState<string[]>([])
  const [scheduledAt, setScheduledAt] = useState('')
  const [isFree, setIsFree] = useState(true)

  const load = async () => {
    setLoading(true)
    const [tRes, qRes] = await Promise.all([
      getAdminTestsAction(),
      getAdminQuestionsForPickerAction({ verified: true }),
    ])
    if (tRes.success && tRes.tests) setTests(tRes.tests)
    if (qRes.success && qRes.questions) setQuestions(qRes.questions)
    setLoading(false)
  }

  useEffect(() => {
    load()
  }, [])

  const toggleQuestion = (id: string) => {
    setSelectedIds(prev =>
      prev.includes(id) ? prev.filter(x => x !== id) : [...prev, id]
    )
  }

  const handleCreate = async (e: React.FormEvent) => {
    e.preventDefault()
    setCreating(true)
    setError(null)
    const res = await createAdminTestAction({
      title,
      test_type: testType,
      exam_pattern: examPattern,
      duration_minutes: duration,
      question_ids: selectedIds,
      is_scheduled: !!scheduledAt,
      scheduled_at: scheduledAt || undefined,
      is_free: isFree,
    })
    setCreating(false)
    if (res.success) {
      setSuccess('Test created successfully.')
      setTitle('')
      setSelectedIds([])
      setScheduledAt('')
      load()
    } else {
      setError(res.error || 'Failed to create test.')
    }
  }

  const handleDelete = async (id: string) => {
    if (!confirm('Delete this test configuration?')) return
    const res = await deleteAdminTestAction(id)
    if (res.success) {
      setSuccess('Test removed.')
      load()
    } else {
      setError(res.error || 'Delete failed.')
    }
  }

  return (
    <div className="p-6 sm:p-8 space-y-6 max-w-6xl">
      <header>
        <h1 className="font-display font-extrabold text-2xl text-neutral-title">Tests & scheduling</h1>
        <p className="text-sm text-neutral-desc mt-1">
          Build mock tests from verified questions and publish schedules.
        </p>
      </header>

      {error && (
        <div className="p-4 rounded-xl bg-danger-light text-danger text-xs font-semibold flex items-center gap-2">
          <AlertCircle className="w-4 h-4" />
          {error}
          <button type="button" onClick={() => setError(null)} className="ml-auto"><X className="w-4 h-4" /></button>
        </div>
      )}
      {success && (
        <div className="p-4 rounded-xl bg-green-50 text-green-700 text-xs font-semibold flex items-center gap-2">
          <Check className="w-4 h-4" />
          {success}
          <button type="button" onClick={() => setSuccess(null)} className="ml-auto"><X className="w-4 h-4" /></button>
        </div>
      )}

      <form onSubmit={handleCreate} className="bg-white rounded-2xl border border-slate-200 p-6 shadow-sm space-y-5">
        <h2 className="font-display font-bold text-sm flex items-center gap-2">
          <Plus className="w-4 h-4 text-primary" />
          Create new test
        </h2>

        <div className="grid sm:grid-cols-2 gap-4">
          <div>
            <label className="block text-[10px] font-extrabold uppercase text-neutral-desc mb-2">Title</label>
            <input
              required
              value={title}
              onChange={e => setTitle(e.target.value)}
              className="w-full px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold"
              placeholder="JEE Main Mock #2"
            />
          </div>
          <div>
            <label className="block text-[10px] font-extrabold uppercase text-neutral-desc mb-2">Duration (min)</label>
            <input
              type="number"
              required
              value={duration}
              onChange={e => setDuration(Number(e.target.value))}
              className="w-full px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold"
            />
          </div>
          <div>
            <label className="block text-[10px] font-extrabold uppercase text-neutral-desc mb-2">Type</label>
            <select
              value={testType}
              onChange={e => setTestType(e.target.value as Test['test_type'])}
              className="w-full px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold"
            >
              <option value="full_mock">Full mock</option>
              <option value="chapter_test">Chapter test</option>
              <option value="part_test">Part test</option>
              <option value="pyq_paper">PYQ paper</option>
            </select>
          </div>
          <div>
            <label className="block text-[10px] font-extrabold uppercase text-neutral-desc mb-2">Pattern</label>
            <select
              value={examPattern}
              onChange={e => setExamPattern(e.target.value as Test['exam_pattern'])}
              className="w-full px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold"
            >
              <option value="jee_main">JEE Main</option>
              <option value="jee_advanced">JEE Advanced</option>
            </select>
          </div>
          <div className="sm:col-span-2">
            <label className="block text-[10px] font-extrabold uppercase text-neutral-desc mb-2">
              Schedule at (optional)
            </label>
            <input
              type="datetime-local"
              value={scheduledAt}
              onChange={e => setScheduledAt(e.target.value)}
              className="w-full px-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold"
            />
          </div>
          <label className="flex items-center gap-2 text-xs font-bold text-neutral-title sm:col-span-2">
            <input type="checkbox" checked={isFree} onChange={e => setIsFree(e.target.checked)} />
            Free tier access
          </label>
        </div>

        <div>
          <p className="text-[10px] font-extrabold uppercase text-neutral-desc mb-2">
            Select questions ({selectedIds.length} selected)
          </p>
          <div className="max-h-48 overflow-y-auto border border-slate-200 rounded-xl divide-y divide-slate-100">
            {questions.map(q => (
              <label
                key={q.id}
                className="flex items-center gap-3 px-3 py-2 hover:bg-slate-50 cursor-pointer text-xs"
              >
                <input
                  type="checkbox"
                  checked={selectedIds.includes(q.id)}
                  onChange={() => toggleQuestion(q.id)}
                />
                <span className="font-bold text-primary uppercase w-20">{q.subject}</span>
                <span className="text-neutral-desc truncate">{q.chapter}</span>
              </label>
            ))}
          </div>
        </div>

        <button
          type="submit"
          disabled={creating || selectedIds.length === 0}
          className="px-6 py-2.5 bg-primary text-white text-xs font-bold rounded-xl disabled:opacity-50"
        >
          {creating ? 'Creating...' : 'Publish test'}
        </button>
      </form>

      <section className="space-y-3">
        <h2 className="font-display font-bold text-sm text-neutral-title">Published tests</h2>
        {loading ? (
          <p className="text-xs text-neutral-desc">Loading...</p>
        ) : tests.length === 0 ? (
          <p className="text-xs text-neutral-desc bg-white p-6 rounded-2xl border border-slate-200">
            No custom tests yet. Create one above or use PYQ browser Attempt as Mock.
          </p>
        ) : (
          tests.map(t => (
            <div
              key={t.id}
              className="bg-white p-4 rounded-2xl border border-slate-200 flex flex-wrap items-center justify-between gap-3"
            >
              <div>
                <p className="font-bold text-sm text-neutral-title">{t.title}</p>
                <p className="text-[10px] text-neutral-desc mt-1">
                  {t.question_ids.length} Qs · {t.duration_minutes} min · {t.total_marks} marks ·{' '}
                  {t.test_type.replace('_', ' ')}
                </p>
              </div>
              <div className="flex gap-2">
                <Link
                  href={`/test/${t.id}`}
                  className="px-3 py-1.5 text-xs font-bold text-primary border border-primary/20 rounded-lg flex items-center gap-1 hover:bg-primary-light"
                >
                  <Play className="w-3.5 h-3.5" />
                  Preview
                </Link>
                <button
                  type="button"
                  onClick={() => handleDelete(t.id)}
                  className="p-2 text-slate-400 hover:text-danger hover:bg-danger-light/30 rounded-lg"
                >
                  <Trash2 className="w-4 h-4" />
                </button>
              </div>
            </div>
          ))
        )}
      </section>
    </div>
  )
}
