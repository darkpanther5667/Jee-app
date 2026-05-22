import Razorpay from 'razorpay';

export const razorpayInstance = new Razorpay({
  key_id: process.env.NEXT_PUBLIC_RAZORPAY_KEY_ID || '',
  key_secret: process.env.RAZORPAY_KEY_SECRET || '',
});

export interface PaymentOptions {
  amount: number;
  currency: string;
  receipt: string;
  notes: {
    userId: string;
    plan: string;
  };
}

export const createPaymentOrder = async (options: PaymentOptions) => {
  try {
    const order = await razorpayInstance.orders.create({
      amount: options.amount * 100, // Convert to paise
      currency: options.currency || 'INR',
      receipt: options.receipt,
      notes: options.notes,
    });
    return order;
  } catch (error) {
    console.error('Error creating Razorpay order:', error);
    throw error;
  }
};

export interface RazorpayPaymentOptions {
  key: string;
  amount: number;
  currency: string;
  name: string;
  description: string;
  order_id: string;
  handler: (response: any) => void;
  prefill: {
    name: string;
    email: string;
    contact: string;
  };
  theme: {
    color: string;
  };
}

export const openRazorpayCheckout = (options: RazorpayPaymentOptions) => {
  const rzp = new (window as any).Razorpay(options);
  rzp.open();
};
