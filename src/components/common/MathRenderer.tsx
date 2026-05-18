import React from 'react'
import katex from 'katex'

interface MathRendererProps {
  text: string
  className?: string
  inline?: boolean
}

export default function MathRenderer({ text, className = '', inline = false }: MathRendererProps) {
  if (!text) return null

  // Regular expression to split on $$ (block math) and $ (inline math)
  // We use parenthesis to capture the delimiters, so they are kept in the split array
  const mathRegex = /(\$\$.*?\$\$|\$.*?\$)/g
  const parts = text.split(mathRegex)

  const renderedElements = parts.map((part, index) => {
    // 1. Block Math segment: $$...$$
    if (part.startsWith('$$') && part.endsWith('$$')) {
      const latex = part.slice(2, -2).trim()
      try {
        const html = katex.renderToString(latex, {
          displayMode: true,
          throwOnError: false,
          trust: true,
        })
        return (
          <span
            key={index}
            className="block my-3 overflow-x-auto max-w-full select-all"
            dangerouslySetInnerHTML={{ __html: html }}
          />
        )
      } catch {
        return (
          <code key={index} className="block my-2 p-2 bg-amber-50 border border-amber-200 text-amber-700 rounded text-xs overflow-x-auto">
            {part}
          </code>
        )
      }
    }

    // 2. Inline Math segment: $...$
    if (part.startsWith('$') && part.endsWith('$')) {
      const latex = part.slice(1, -1).trim()
      try {
        const html = katex.renderToString(latex, {
          displayMode: false,
          throwOnError: false,
          trust: true,
        })
        return (
          <span
            key={index}
            className="inline-block align-middle select-all mx-0.5"
            dangerouslySetInnerHTML={{ __html: html }}
          />
        )
      } catch {
        return (
          <code key={index} className="inline px-1 py-0.5 bg-amber-50 border border-amber-200 text-amber-700 rounded text-xs">
            {part}
          </code>
        )
      }
    }

    // 3. Plain text segment
    // We split by newlines to render JSX line breaks <br /> properly
    const textLines = part.split('\n').map((line, lineIndex, array) => (
      <React.Fragment key={lineIndex}>
        {line}
        {lineIndex < array.length - 1 && <br />}
      </React.Fragment>
    ))

    return <span key={index} className="leading-relaxed">{textLines}</span>
  })

  // Return wrapped container
  const WrapperTag = inline ? 'span' : 'div'
  return <WrapperTag className={`math-renderer select-text ${className}`}>{renderedElements}</WrapperTag>
}
