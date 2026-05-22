import { Document, Page, Text, View, StyleSheet, pdf } from '@react-pdf/renderer';

const styles = StyleSheet.create({
  page: {
    flexDirection: 'column',
    backgroundColor: '#ffffff',
    padding: 30,
  },
  header: {
    fontSize: 24,
    marginBottom: 20,
    textAlign: 'center',
    color: '#1A56DB',
  },
  section: {
    margin: 10,
    padding: 10,
  },
  title: {
    fontSize: 18,
    marginBottom: 10,
    color: '#0F172A',
  },
  text: {
    fontSize: 12,
    marginBottom: 5,
    color: '#64748B',
  },
  scoreCard: {
    backgroundColor: '#F8FAFC',
    padding: 15,
    borderRadius: 8,
    marginBottom: 20,
  },
  scoreText: {
    fontSize: 16,
    color: '#1A56DB',
    fontWeight: 'bold',
  },
});

interface TestReportProps {
  testName: string;
  userName: string;
  score: number;
  totalMarks: number;
  correct: number;
  incorrect: number;
  unattempted: number;
  percentile: number;
  subjectScores: {
    physics: number;
    chemistry: number;
    mathematics: number;
  };
}

export const TestReport = ({
  testName,
  userName,
  score,
  totalMarks,
  correct,
  incorrect,
  unattempted,
  percentile,
  subjectScores,
}: TestReportProps) => (
  <Document>
    <Page size="A4" style={styles.page}>
      <View style={styles.section}>
        <Text style={styles.header}>JEE App - Test Report</Text>
        <Text style={styles.title}>{testName}</Text>
        <Text style={styles.text}>Student: {userName}</Text>
      </View>

      <View style={styles.scoreCard}>
        <Text style={styles.scoreText}>Score Summary</Text>
        <Text style={styles.text}>Total Score: {score}/{totalMarks}</Text>
        <Text style={styles.text}>Correct Answers: {correct}</Text>
        <Text style={styles.text}>Incorrect Answers: {incorrect}</Text>
        <Text style={styles.text}>Unattempted: {unattempted}</Text>
        <Text style={styles.text}>Percentile: {percentile.toFixed(2)}</Text>
      </View>

      <View style={styles.section}>
        <Text style={styles.title}>Subject-wise Performance</Text>
        <Text style={styles.text}>Physics: {subjectScores.physics}</Text>
        <Text style={styles.text}>Chemistry: {subjectScores.chemistry}</Text>
        <Text style={styles.text}>Mathematics: {subjectScores.mathematics}</Text>
      </View>
    </Page>
  </Document>
);

export const generateTestReportPDF = async (props: TestReportProps) => {
  const blob = await pdf(<TestReport {...props} />).toBlob();
  return blob;
};
