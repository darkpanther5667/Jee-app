import katex from 'katex';
import 'katex/dist/katex.min.css';

export const renderLatex = (latex: string, displayMode: boolean = false): string => {
  try {
    return katex.renderToString(latex, {
      displayMode,
      throwOnError: false,
      trust: true,
      strict: false,
    });
  } catch (error) {
    console.error('KaTeX rendering error:', error);
    return latex;
  }
};

export const LatexRenderer = ({ latex, displayMode = false }: { latex: string; displayMode?: boolean }) => {
  const html = renderLatex(latex, displayMode);
  return <span dangerouslySetInnerHTML={{ __html: html }} />;
};
