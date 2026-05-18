-- =========================================================
-- 🚀 JEE TEST SERIES APP — COMPLETE INDUSTRY DATABASE SCHEMA
-- =========================================================

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1. PUBLIC USERS PROFILE TABLE
-- Maps directly to Supabase Auth auth.users via id
CREATE TABLE IF NOT EXISTS public.users (
  id uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  name text,
  mobile text UNIQUE,
  email text,
  class text CHECK (class IN ('11', '12', 'dropper')),
  target_year int,
  coaching_name text,
  city text,
  state text,
  created_at timestamptz DEFAULT timezone('utc'::text, now()),
  subscription_tier text DEFAULT 'free' CHECK (subscription_tier IN ('free', 'pro', 'elite'))
);

-- Enable RLS on users table
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;

-- RLS Policies for users
CREATE POLICY "Users can view their own profile" 
  ON public.users 
  FOR SELECT 
  USING (auth.uid() = id);

CREATE POLICY "Users can update their own profile" 
  ON public.users 
  FOR UPDATE 
  USING (auth.uid() = id);

CREATE POLICY "Users can insert their own profile" 
  ON public.users 
  FOR INSERT 
  WITH CHECK (auth.uid() = id);

-- 2. TRIGGER TO AUTOMATICALLY CREATE USER PROFILE ON SIGNUP
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger AS $$
BEGIN
  INSERT INTO public.users (id, email, mobile, subscription_tier)
  VALUES (
    new.id,
    new.email,
    new.phone, -- Supabase phone maps to mobile
    'free'
  )
  ON CONFLICT (id) DO UPDATE
  SET email = EXCLUDED.email,
      mobile = EXCLUDED.mobile;
  RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger definition
CREATE OR REPLACE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- 3. QUESTIONS (Core Question Bank Table)
CREATE TABLE IF NOT EXISTS public.questions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  subject text NOT NULL CHECK (subject IN ('physics', 'chemistry', 'mathematics')),
  class text NOT NULL CHECK (class IN ('11', '12')),
  chapter text NOT NULL,
  topic text,
  difficulty text NOT NULL CHECK (difficulty IN ('easy', 'medium', 'hard')),
  question_type text NOT NULL CHECK (question_type IN (
    'single_correct',   -- JEE Main MCQ
    'multiple_correct', -- JEE Advanced MCQ
    'numerical',        -- Integer / Decimal answer
    'matrix_match',     -- JEE Advanced matrix
    'paragraph'         -- Passage-based
  )),
  question_text text NOT NULL,        -- LaTeX/KaTeX supported
  question_image_url text,           -- optional
  options jsonb,                     -- [{id, text, image_url}] for MCQ
  correct_answer jsonb NOT NULL,      -- flexible for all question types (e.g. {type: "single", value: "B"})
  solution_text text,                -- KaTeX supported
  solution_image_url text,
  solution_video_url text,           -- YouTube embed or hosted
  marks_correct int NOT NULL DEFAULT 4,
  marks_incorrect int NOT NULL DEFAULT -1,
  is_pyq boolean DEFAULT false,
  pyq_year int,
  pyq_exam text CHECK (pyq_exam IN ('jee_main', 'jee_advanced')),
  pyq_shift text,
  source text DEFAULT 'original' CHECK (source IN ('original', 'pyq', 'adapted')),
  tags text[],
  verified boolean DEFAULT false,
  created_by uuid REFERENCES public.users(id) ON DELETE SET NULL,
  created_at timestamptz DEFAULT timezone('utc'::text, now())
);

-- Enable RLS on questions
ALTER TABLE public.questions ENABLE ROW LEVEL SECURITY;

-- RLS Policies for questions
CREATE POLICY "Anyone can view verified questions" 
  ON public.questions 
  FOR SELECT 
  USING (verified = true OR auth.uid() IN (SELECT id FROM public.users WHERE subscription_tier = 'elite'));

CREATE POLICY "Admins can modify questions" 
  ON public.questions 
  FOR ALL 
  USING (auth.uid() = created_by OR auth.uid() IN (SELECT id FROM public.users WHERE subscription_tier = 'elite'))
  WITH CHECK (auth.uid() = created_by OR auth.uid() IN (SELECT id FROM public.users WHERE subscription_tier = 'elite'));

-- 4. TESTS TABLE
CREATE TABLE IF NOT EXISTS public.tests (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  test_type text NOT NULL CHECK (test_type IN (
    'chapter_test',
    'part_test',
    'full_mock',
    'pyq_paper',
    'minor_test',
    'grand_test'
  )),
  exam_pattern text NOT NULL CHECK (exam_pattern IN ('jee_main', 'jee_advanced')),
  subjects text[] NOT NULL,           -- ['physics','chemistry','mathematics']
  chapters_covered jsonb,    -- {physics: ['Kinematics'], ...}
  duration_minutes int NOT NULL DEFAULT 180,
  total_marks int NOT NULL,
  question_ids uuid[] NOT NULL,       -- ordered array
  is_scheduled boolean DEFAULT false,
  scheduled_at timestamptz,
  available_from timestamptz,
  available_till timestamptz,
  is_free boolean DEFAULT false,
  required_tier text DEFAULT 'pro' CHECK (required_tier IN ('free', 'pro', 'elite')),
  created_at timestamptz DEFAULT timezone('utc'::text, now())
);

-- Enable RLS on tests
ALTER TABLE public.tests ENABLE ROW LEVEL SECURITY;

-- RLS Policies for tests
CREATE POLICY "Anyone can view tests" 
  ON public.tests 
  FOR SELECT 
  USING (true);

