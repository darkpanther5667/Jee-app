# ClearJEE Progress Tracker

Last updated: 2026-05-22

Source spec: `gemini.md`

---

## Current Snapshot

Full Next.js App Router app with auth, test engine, analytics, PYQ browser, leaderboard, admin panel, and subscription flow. Supabase is live with 150 verified questions. All critical security vulnerabilities have been patched. The main remaining work is feature completeness (question variety, advanced analytics, PWA, discussion forum).

---

## Security Fixes Applied (May 2026)

| # | Issue | Fix |
|---|-------|-----|
| 1 | Free subscription upgrade without payment | `verifyAndUpgradeSubscriptionAction` verifies Razorpay HMAC-SHA256 before any DB write |
| 2 | Hardcoded admin password `clearjee` exposed in UI | `ADMIN_PASSCODE` env var required — no fallback, hint removed from login page |
| 3 | Admin actions had no auth guard | Every function in `admin.ts` calls `requireAdmin()` first |
| 4 | Question CRUD had no auth guard | `create/update/deleteQuestionAction` all check `isAdminSession()` |
| 5 | Attempt submit didn't verify ownership | `.eq('user_id', userId)` added to all attempt queries |
| 6 | Any user could read any attempt | `getTestAttemptAction` now filters by `user_id` |
| 7 | Mock session bypassed auth when Supabase was live | Removed `isDev` bypass — mock only works when Supabase env vars absent |
| 8 | Google OAuth always mocked in dev | Only mocks when `isSupabaseConfigured` is false |
| 9 | Timer was client-side only | Server computes time from `started_at` in DB; client value ignored |
| 10 | Auto-save had no ownership check | `updateTestAttemptAction` includes `.eq('user_id', userId)` |
| 11 | Payment simulator upgraded for free | `sandboxUpgradeSubscriptionAction` rejects if real Razorpay key exists |
| 12 | Leaderboard showed fake hardcoded names/scores | Rewritten to show only real DB attempts with honest percentile |
| 13 | Most routes unprotected by middleware | `/test`, `/analysis`, `/pyq`, `/subscription`, `/leaderboard` now protected |
| 14 | Unknown test ID exposed all questions | Returns 404 for unknown IDs; only known sandbox IDs get config |
| 15 | Bookmarks were global (not per-user) | Supabase mode uses `user_id`; sandbox uses per-user file |
| 16 | Tab switch logs could be spoofed | Ownership check before inserting log |
| 17 | Analysis used `Math.random()` for time data | Uses actual `time_spent` from responses |
| 18 | Hardcoded rank/percentile in analysis | Shows real `attempt.rank` / `attempt.percentile` from DB |
| 20 | No Razorpay signature verification | New `/api/payments/create-order` route; HMAC verified server-side |
| 21 | `any` types in Zustand store | Fully typed with `AuthUser`, `UserProfile`, `UserResponse` |
| 22 | Duplicate `const` in TestAttemptClient | Removed duplicate declaration |
| 24 | No OTP rate limiting | Max 3 requests per number per 10-minute window |
| 25 | `ADMIN_PASSCODE` not in env | Added to `.env.local` with placeholder |

---

## Phase 1 — Foundation

| Area | Status | Remaining Work |
|------|--------|----------------|
| Auth system | ✅ Done | — |
| Question engine | ✅ Done | Add image upload to Supabase Storage |
| Test builder | ✅ Done | Auto-generation from bank filters |
| Test attempt UI | ✅ Done | Mobile drawer palette (PWA) |
| Basic analytics | ✅ Done | Store topic performance updates to `user_topic_performance` table |

## Phase 2 — Intelligence

| Area | Status | Remaining Work |
|------|--------|----------------|
| PYQ browser | ✅ Done | Seed more question types (numerical, multiple_correct) |
| Advanced analytics | 🔶 Partial | Real topic heatmaps, rank predictor, trend lines |
| Leaderboard | ✅ Done | Per-test leaderboard tabs wired to real test IDs |
| Subscription + Razorpay | ✅ Done | Razorpay webhook endpoint for async payment confirmation |
| Bookmarks + notes | ✅ Done | — |

## Phase 3 — Engagement

| Area | Status | Remaining Work |
|------|--------|----------------|
| Revision scheduler | ❌ Not started | Spaced repetition from weak topics |
| Video solutions | 🔶 Partial | Gated playback by subscription tier |
| Discussion forum | ❌ Not started | Per-question threads, educator roles, RLS |
| Notifications | 🔶 Partial | Email/SMS templates, delivery tracking |
| Mobile PWA | ❌ Not started | Manifest, service worker, offline cache |

---

## Question Bank Status (Supabase)

| Subject | Count | Types | Hard Qs |
|---------|-------|-------|---------|
| Physics | 50 | single_correct only | ~1 |
| Chemistry | 50 | single_correct only | ~1 |
| Mathematics | 50 | single_correct only | ~2 |
| **Total** | **150** | | **4** |

**Gaps to fill:**
- `numerical` type questions (JEE Main integer type)
- `multiple_correct` type questions (JEE Advanced)
- More `hard` difficulty questions (currently only 4/150)
- JEE Advanced specific questions

---

## Recommended Next Work Order

1. **Seed question variety** — add 50+ numerical + multiple_correct questions to Supabase
2. **Razorpay webhook** — `/api/payments/webhook` for async payment confirmation
3. **Topic performance** — write to `user_topic_performance` on test submit
4. **Advanced analytics** — real heatmaps and rank predictor from DB data
5. **PWA** — manifest + service worker for mobile homescreen install
6. **Discussion forum** — per-question doubt threads
7. **Revision scheduler** — spaced repetition engine
