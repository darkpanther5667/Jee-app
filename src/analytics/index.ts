// Analytics utilities for calculating scores, percentiles, etc.

export const calculateScore = (responses: Record<string, any>, questions: any[]) => {
  let score = 0;
  const subjectScores: Record<string, number> = { physics: 0, chemistry: 0, mathematics: 0 };

  questions.forEach((question) => {
    const response = responses[question.id];
    if (response) {
      // Simple scoring logic - would need to be expanded for different question types
      if (
        (question.question_type === 'single_correct' && response === question.correct_answer) ||
        (question.question_type === 'multiple_correct' && 
         JSON.stringify(response.sort()) === JSON.stringify(question.correct_answer.sort())) ||
        (question.question_type === 'numerical' && 
         parseFloat(response) === parseFloat(question.correct_answer))
      ) {
        score += question.marks_correct;
        subjectScores[question.subject as keyof typeof subjectScores] += question.marks_correct;
      } else {
        score += question.marks_incorrect;
        subjectScores[question.subject as keyof typeof subjectScores] += question.marks_incorrect;
      }
    }
  });

  return {
    totalScore: score,
    subjectScores,
  };
};

export const calculatePercentile = (score: number, allScores: number[]): number => {
  if (allScores.length === 0) return 0;
  const scoresBelow = allScores.filter((s) => s < score).length;
  return (scoresBelow / allScores.length) * 100;
};

export const calculateSubjectWiseAnalysis = (
  responses: Record<string, any>,
  questions: any[]
) => {
  const analysis: Record<string, {
    attempted: number;
    correct: number;
    accuracy: number;
  }> = {
    physics: { attempted: 0, correct: 0, accuracy: 0 },
    chemistry: { attempted: 0, correct: 0, accuracy: 0 },
    mathematics: { attempted: 0, correct: 0, accuracy: 0 },
  };

  questions.forEach((question) => {
    const response = responses[question.id];
    if (response !== undefined) {
      analysis[question.subject as keyof typeof analysis].attempted++;
      
      let isCorrect = false;
      if (
        (question.question_type === 'single_correct' && response === question.correct_answer) ||
        (question.question_type === 'multiple_correct' && 
         JSON.stringify(response.sort()) === JSON.stringify(question.correct_answer.sort())) ||
        (question.question_type === 'numerical' && 
         parseFloat(response) === parseFloat(question.correct_answer))
      ) {
        isCorrect = true;
      }

      if (isCorrect) {
        analysis[question.subject as keyof typeof analysis].correct++;
      }
    }
  });

  // Calculate accuracy percentages
  Object.keys(analysis).forEach((subject) => {
    const subjectAnalysis = analysis[subject as keyof typeof analysis];
    if (subjectAnalysis.attempted > 0) {
      subjectAnalysis.accuracy = (subjectAnalysis.correct / subjectAnalysis.attempted) * 100;
    }
  });

  return analysis;
};