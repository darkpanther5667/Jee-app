# 🚀 MASTER PROMPT — JEE TEST SERIES APP (INDUSTRY-LEVEL)
### File: `windsurf.md` | Use with Gemini 2.5 Pro / Claude Sonnet / GPT-4o/Windsurf
---

## ⚠️ HOW TO USE THIS FILE
Paste this entire file as your **System Prompt** (or first user message) when starting a new coding session with any frontier AI. This is your single source of truth. Every new chat session should begin with this.

---

## 🎯 PROJECT IDENTITY

**App Name:** (Your brand name — e.g., "ClearJEE" / "ZeroToIIT" / choose yours)
**Tagline:** "India's Smartest JEE Preparation Platform"
**Mission:** Build the most student-centric, data-driven, and pedagogically sound JEE test series platform in India — better than MathonGo, Quizrr, and Parth Sahaj Nova combined.
**Target Exam:** JEE Main + JEE Advanced (NEET coming in Phase 2)
**Target Users:** Class 11 & 12 students, droppers, coaching institute students
**Primary Stack:** Next.js 14 (App Router) + TypeScript + Supabase + Tailwind CSS + shadcn/ui

---

## 🏗️ TECH STACK (DO NOT DEVIATE)

```
Frontend:     Next.js 14 (App Router) + TypeScript
Styling:      Tailwind CSS + shadcn/ui components
Auth:         Supabase Auth (OTP via mobile, Google OAuth)
Database:     Supabase (PostgreSQL) — with Row Level Security
Storage:      Supabase Storage (question images, PDFs)
State:        Zustand (client) + React Query / TanStack Query (server state)
Payments:     Razorpay (Indian market — UPI, cards, net banking)
Analytics:    Custom analytics tables in Supabase + optional PostHog
Email/SMS:    Twilio (OTP) + Resend (emails)
Deployment:   Vercel (Frontend) + Supabase (Backend)
Testing:      Vitest + Playwright (E2E)
Math Render:  KaTeX (fast, lightweight) — NOT MathJax
Charts:       Recharts or Chart.js
PDF Export:   react-pdf or puppeteer (for result reports)
```

---

## 📁 FOLDER STRUCTURE

```
/app
  /(auth)          — Login, Register, OTP verification
  /(dashboard)     — Student home, progress, leaderboard
  /(test)          — Test attempt UI (fullscreen, NTA-style)
  /(analysis)      — Post-test analysis, solutions
  /(pyq)           — PYQ browser by year/chapter/topic
  /(admin)         — Question upload, test scheduling, analytics
  /(subscription)  — Plans, Razorpay checkout
  /api             — Route handlers

/components
  /ui              — shadcn + custom design system
  /test            — QuestionCard, Timer, PalettePanel, ReviewScreen
  /analysis        — PerformanceChart, TopicHeatmap, RankPredictor
  /pyq             — PYQBrowser, FilterPanel, SolutionDrawer
  /common          — Navbar, Sidebar, Loader, Modal

/lib
  /supabase        — Client, server, admin clients
  /katex           — Math rendering utilities
  /test-engine     — Timer logic, auto-submit, state machine
  /analytics       — Score calculator, percentile estimator

/types             — All TypeScript interfaces
/hooks             — useTest, useTimer, useAnalysis, usePYQ
/store             — Zustand stores
/constants         — Subject config, chapter lists, exam patterns
```

---

## 🗃️ DATABASE SCHEMA (Supabase / PostgreSQL)

