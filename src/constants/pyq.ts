export const PYQ_YEARS = [2025, 2024, 2023, 2022, 2021, 2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013] as const

export const PYQ_MONTHS = [
  { value: 'january', label: 'January' },
  { value: 'april', label: 'April' },
] as const

export type PyqMonth = (typeof PYQ_MONTHS)[number]['value']

export const JEE_MAIN_SHIFTS = [
  { value: 'jan_s1', label: 'Jan Shift 1' },
  { value: 'jan_s2', label: 'Jan Shift 2' },
  { value: 'apr_s1', label: 'Apr Shift 1' },
  { value: 'apr_s2', label: 'Apr Shift 2' },
] as const

export const JEE_ADVANCED_SHIFTS = [
  { value: 'paper_1', label: 'Paper 1' },
  { value: 'paper_2', label: 'Paper 2' },
] as const

export function formatPyqShift(shift?: string) {
  if (!shift) return null
  const all = [...JEE_MAIN_SHIFTS, ...JEE_ADVANCED_SHIFTS]
  return all.find(s => s.value === shift)?.label ?? shift.replace(/_/g, ' ').toUpperCase()
}

export function formatPyqExam(exam?: string) {
  if (exam === 'jee_advanced') return 'JEE Advanced'
  if (exam === 'jee_main') return 'JEE Main'
  return 'PYQ'
}
