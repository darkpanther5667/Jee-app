import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        background: "var(--background)",
        foreground: "var(--foreground)",
        primary: {
          DEFAULT: "#1A56DB", // Deep Blue
          dark: "#1e40af",
          light: "#EFF6FF",
        },
        accent: {
          DEFAULT: "#F59E0B", // Amber
          dark: "#D97706",
          light: "#FEF3C7",
        },
        success: {
          DEFAULT: "#10B981", // Green
          dark: "#059669",
          light: "#D1FAE5",
        },
        danger: {
          DEFAULT: "#EF4444", // Red
          dark: "#DC2626",
          light: "#FEE2E2",
        },
        warning: {
          DEFAULT: "#F97316", // Orange
          dark: "#EA580C",
          light: "#FFEDD5",
        },
        neutral: {
          bg: "#F8FAFC",
          card: "#FFFFFF",
          title: "#0F172A",
          desc: "#64748B",
        }
      },
      fontFamily: {
        sans: ["Inter", "sans-serif"],
        display: ["Plus Jakarta Sans", "Sora", "sans-serif"],
        code: ["JetBrains Mono", "monospace"],
      },
      boxShadow: {
        premium: "0 4px 20px -2px rgba(26, 86, 219, 0.08), 0 2px 8px -1px rgba(0, 0, 0, 0.04)",
        glass: "0 8px 32px 0 rgba(31, 38, 135, 0.07)",
      },
      animation: {
        'fade-in': 'fadeIn 0.4s ease-out',
        'slide-up': 'slideUp 0.5s cubic-bezier(0.16, 1, 0.3, 1)',
        'pulse-subtle': 'pulseSubtle 2s infinite ease-in-out',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideUp: {
          '0%': { transform: 'translateY(12px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
        pulseSubtle: {
          '0%, 100%': { transform: 'scale(1)', opacity: '1' },
          '50%': { transform: 'scale(1.02)', opacity: '0.95' },
        }
      }
    },
  },
  plugins: [],
};
export default config;