CREATE POLICY "Admins can modify tests" 
  ON public.tests 
  FOR ALL 
  USING (auth.uid() IN (SELECT id FROM public.users WHERE subscription_tier = 'elite'))
  WITH CHECK (auth.uid() IN (SELECT id FROM public.users WHERE subscription_tier = 'elite'));

-- 5. TEST ATTEMPTS TABLE
CREATE TABLE IF NOT EXISTS public.attempts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES public.users(id) ON DELETE CASCADE,
  test_id uuid NOT NULL REFERENCES public.tests(id) ON DELETE CASCADE,
  started_at timestamptz DEFAULT timezone('utc'::text, now()),
  submitted_at timestamptz,
  time_taken_seconds int,
  responses jsonb DEFAULT '{}'::jsonb,           -- {question_id: {answer, time_spent, visited, marked_review}}
  score numeric DEFAULT 0,
  subject_scores jsonb DEFAULT '{}'::jsonb,      -- {physics: 40, chemistry: 35, math: 50}
  rank int,                  -- computed after cutoff
  percentile numeric,
  status text DEFAULT 'in_progress' CHECK (status IN ('in_progress', 'submitted', 'timed_out'))
);

-- Enable RLS on attempts
ALTER TABLE public.attempts ENABLE ROW LEVEL SECURITY;

-- RLS Policies for attempts
CREATE POLICY "Users can view their own attempts" 
  ON public.attempts 
  FOR SELECT 
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own attempts" 
  ON public.attempts 
  FOR INSERT 
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own attempts" 
  ON public.attempts 
  FOR UPDATE 
  USING (auth.uid() = user_id);

-- 6. PYQ PAPERS TABLE
CREATE TABLE IF NOT EXISTS public.pyq_papers (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  exam text NOT NULL CHECK (exam IN ('jee_main', 'jee_advanced')),
  year int NOT NULL,
  month text,                -- 'january' | 'april'
  shift text,
  paper_number int DEFAULT 1,          -- 1 or 2 (Advanced)
  question_ids uuid[] NOT NULL,
  total_marks int NOT NULL,
  duration_minutes int NOT NULL DEFAULT 180
);

-- Enable RLS on pyq_papers
ALTER TABLE public.pyq_papers ENABLE ROW LEVEL SECURITY;

-- RLS Policies for pyq_papers
CREATE POLICY "Anyone can view PYQ papers" 
  ON public.pyq_papers 
  FOR SELECT 
  USING (true);

CREATE POLICY "Admins can modify PYQ papers" 
  ON public.pyq_papers 
  FOR ALL 
  USING (auth.uid() IN (SELECT id FROM public.users WHERE subscription_tier = 'elite'))
  WITH CHECK (auth.uid() IN (SELECT id FROM public.users WHERE subscription_tier = 'elite'));

-- 7. SUBSCRIPTIONS TABLE
CREATE TABLE IF NOT EXISTS public.subscriptions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES public.users(id) ON DELETE CASCADE,
  plan text NOT NULL CHECK (plan IN ('pro', 'elite')),
  valid_from timestamptz DEFAULT timezone('utc'::text, now()),
  valid_till timestamptz NOT NULL,
  razorpay_payment_id text,
  amount_paise int NOT NULL,
  status text NOT NULL CHECK (status IN ('active', 'expired', 'cancelled'))
);

-- Enable RLS on subscriptions
ALTER TABLE public.subscriptions ENABLE ROW LEVEL SECURITY;

-- RLS Policies for subscriptions
CREATE POLICY "Users can view their own subscriptions" 
  ON public.subscriptions 
  FOR SELECT 
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own subscriptions" 
  ON public.subscriptions 
  FOR INSERT 
  WITH CHECK (auth.uid() = user_id);

-- 8. BOOKMARKS TABLE
CREATE TABLE IF NOT EXISTS public.bookmarks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES public.users(id) ON DELETE CASCADE,
  question_id uuid NOT NULL REFERENCES public.questions(id) ON DELETE CASCADE,
  note text,
  created_at timestamptz DEFAULT timezone('utc'::text, now())
);

-- Enable RLS on bookmarks
ALTER TABLE public.bookmarks ENABLE ROW LEVEL SECURITY;

-- RLS Policies for bookmarks
CREATE POLICY "Users can view their own bookmarks" 
  ON public.bookmarks 
  FOR SELECT 
  USING (auth.uid() = user_id);

CREATE POLICY "Users can modify their own bookmarks" 
  ON public.bookmarks 
  FOR ALL 
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- 9. USER TOPIC PERFORMANCE TABLE (Aggregated metrics)
CREATE TABLE IF NOT EXISTS public.user_topic_performance (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES public.users(id) ON DELETE CASCADE,
  subject text NOT NULL CHECK (subject IN ('physics', 'chemistry', 'mathematics')),
  chapter text NOT NULL,
  topic text,
  total_attempted int DEFAULT 0,
  total_correct int DEFAULT 0,
  total_time_seconds int DEFAULT 0,
  last_attempted_at timestamptz DEFAULT timezone('utc'::text, now())
);

-- Enable RLS on user_topic_performance
ALTER TABLE public.user_topic_performance ENABLE ROW LEVEL SECURITY;

-- RLS Policies for user_topic_performance
CREATE POLICY "Users can view their own topic performance" 
  ON public.user_topic_performance 
  FOR SELECT 
  USING (auth.uid() = user_id);

CREATE POLICY "Users can modify their own topic performance" 
  ON public.user_topic_performance 
  FOR ALL 
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);
