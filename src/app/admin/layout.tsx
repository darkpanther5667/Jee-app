import React from 'react'
import { headers } from 'next/headers'
import { requireAdmin } from '@/lib/admin/auth'
import AdminSidebar from '@/components/admin/AdminSidebar'

export default async function AdminRootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  const pathname = headers().get('x-pathname') ?? ''
  const isLogin = pathname === '/admin/login' || pathname.endsWith('/admin/login')

  if (isLogin) {
    return <>{children}</>
  }

  await requireAdmin()

  return (
    <div className="flex min-h-screen bg-slate-50">
      <AdminSidebar />
      <div className="flex-grow min-w-0 flex flex-col">{children}</div>
    </div>
  )
}
