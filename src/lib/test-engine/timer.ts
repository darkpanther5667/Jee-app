// Test engine utilities for timer, auto-submit, and state management

export interface TestTimerState {
  timeRemaining: number;
  isRunning: boolean;
  hasWarning: boolean;
}

export const createTimer = (durationMinutes: number): TestTimerState => ({
  timeRemaining: durationMinutes * 60,
  isRunning: true,
  hasWarning: false,
});

export const formatTime = (seconds: number): string => {
  const hours = Math.floor(seconds / 3600);
  const minutes = Math.floor((seconds % 3600) / 60);
  const secs = seconds % 60;
  return `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
};

export const shouldShowWarning = (timeRemaining: number, warningThreshold: number = 300): boolean => {
  return timeRemaining <= warningThreshold && timeRemaining > 0;
};

export interface QuestionState {
  visited: boolean;
  answered: boolean;
  markedForReview: boolean;
  answer: string | string[] | number | null;
}

export const createInitialQuestionState = (): QuestionState => ({
  visited: false,
  answered: false,
  markedForReview: false,
  answer: null,
});

export const shuffleQuestions = (questionIds: string[]): string[] => {
  const shuffled = [...questionIds];
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
  }
  return shuffled;
};