```sql
-- USERS
users (
  id uuid PRIMARY KEY,
  name text,
  mobile text UNIQUE,
  email text,
  class text CHECK (class IN ('11', '12', 'dropper')),
  target_year int,
  coaching_name text,
  city text,
  state text,
  created_at timestamptz,
  subscription_tier text DEFAULT 'free' -- free | pro | elite
)

-- QUESTIONS (Core Table)
questions (
  id uuid PRIMARY KEY,
  subject text CHECK (subject IN ('physics', 'chemistry', 'mathematics')),
  class text CHECK (class IN ('11', '12')),
  chapter text,
  topic text,
  difficulty text CHECK (difficulty IN ('easy', 'medium', 'hard')),
  question_type text CHECK (question_type IN (
    'single_correct',   -- JEE Main MCQ
    'multiple_correct', -- JEE Advanced MCQ
    'numerical',        -- Integer / Decimal answer
    'matrix_match',     -- JEE Advanced matrix
    'paragraph'         -- Passage-based
  )),
  question_text text,        -- LaTeX/KaTeX supported
  question_image_url text,   -- optional
  options jsonb,             -- [{id, text, image_url}] for MCQ
  correct_answer jsonb,      -- flexible for all question types
  solution_text text,        -- KaTeX supported
  solution_image_url text,
  solution_video_url text,   -- YouTube embed or hosted
  marks_correct int,
  marks_incorrect int,       -- negative marking
  is_pyq boolean DEFAULT false,
  pyq_year int,
  pyq_exam text,             -- 'jee_main' | 'jee_advanced'
  pyq_shift text,            -- 'jan_s1' | 'apr_s2' etc.
  source text,               -- 'original' | 'pyq' | 'adapted'
  tags text[],
  verified boolean DEFAULT false,
  created_by uuid REFERENCES users(id),
  created_at timestamptz
)

-- TESTS
tests (
  id uuid PRIMARY KEY,
  title text,
  test_type text CHECK (test_type IN (
    'chapter_test',
    'part_test',
    'full_mock',
    'pyq_paper',
    'minor_test',
    'grand_test'
  )),
  exam_pattern text CHECK (exam_pattern IN ('jee_main', 'jee_advanced')),
  subjects text[],           -- ['physics','chemistry','mathematics']
  chapters_covered jsonb,    -- {physics: ['Kinematics'], ...}
  duration_minutes int,
  total_marks int,
  question_ids uuid[],       -- ordered array
  is_scheduled boolean DEFAULT false,
  scheduled_at timestamptz,
  available_from timestamptz,
  available_till timestamptz,
  is_free boolean DEFAULT false,
  required_tier text DEFAULT 'pro',
  created_at timestamptz
)

-- TEST ATTEMPTS
attempts (
  id uuid PRIMARY KEY,
  user_id uuid REFERENCES users(id),
  test_id uuid REFERENCES tests(id),
  started_at timestamptz,
  submitted_at timestamptz,
  time_taken_seconds int,
  responses jsonb,           -- {question_id: {answer, time_spent, visited, marked_review}}
  score numeric,
  subject_scores jsonb,      -- {physics: 40, chemistry: 35, math: 50}
  rank int,                  -- computed after cutoff
  percentile numeric,
  status text DEFAULT 'in_progress' -- in_progress | submitted | timed_out
)

-- PYQ COLLECTION
pyq_papers (
  id uuid PRIMARY KEY,
  exam text,                 -- 'jee_main' | 'jee_advanced'
  year int,
  month text,                -- 'january' | 'april'
  shift text,
  paper_number int,          -- 1 or 2 (Advanced)
  question_ids uuid[],
  total_marks int,
  duration_minutes int
)

-- SUBSCRIPTIONS
subscriptions (
  id uuid PRIMARY KEY,
  user_id uuid REFERENCES users(id),
  plan text,                 -- 'pro' | 'elite'
  valid_from timestamptz,
  valid_till timestamptz,
  razorpay_payment_id text,
  amount_paise int,
  status text                -- 'active' | 'expired' | 'cancelled'
)

-- BOOKMARKS
bookmarks (
  id uuid PRIMARY KEY,
  user_id uuid REFERENCES users(id),
  question_id uuid REFERENCES questions(id),
  note text,
  created_at timestamptz
)

-- USER ANALYTICS (Aggregated)
user_topic_performance (
  id uuid PRIMARY KEY,
  user_id uuid REFERENCES users(id),
  subject text,
  chapter text,
  topic text,
  total_attempted int DEFAULT 0,
  total_correct int DEFAULT 0,
  total_time_seconds int DEFAULT 0,
  last_attempted_at timestamptz
)
```

