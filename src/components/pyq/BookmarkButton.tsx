'use client'

import React, { useState } from 'react'
import { BookMarked, Tag } from 'lucide-react'

interface BookmarkButtonProps {
  isBookmarked: boolean
  tag?: string
  onToggle: (tag?: string) => Promise<boolean>
}

export default function BookmarkButton({ isBookmarked, tag, onToggle }: BookmarkButtonProps) {
  const [showTagInput, setShowTagInput] = useState(false)
  const [tagDraft, setTagDraft] = useState(tag ?? '')
  const [saving, setSaving] = useState(false)

  const handleClick = async () => {
    if (isBookmarked) {
      await onToggle()
      setShowTagInput(false)
      return
    }
    setShowTagInput(true)
  }

  const saveWithTag = async () => {
    setSaving(true)
    await onToggle(tagDraft.trim() || undefined)
    setSaving(false)
    setShowTagInput(false)
  }

  return (
    <div className="relative flex flex-col items-end gap-2">
      <button
        type="button"
        onClick={handleClick}
        title={isBookmarked ? 'Remove bookmark' : 'Bookmark with tag'}
        className={`p-2 rounded-xl border transition-all ${
          isBookmarked
            ? 'bg-primary-light border-primary/30 text-primary'
            : 'border-transparent text-slate-400 hover:text-primary hover:bg-slate-100'
        }`}
      >
        <BookMarked className={`w-4 h-4 ${isBookmarked ? 'fill-primary' : ''}`} />
      </button>

      {isBookmarked && tag && !showTagInput && (
        <span className="flex items-center gap-1 px-2 py-0.5 bg-slate-100 text-[9px] font-bold text-slate-600 rounded-lg border border-slate-200">
          <Tag className="w-3 h-3" />
          {tag}
        </span>
      )}

      {showTagInput && !isBookmarked && (
        <div className="absolute right-0 top-full mt-1 z-20 w-48 p-3 bg-white border border-slate-200 rounded-xl shadow-lg space-y-2">
          <label className="text-[9px] font-extrabold uppercase text-neutral-desc tracking-wider">
            Tag (optional)
          </label>
          <input
            type="text"
            value={tagDraft}
            onChange={e => setTagDraft(e.target.value)}
            placeholder="e.g. Must revise"
            className="w-full px-2 py-1.5 text-xs font-bold border border-slate-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary/20"
            onKeyDown={e => e.key === 'Enter' && saveWithTag()}
          />
          <div className="flex gap-2">
            <button
              type="button"
              onClick={() => setShowTagInput(false)}
              className="flex-1 py-1.5 text-[10px] font-bold text-slate-500 hover:bg-slate-50 rounded-lg"
            >
              Cancel
            </button>
            <button
              type="button"
              onClick={saveWithTag}
              disabled={saving}
              className="flex-1 py-1.5 text-[10px] font-bold bg-primary text-white rounded-lg disabled:opacity-50"
            >
              Save
            </button>
          </div>
        </div>
      )}
    </div>
  )
}
