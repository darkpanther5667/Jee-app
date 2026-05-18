'use client'

import React from 'react'
import { Filter, Search, History, RotateCcw } from 'lucide-react'
import { PyqFilters } from '@/types/pyq'
import { PYQ_YEARS, PYQ_MONTHS, JEE_MAIN_SHIFTS, JEE_ADVANCED_SHIFTS } from '@/constants/pyq'
import { SubjectType } from '@/types/question'

interface FilterPanelProps {
  filters: PyqFilters
  onChange: (patch: Partial<PyqFilters>) => void
  onReset: () => void
  topicSuggestions?: string[]
}

const labelClass = 'block text-[10px] font-extrabold uppercase text-neutral-desc tracking-wider mb-2'
const inputClass =
  'w-full bg-slate-50 border border-slate-200 rounded-xl px-3 py-2 text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/10'

export default function FilterPanel({
  filters,
  onChange,
  onReset,
  topicSuggestions = [],
}: FilterPanelProps) {
  const shiftOptions =
    filters.exam === 'jee_advanced'
      ? JEE_ADVANCED_SHIFTS
      : filters.exam === 'jee_main'
        ? JEE_MAIN_SHIFTS
        : [...JEE_MAIN_SHIFTS, ...JEE_ADVANCED_SHIFTS]

  const activeFilterCount = [
    filters.exam !== 'all',
    filters.year !== 'all',
    filters.month !== 'all',
    filters.shift !== 'all',
    filters.subject !== 'all',
    filters.chapter.trim() !== '',
    filters.topic.trim() !== '',
    filters.searchQuery.trim() !== '',
  ].filter(Boolean).length

  return (
    <aside className="w-full md:w-64 flex-shrink-0 space-y-6">
      <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-sm space-y-5">
        <div className="flex items-center justify-between">
          <h3 className="font-display font-extrabold text-sm text-neutral-title flex items-center gap-2">
            <Filter className="w-4 h-4 text-primary" />
            Filters
            {activeFilterCount > 0 && (
              <span className="px-1.5 py-0.5 bg-primary text-white text-[9px] rounded-md">{activeFilterCount}</span>
            )}
          </h3>
          {activeFilterCount > 0 && (
            <button
              type="button"
              onClick={onReset}
              className="text-[10px] font-bold text-slate-500 hover:text-primary flex items-center gap-1"
            >
              <RotateCcw className="w-3 h-3" />
              Reset
            </button>
          )}
        </div>

        <div>
          <label className={labelClass}>Keyword / Formula</label>
          <div className="relative">
            <input
              type="text"
              placeholder="e.g. Bohr Model"
              value={filters.searchQuery}
              onChange={e => onChange({ searchQuery: e.target.value })}
              className="w-full pl-9 pr-3 py-2 bg-slate-50 border border-slate-200 rounded-xl text-xs font-bold text-neutral-title focus:outline-none focus:ring-2 focus:ring-primary/20"
            />
            <Search className="w-3.5 h-3.5 text-slate-400 absolute left-3 top-2.5" />
          </div>
        </div>

        <div>
          <label className={labelClass}>Exam</label>
          <div className="flex bg-slate-50 p-1 rounded-xl border border-slate-200">
            {(['all', 'jee_main', 'jee_advanced'] as const).map(eType => (
              <button
                key={eType}
                type="button"
                onClick={() => onChange({ exam: eType, shift: 'all' })}
                className={`flex-1 py-1.5 text-[10px] font-extrabold uppercase rounded-lg transition-all ${
                  filters.exam === eType ? 'bg-white text-primary shadow-sm' : 'text-slate-500 hover:text-slate-700'
                }`}
              >
                {eType.replace('jee_', '') || 'All'}
              </button>
            ))}
          </div>
        </div>

        <div>
          <label className={labelClass}>Year</label>
          <select
            value={filters.year}
            onChange={e => onChange({ year: e.target.value === 'all' ? 'all' : Number(e.target.value) })}
            className={inputClass}
          >
            <option value="all">All Years</option>
            {PYQ_YEARS.map(y => (
              <option key={y} value={y}>{y}</option>
            ))}
          </select>
        </div>

        <div>
          <label className={labelClass}>Month</label>
          <select
            value={filters.month}
            onChange={e => onChange({ month: e.target.value as PyqFilters['month'] })}
            className={inputClass}
          >
            <option value="all">All Months</option>
            {PYQ_MONTHS.map(m => (
              <option key={m.value} value={m.value}>{m.label}</option>
            ))}
          </select>
        </div>

        <div>
          <label className={labelClass}>Shift / Paper</label>
          <select
            value={filters.shift}
            onChange={e => onChange({ shift: e.target.value })}
            className={inputClass}
          >
            <option value="all">All Shifts</option>
            {shiftOptions.map(s => (
              <option key={s.value} value={s.value}>{s.label}</option>
            ))}
          </select>
        </div>

        <div>
          <label className={labelClass}>Subject</label>
          <select
            value={filters.subject}
            onChange={e => onChange({ subject: e.target.value as SubjectType | 'all' })}
            className={inputClass}
          >
            <option value="all">All Subjects</option>
            <option value="physics">Physics</option>
            <option value="chemistry">Chemistry</option>
            <option value="mathematics">Mathematics</option>
          </select>
        </div>

        <div>
          <label className={labelClass}>Chapter</label>
          <input
            type="text"
            placeholder="e.g. Kinematics"
            value={filters.chapter}
            onChange={e => onChange({ chapter: e.target.value })}
            className={inputClass}
          />
        </div>

        <div>
          <label className={labelClass}>Topic</label>
          <input
            type="text"
            placeholder="e.g. Projectile Motion"
            value={filters.topic}
            onChange={e => onChange({ topic: e.target.value })}
            list="pyq-topic-suggestions"
            className={inputClass}
          />
          {topicSuggestions.length > 0 && (
            <datalist id="pyq-topic-suggestions">
              {topicSuggestions.map(t => (
                <option key={t} value={t} />
              ))}
            </datalist>
          )}
        </div>
      </div>

      <div className="bg-primary-light/30 border border-primary/20 p-5 rounded-2xl">
        <h4 className="font-extrabold text-xs text-primary mb-2 flex items-center gap-2">
          <History className="w-4 h-4" />
          Pro Tip
        </h4>
        <p className="text-[10px] font-semibold text-primary-dark/80 leading-relaxed">
          Filter 15–20 PYQs by year and chapter, then use Attempt as Mock to practice under timed exam pressure.
        </p>
      </div>
    </aside>
  )
}