---

## 🧠 CORE FEATURES (BUILD IN THIS ORDER)

### PHASE 1 — Foundation (Weeks 1–4)
1. **Auth System** — Mobile OTP + Google, onboarding flow (class, target year, coaching)
2. **Question Engine** — CRUD with KaTeX rendering, image upload, admin verification
3. **Test Builder** — Manual + auto-generate tests from question bank
4. **Test Attempt UI** — NTA-style interface (see specs below)
5. **Basic Analytics** — Score, subject-wise breakdown, time analysis

### PHASE 2 — Intelligence (Weeks 5–8)
6. **PYQ Browser** — Year/shift/chapter filterable, attempt as mock, see solutions
7. **Advanced Analytics** — Topic heatmap, rank predictor, weak area detector
8. **Leaderboard** — Real-time per test + cumulative
9. **Subscription + Razorpay** — Tiered access (Free / Pro / Elite)
10. **Bookmarks + Notes** — Per question, with personal notes

### PHASE 3 — Engagement (Weeks 9–12)
11. **Revision Scheduler** — Spaced repetition for weak topics
12. **Video Solutions** — Embedded YouTube or hosted player
13. **Discussion Forum** — Per-question doubt threads
14. **Notifications** — Test reminders, result announcements
15. **Mobile App** — React Native or PWA

---

## 🖥️ TEST ATTEMPT UI — EXACT NTA SPECIFICATION

This is the most critical screen. Build it pixel-perfect and functional.

```
LAYOUT:
┌─────────────────────────────────────────────────────┐
│  [Logo]  [Test Name]          [Time: 02:45:30] [End] │
├────────────────────────────────┬────────────────────┤
│                                │  QUESTION PALETTE  │
│   SECTION: Physics ▼           │  [Color Legend]    │
│                                │  ● Not Visited     │
│   Q.12 / 75    [Mark Review ⭐] │  ● Not Answered    │
│                                │  ● Answered        │
│   [Question Text with KaTeX]   │  ● Marked Review   │
│   [Optional Image]             │  ● Answered+Marked │
│                                │                    │
│   ○ Option A                   │  [1-75 grid]       │
│   ○ Option B                   │                    │
│   ○ Option C                   │  Physics: [1-25]   │
│   ○ Option D                   │  Chem:    [26-50]  │
│                                │  Math:    [51-75]  │
│   [Clear]  [Save & Next →]     │                    │
├────────────────────────────────┴────────────────────┤
│  [← Prev]  [Save & Mark Review]  [Save & Next →]   │
└─────────────────────────────────────────────────────┘

BEHAVIORS:
- Auto-save every response to Supabase in real-time
- Timer counts down; auto-submit at 00:00
- Palette shows color-coded status per question
- Section tabs switch subject (Physics / Chemistry / Maths)
- "Mark for Review" toggles without clearing answer
- Fullscreen mode enforced; warn if tab switch detected
- No copy-paste, no right-click (anti-cheat)
- Question images: zoom on click
- Numerical questions: keyboard input only, decimal allowed
- Multiple correct (Advanced): multi-select checkboxes
- Warn before final submit: "You have X unanswered questions"
```

---

## 📊 ANALYTICS ENGINE

### Per-Test Report (After Submission)
```
1. Score Summary Card
   - Total: X / Y | Correct: A | Incorrect: B | Unattempted: C
   - Subject breakdown with mini-bars
   - Percentile (based on all attempts of same test)
   - Estimated rank (from historical data)
   - Time taken vs average

2. Time Analysis
   - Time per question (scatter plot)
   - Time per section (bar chart)
   - Questions where time > 3 min (flag for review strategy)
   - Fastest/slowest questions

3. Question-wise Review
   - Each question: Your answer | Correct answer | Solution
   - Filter: All / Correct / Incorrect / Skipped / Marked
   - Difficulty breakdown of attempted questions

4. Topic Performance
   - Heatmap: Chapter × Accuracy (green=strong, red=weak)
   - Trending: Getting better / worse per topic over tests

5. Comparison
   - vs. your last test
   - vs. test average
   - vs. top 10% percentile
```

