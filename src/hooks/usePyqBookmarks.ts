'use client'

import { useCallback, useEffect, useState } from 'react'
import { getBookmarksAction, toggleBookmarkAction } from '@/app/actions/pyq'
import { PyqBookmark } from '@/types/pyq'

export function usePyqBookmarks() {
  const [bookmarks, setBookmarks] = useState<PyqBookmark[]>([])
  const [loading, setLoading] = useState(true)

  const refresh = useCallback(async () => {
    const res = await getBookmarksAction()
    if (res.success && res.bookmarks) {
      setBookmarks(res.bookmarks)
    }
    setLoading(false)
  }, [])

  useEffect(() => {
    refresh()
  }, [refresh])

  const bookmarkedIds = new Set(bookmarks.map(b => b.question_id))

  const toggle = useCallback(async (questionId: string, tag?: string) => {
    const res = await toggleBookmarkAction(questionId, tag)
    if (res.success && res.bookmarks) {
      setBookmarks(res.bookmarks)
      return res.bookmarked
    }
    return false
  }, [])

  return {
    bookmarks,
    bookmarkedIds,
    loading,
    refresh,
    toggle,
    isBookmarked: (id: string) => bookmarkedIds.has(id),
    getTag: (id: string) => bookmarks.find(b => b.question_id === id)?.tag,
  }
}
