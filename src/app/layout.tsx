import type { Metadata, Viewport } from "next"
import "./globals.css"

export const metadata: Metadata = {
  title: "ClearJEE — India's Smartest JEE Preparation Platform",
  description: "Experience the most advanced, data-driven, and NTA-compliant online test series for JEE Main & JEE Advanced preparation. Better than MathonGo & Quizrr.",
  keywords: ["JEE", "JEE Main", "JEE Advanced", "IIT JEE", "Test Series", "Mock Test", "MathonGo", "Quizrr", "ClearJEE"],
  authors: [{ name: "ClearJEE Team" }]
}

export const viewport: Viewport = {
  width: "device-width",
  initialScale: 1,
  maximumScale: 1
}

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode
}>) {
  return (
    <html lang="en">
      <body className="antialiased text-neutral-title bg-neutral-bg min-h-screen grid-bg">
        {children}
      </body>
    </html>
  )
}