---

## 📚 PYQ MODULE SPECIFICATION

```
PYQ BROWSER UI:
- Filter by: Exam (Main/Advanced) → Year → Month → Shift → Subject → Chapter → Topic
- Each question shows: Year, Exam, Subject, Chapter, Difficulty
- Solutions: Text + Image + Video (YouTube link)
- "Attempt as Mock" — creates a timed mini-test from filtered PYQs
- "Add to Bookmarks" — with custom tag
- Search by keyword (full-text search on Supabase)
- Trending PYQs: most attempted / most bookmarked

DATA TO SEED (Priority Order):
JEE Main PYQs: 2013–2025 (all shifts)
JEE Advanced PYQs: 2007–2024 (Paper 1 & 2)
Format each with: year, exam, shift, subject, chapter, topic, type, solution
```

---

## 💳 SUBSCRIPTION TIERS

```
FREE TIER
- 3 full mock tests
- All PYQs browsable (solutions locked)
- Chapter tests: first 2 per subject free
- Basic analytics

PRO TIER (₹999/month or ₹4999/year)
- Unlimited mock tests (scheduled + on-demand)
- All PYQs with full solutions + video
- All chapter & part tests
- Advanced analytics + rank predictor
- Bookmarks + notes
- Leaderboard access

ELITE TIER (₹1999/month or ₹8999/year)
- Everything in Pro
- Doubt forum with educator reply guarantee
- Personalized weak-topic revision plan
- Priority support
- PDF download of test reports
- Early access to new features
```

---

## 🎨 DESIGN SYSTEM

```css
/* COLOR PALETTE */
--primary: #1A56DB        /* Deep Blue — trust, focus */
--primary-dark: #1e40af
--accent: #F59E0B         /* Amber — energy, highlights */
--success: #10B981        /* Green — correct answers */
--danger: #EF4444         /* Red — wrong answers */
--warning: #F97316        /* Orange — marked for review */
--neutral-bg: #F8FAFC
--card-bg: #FFFFFF
--text-primary: #0F172A
--text-secondary: #64748B

/* QUESTION PALETTE COLORS (NTA Standard) */
--not-visited: #CBD5E1    /* Gray */
--not-answered: #EF4444   /* Red */
--answered: #22C55E       /* Green */
--marked-review: #8B5CF6  /* Purple */
--answered-marked: #8B5CF6 with check

/* TYPOGRAPHY */
Display:  'Plus Jakarta Sans' or 'Sora'
Body:     'Inter'
Math:     KaTeX default fonts (do not override)
Code:     'JetBrains Mono'

/* SPACING: 4px base grid */
/* BORDER RADIUS: 8px cards, 4px inputs, 100px pills */
/* SHADOWS: Subtle — 0 1px 3px rgba(0,0,0,0.1) */
```

---

## ⚡ PERFORMANCE REQUIREMENTS

```
- Test attempt page: < 2s initial load, < 100ms question navigation
- KaTeX render: < 50ms per question
- Analytics page: < 3s (can use skeleton loading)
- Mobile responsive: Test UI must work on 360px wide screens
- Offline resilience: Cache current test state in localStorage, sync on reconnect
- Image optimization: Next.js Image component, WebP format, lazy load
- Bundle size: Keep < 500KB initial JS
```

---

## 🔒 SECURITY & ANTI-CHEAT

```
- Row Level Security on ALL Supabase tables
- JWT verification on every API route
- Test answers stored server-side only (never trust client score)
- Anti-cheat: detect tab switches, log them per attempt
- Rate limiting on API routes (especially auth)
- Question IDs shuffled per user per attempt (different order)
- No direct question_ids exposure to client before test starts
- Admin routes protected by role check in RLS
```

---

## 📱 MOBILE-FIRST CONSIDERATIONS

