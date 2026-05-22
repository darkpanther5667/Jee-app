import { Resend } from 'resend';

export const resend = new Resend(process.env.RESEND_API_KEY);

export const sendWelcomeEmail = async (email: string, name: string) => {
  try {
    const { data, error } = await resend.emails.send({
      from: 'JEE App <onboarding@resend.dev>',
      to: [email],
      subject: 'Welcome to JEE App!',
      html: `
        <h1>Welcome ${name}!</h1>
        <p>Thank you for joining JEE App - India's Smartest JEE Preparation Platform.</p>
        <p>Get started by taking your first mock test!</p>
      `,
    });

    if (error) {
      console.error('Error sending welcome email:', error);
      throw error;
    }

    return data;
  } catch (error) {
    console.error('Error sending welcome email:', error);
    throw error;
  }
};

export const sendTestResultEmail = async (
  email: string,
  name: string,
  testName: string,
  score: number,
  totalMarks: number,
  percentile: number
) => {
  try {
    const { data, error } = await resend.emails.send({
      from: 'JEE App <results@resend.dev>',
      to: [email],
      subject: `Your ${testName} Results`,
      html: `
        <h1>Test Results: ${testName}</h1>
        <p>Hi ${name},</p>
        <p>Here are your results:</p>
        <ul>
          <li>Score: ${score}/${totalMarks}</li>
          <li>Percentile: ${percentile.toFixed(2)}</li>
        </ul>
        <p>Keep practicing and improve your performance!</p>
      `,
    });

    if (error) {
      console.error('Error sending test result email:', error);
      throw error;
    }

    return data;
  } catch (error) {
    console.error('Error sending test result email:', error);
    throw error;
  }
};