```
- Test palette: collapsible slide-in drawer on mobile
- Touch targets: minimum 44px
- Swipe left/right to navigate questions (optional)
- Bottom navigation bar (mobile) vs sidebar (desktop)
- PWA: Add to homescreen, offline question cache
- Font size: minimum 16px for question text
```

---

## 🧩 COMPONENT SPECIFICATIONS

### `<QuestionCard />` Props:
```typescript
interface QuestionCardProps {
  question: Question;
  response: UserResponse | null;
  onAnswer: (answer: string | string[] | number) => void;
  onMarkReview: () => void;
  onClear: () => void;
  showSolution?: boolean;  // post-test mode
}
```

### `<TestTimer />` Props:
```typescript
interface TestTimerProps {
  durationSeconds: number;
  onTimeUp: () => void;
  warningAt?: number;  // seconds remaining to show warning (default: 300)
}
```

### `<QuestionPalette />` Props:
```typescript
interface PaletteProps {
  questions: Question[];
  responses: Record<string, UserResponse>;
  currentIndex: number;
  onNavigate: (index: number) => void;
}
```

---

## 🚦 WHAT TO BUILD FIRST — SESSION GUIDE

When starting a new AI session with this prompt, specify one of:

```
SESSION_GOAL: "auth system"
SESSION_GOAL: "question CRUD + KaTeX rendering"
SESSION_GOAL: "test attempt UI"
SESSION_GOAL: "analytics dashboard"
SESSION_GOAL: "PYQ browser"
SESSION_GOAL: "admin panel"
SESSION_GOAL: "subscription + Razorpay"
SESSION_GOAL: "database schema + RLS policies"
SESSION_GOAL: "leaderboard"
SESSION_GOAL: "mobile PWA"
```

The AI will then focus only on that module while having full context of the system.

---

## 🧪 TEST DATA TO SEED

```json
// Sample question format for seeding
{
  "subject": "physics",
  "class": "11",
  "chapter": "Kinematics",
  "topic": "Projectile Motion",
  "difficulty": "medium",
  "question_type": "single_correct",
  "question_text": "A ball is projected at angle $\\theta$ with horizontal with speed $u$. The range is maximum when $\\theta = $",
  "options": [
    {"id": "A", "text": "$30°$"},
    {"id": "B", "text": "$45°$"},
    {"id": "C", "text": "$60°$"},
    {"id": "D", "text": "$90°$"}
  ],
  "correct_answer": {"type": "single", "value": "B"},
  "solution_text": "Range $R = \\frac{u^2 \\sin 2\\theta}{g}$. Maximum when $\\sin 2\\theta = 1$, i.e., $2\\theta = 90°$, so $\\theta = 45°$",
  "marks_correct": 4,
  "marks_incorrect": -1,
  "is_pyq": true,
  "pyq_year": 2019,
  "pyq_exam": "jee_main"
}
```

---

## 🗺️ ROADMAP OVERVIEW

```
Month 1:  Auth + Question Bank + Test Engine + Basic UI
Month 2:  Analytics + PYQ Module + Subscriptions
Month 3:  Leaderboard + Discussions + Video Solutions
Month 4:  Mobile App (PWA or React Native)
Month 5:  AI features — Weak area detection, personalized tests
Month 6:  NEET expansion — new subject (Biology), new question types
```

---

## 📌 GOLDEN RULES FOR THIS PROJECT

1. **Every question must render KaTeX correctly** — test with complex integrals and matrices
2. **Timer must be server-authoritative** — never trust client-side time
3. **Analytics must be honest** — don't inflate scores or rank
4. **Mobile is primary** — most JEE students are on phones
5. **Speed is a feature** — slow analysis kills motivation
6. **PYQ is sacred** — accuracy of year/shift/solution is non-negotiable
7. **Never show the answer before submission** — no matter what the client sends
8. **Design for stress** — students use this under exam pressure; UI must be calm and clear

---

*End of gemini.md — Version 1.0 | Created for India's next top JEE platform*