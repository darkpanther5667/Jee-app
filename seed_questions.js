const fs = require('fs');
const path = require('path');
const { createClient } = require('@supabase/supabase-js');

// 1. Load Environmental Configurations from .env.local
const envPath = path.join(__dirname, '.env.local');
let supabaseUrl = '';
let supabaseAnonKey = '';

if (fs.existsSync(envPath)) {
  const envContent = fs.readFileSync(envPath, 'utf-8');
  const urlMatch = envContent.match(/NEXT_PUBLIC_SUPABASE_URL\s*=\s*(.*)/);
  const keyMatch = envContent.match(/NEXT_PUBLIC_SUPABASE_ANON_KEY\s*=\s*(.*)/);
  
  if (urlMatch && urlMatch[1]) supabaseUrl = urlMatch[1].trim();
  if (keyMatch && keyMatch[1]) supabaseAnonKey = keyMatch[1].trim();
}

console.log("=========================================");
console.log("🚀 CLEARJEE QUESTIONS ENGINE SEEDER");
console.log("=========================================");

const newQuestions = [
  {
    "id": "2782b13c-04c3-42e1-85bc-22340b070001",
    "subject": "physics",
    "class": "11",
    "chapter": "Kinematics",
    "topic": "Projectile Motion",
    "difficulty": "medium",
    "question_type": "single_correct",
    "question_text": "A projectile is thrown with an initial velocity of $\\vec{v} = 3\\hat{i} + 4\\hat{j}$ m/s from the ground. Find the horizontal range of the projectile. (Take $g = 10\\text{ m/s}^2$)",
    "options": [
      {"id": "A", "text": "$1.2\\text{ m}$"},
      {"id": "B", "text": "$2.4\\text{ m}$"},
      {"id": "C", "text": "$4.8\\text{ m}$"},
      {"id": "D", "text": "$9.6\\text{ m}$"}
    ],
    "correct_answer": {"type": "single", "value": "B"},
    "solution_text": "Given initial velocity $\\vec{v} = u_x\\hat{i} + u_y\\hat{j} = 3\\hat{i} + 4\\hat{j}$ m/s.\nTherefore, $u_x = 3$ m/s and $u_y = 4$ m/s.\nHorizontal Range $R$ is given by:\n$$R = \\frac{2 u_x u_y}{g}$$\nSubstituting the values:\n$$R = \\frac{2 \\times 3 \\times 4}{10} = \\frac{24}{10} = 2.4\\text{ meters}$$\nHence, the correct option is **B**.",
    "is_pyq": true,
    "pyq_year": 2021,
    "pyq_exam": "jee_main",
    "pyq_shift": "jan_s2",
    "source": "pyq",
    "tags": ["Kinematics", "Projectile Motion", "Range"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  {
    "id": "e7b8c2e9-4458-45e7-a9a3-5c02607e0002",
    "subject": "physics",
    "class": "12",
    "chapter": "Electrostatics",
    "topic": "Electric Potential",
    "difficulty": "hard",
    "question_type": "numerical",
    "question_text": "Three point charges $q$, $-2q$, and $q$ are located along the x-axis at $x = -a$, $x = 0$, and $x = a$ respectively. The electric potential $V(x)$ at a far distance $x \\gg a$ is proportional to $x^{-n}$. What is the value of $n$?",
    "options": [],
    "correct_answer": {"type": "numerical", "value": 3},
    "solution_text": "The charge configuration consists of three point charges: $q$ at $x = -a$, $-2q$ at $x = 0$, and $q$ at $x = a$.\nThis is a linear electric quadrupole.\nThe total charge $Q_{tot} = q - 2q + q = 0$.\nThe dipole moment $\\vec{p} = q(-a\\hat{i}) + q(a\\hat{i}) = 0$.\nSince both the total charge and the dipole moment are zero, the leading term in the multipole expansion of the potential is the quadrupole term.\nThe electric potential of a quadrupole at a far distance $x \\gg a$ falls off as $x^{-3}$.\nTherefore, comparing with $x^{-n}$, we get:\n$$n = 3$$\nHence, the correct answer is **3**.",
    "is_pyq": true,
    "pyq_year": 2018,
    "pyq_exam": "jee_advanced",
    "source": "pyq",
    "tags": ["Electrostatics", "Quadrupole", "Potential"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": 0
  },
  {
    "id": "a4d5b2cf-cd2b-426b-9ee2-602c7ee00003",
    "subject": "physics",
    "class": "11",
    "chapter": "Thermodynamics",
    "topic": "Carnot Cycle",
    "difficulty": "medium",
    "question_type": "single_correct",
    "question_text": "A Carnot engine has an efficiency of $\\eta = 40\\%$. The temperature of the sink is $300\\text{ K}$. By how much should the temperature of the source be increased to make its efficiency $60\\%$?",
    "options": [
      {"id": "A", "text": "$100\\text{ K}$"},
      {"id": "B", "text": "$250\\text{ K}$"},
      {"id": "C", "text": "$150\\text{ K}$"},
      {"id": "D", "text": "$200\\text{ K}$"}
    ],
    "correct_answer": {"type": "single", "value": "B"},
    "solution_text": "Efficiency of a Carnot engine is given by:\n$$\\eta = 1 - \\frac{T_{sink}}{T_{source}}$$\n**Case 1:** $\\eta_1 = 0.40$, $T_{sink} = 300\\text{ K}$.\n$$0.40 = 1 - \\frac{300}{T_{source1}} \\implies \\frac{300}{T_{source1}} = 0.60 \\implies T_{source1} = 500\\text{ K}$$\n\n**Case 2:** $\\eta_2 = 0.60$, $T_{sink} = 300\\text{ K}$.\n$$0.60 = 1 - \\frac{300}{T_{source2}} \\implies \\frac{300}{T_{source2}} = 0.40 \\implies T_{source2} = 750\\text{ K}$$\n\n**Increase in source temperature:**\n$$\\Delta T = T_{source2} - T_{source1} = 750\\text{ K} - 500\\text{ K} = 250\\text{ K}$$\nHence, the correct option is **B**.",
    "is_pyq": true,
    "pyq_year": 2020,
    "pyq_exam": "jee_main",
    "pyq_shift": "sep_s1",
    "source": "pyq",
    "tags": ["Thermodynamics", "Carnot Engine", "Efficiency"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  {
    "id": "d0f88e1a-85b9-467b-be54-c917b2f00004",
    "subject": "chemistry",
    "class": "12",
    "chapter": "Coordination Compounds",
    "topic": "Crystal Field Theory",
    "difficulty": "medium",
    "question_type": "single_correct",
    "question_text": "Which of the following complex ions has the highest value of crystal field splitting energy ($\\Delta_o$)?",
    "options": [
      {"id": "A", "text": "$[Co(H_2O)_6]^{3+}$"},
      {"id": "B", "text": "$[Co(NH_3)_6]^{3+}$"},
      {"id": "C", "text": "$[Co(CN)_6]^{3-}$"},
      {"id": "D", "text": "$[Co(C_2O_4)_3]^{3-}$"}
    ],
    "correct_answer": {"type": "single", "value": "C"},
    "solution_text": "The crystal field splitting energy ($\\Delta_o$) depends heavily on the nature of the ligand according to the spectrochemical series.\nThe spectrochemical series ordered by ligand field strength is:\n$$I^- < Br^- < S^{2-} < F^- < C_2O_4^{2-} < H_2O < NH_3 < en < NO_2^- < CN^-$$\nAmong the ligands given ($H_2O$, $NH_3$, $CN^-$, $C_2O_4^{2-}$), cyanide ($CN^-$) is a strong field ligand and produces the largest crystal field splitting.\nTherefore, $[Co(CN)_6]^{3-}$ has the highest $\\Delta_o$ value.\nHence, the correct option is **C**.",
    "is_pyq": true,
    "pyq_year": 2022,
    "pyq_exam": "jee_main",
    "pyq_shift": "apr_s2",
    "source": "pyq",
    "tags": ["Coordination Chemistry", "CFT", "Spectrochemical Series"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  {
    "id": "8e9b2fc7-7b6c-482a-bd12-f19b22a00005",
    "subject": "chemistry",
    "class": "11",
    "chapter": "Chemical Thermodynamics",
    "topic": "Gibbs Free Energy",
    "difficulty": "hard",
    "question_type": "single_correct",
    "question_text": "For a reaction, $\\Delta H = -10.0\\text{ kcal/mol}$ and $\\Delta S = -20.0\\text{ cal/K}\\cdot\\text{mol}$. At what temperature will the reaction be at equilibrium? (Take $1\\text{ cal} = 4.184\\text{ J}$)",
    "options": [
      {"id": "A", "text": "$500\\text{ K}$"},
      {"id": "B", "text": "$250\\text{ K}$"},
      {"id": "C", "text": "$300\\text{ K}$"},
      {"id": "D", "text": "$400\\text{ K}$"}
    ],
    "correct_answer": {"type": "single", "value": "A"},
    "solution_text": "For a reaction to be at equilibrium, the change in Gibbs free energy must be zero:\n$$\\Delta G = \\Delta H - T\\Delta S = 0$$\nThis implies:\n$$T = \\frac{\\Delta H}{\\Delta S}$$\nGiven:\n$$\\Delta H = -10.0\\text{ kcal/mol} = -10.0 \\times 10^3\\text{ cal/mol}$$\n$$\\Delta S = -20.0\\text{ cal/K}\\cdot\\text{mol}$$\nSubstituting the values:\n$$T = \\frac{-10000}{-20} = 500\\text{ Kelvin}$$\nHence, the correct option is **A**.",
    "is_pyq": true,
    "pyq_year": 2023,
    "pyq_exam": "jee_main",
    "pyq_shift": "jan_s1",
    "source": "pyq",
    "tags": ["Thermodynamics", "Gibbs Free Energy", "Equilibrium"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  {
    "id": "c1f7a2db-69bc-46be-9ee2-602f78ea0006",
    "subject": "chemistry",
    "class": "12",
    "chapter": "Chemical Kinetics",
    "topic": "Order of Reaction",
    "difficulty": "medium",
    "question_type": "numerical",
    "options": [],
    "question_text": "For a first-order reaction $A \\rightarrow B$, the half-life period is $69.3\\text{ minutes}$. What is the rate constant of this reaction in $10^{-3}\\text{ min}^{-1}$?",
    "correct_answer": {"type": "numerical", "value": 10},
    "solution_text": "For a first-order reaction, the half-life $t_{1/2}$ is related to the rate constant $k$ by the formula:\n$$t_{1/2} = \\frac{\\ln 2}{k} \\approx \\frac{0.693}{k}$$\nGiven $t_{1/2} = 69.3\\text{ minutes}$, we solve for $k$:\n$$k = \\frac{0.693}{69.3} = 0.01\\text{ min}^{-1} = 10 \\times 10^{-3}\\text{ min}^{-1}$$\nThus, the rate constant is $10$ in units of $10^{-3}\\text{ min}^{-1}$.\nHence, the correct answer is **10**.",
    "is_pyq": true,
    "pyq_year": 2021,
    "pyq_exam": "jee_main",
    "pyq_shift": "apr_s1",
    "source": "pyq",
    "tags": ["Kinetics", "First Order", "Half Life"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": 0
  },
  {
    "id": "a1f7a3b4-e2b2-4d2b-8ee2-702f78eb0007",
    "subject": "mathematics",
    "class": "11",
    "chapter": "Quadratic Equations",
    "topic": "Roots relation",
    "difficulty": "medium",
    "question_type": "single_correct",
    "question_text": "If $\\alpha$ and $\\beta$ are the roots of the quadratic equation $x^2 - 5x + 6 = 0$, evaluate the value of $\\alpha^3 + \\beta^3$.",
    "options": [
      {"id": "A", "text": "$35$"},
      {"id": "B", "text": "$9$"},
      {"id": "C", "text": "$27$"},
      {"id": "D", "text": "$45$"}
    ],
    "correct_answer": {"type": "single", "value": "A"},
    "solution_text": "For the quadratic equation $x^2 - 5x + 6 = 0$:\nSum of roots $\\alpha + \\beta = 5$\nProduct of roots $\\alpha \\beta = 6$\nWe need to compute $\\alpha^3 + \\beta^3$:\n$$\\alpha^3 + \\beta^3 = (\\alpha + \\beta)^3 - 3\\alpha\\beta(\\alpha + \\beta)$$\nSubstituting the values:\n$$\\alpha^3 + \\beta^3 = (5)^3 - 3(6)(5)$$\n$$\\alpha^3 + \\beta^3 = 125 - 90 = 35$$\nHence, the correct option is **A**.",
    "is_pyq": true,
    "pyq_year": 2017,
    "pyq_exam": "jee_main",
    "source": "pyq",
    "tags": ["Algebra", "Quadratic Equations", "Roots Properties"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  {
    "id": "e2f7b8ea-9bc2-4d2b-9ee2-702f78ec0008",
    "subject": "mathematics",
    "class": "12",
    "chapter": "Matrices & Determinants",
    "topic": "System of Equations",
    "difficulty": "hard",
    "question_type": "single_correct",
    "question_text": "Let $A$ be a $3 \\times 3$ matrix such that $\\text{det}(A) = 4$. What is the value of $\\text{det}(3 A^{-1}) \\times \\text{det}(\\text{adj}(2A))$?",
    "options": [
      {"id": "A", "text": "$2^6 \\times 3^3$"},
      {"id": "B", "text": "$2^8 \\times 3^3$"},
      {"id": "C", "text": "$2^6 \\times 3^4$"},
      {"id": "D", "text": "$2^4 \\times 3^3$"}
    ],
    "correct_answer": {"type": "single", "value": "B"},
    "solution_text": "Given $A$ is a $3 \\times 3$ matrix with $\\text{det}(A) = 4$.\nWe want to compute $X = \\text{det}(3 A^{-1}) \\times \\text{det}(\\text{adj}(2A))$.\n\n**Step 1:** Compute $\\text{det}(3 A^{-1})$.\nFor a $n \\times n$ matrix $M$, $\\text{det}(k M) = k^n \\text{det}(M)$. Since $n = 3$:\n$$\\text{det}(3 A^{-1}) = 3^3 \\text{det}(A^{-1}) = 27 \\times \\frac{1}{\\text{det}(A)} = \\frac{27}{4}$$\n\n**Step 2:** Compute $\\text{det}(\\text{adj}(2A))$.\nRecall that $\\text{det}(\\text{adj}(M)) = (\\text{det}(M))^{n-1} = (\\text{det}(M))^2$ for $n = 3$.\nHere $M = 2A$. Thus:\n$$\\text{det}(2A) = 2^3 \\text{det}(A) = 8 \\times 4 = 32$$\nTherefore:\n$$\\text{det}(\\text{adj}(2A)) = (32)^2 = 1024 = 2^{10}$$\n\n**Step 3:** Compute product $X$.\n$$X = \\frac{27}{4} \\times 2^{10} = 27 \\times 2^8 = 3^3 \\times 2^8$$\nHence, the correct option is **B**.",
    "is_pyq": true,
    "pyq_year": 2024,
    "pyq_exam": "jee_advanced",
    "source": "pyq",
    "tags": ["Algebra", "Matrices", "Determinant Rules"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  {
    "id": "b0f78eca-9bc2-46be-9ee2-602f78ed0009",
    "subject": "mathematics",
    "class": "12",
    "chapter": "Probability",
    "topic": "Bayes Theorem",
    "difficulty": "hard",
    "question_type": "numerical",
    "options": [],
    "question_text": "An urn contains 5 red and 5 black balls. A ball is drawn at random, its color is noted, and then it is returned to the urn with 2 additional balls of the same color. If a second ball is now drawn at random, the probability that the second ball is red is $P$. Find the value of $10 P$.",
    "correct_answer": {"type": "numerical", "value": 5},
    "solution_text": "Initially, the urn has 5 Red (R) and 5 Black (B) balls. Total balls = 10.\nLet $R_1$ be the event of drawing a Red ball on the first draw, and $B_1$ be drawing a Black ball.\n$$P(R_1) = \\frac{5}{10} = \\frac{1}{2}, \\quad P(B_1) = \\frac{5}{10} = \\frac{1}{2}$$\n\n- **If $R_1$ occurs:** 2 more Red balls are added. Urn now contains 7 Red and 5 Black balls. Total = 12.\n  $$P(R_2 | R_1) = \\frac{7}{12}$$\n- **If $B_1$ occurs:** 2 more Black balls are added. Urn now contains 5 Red and 7 Black balls. Total = 12.\n  $$P(R_2 | B_1) = \\frac{5}{12}$$\n\nUsing Law of Total Probability:\n$$P(R_2) = P(R_2 | R_1)P(R_1) + P(R_2 | B_1)P(B_1)$$\n$$P(R_2) = \\left(\\frac{7}{12}\\right)\\left(\\frac{1}{2}\\right) + \\left(\\frac{5}{12}\\right)\\left(\\frac{1}{2}\\right) = \\frac{7}{24} + \\frac{5}{24} = \\frac{12}{24} = \\frac{1}{2}$$\nThus, $P = 0.5$, which means:\n$$10 P = 10 \\times 0.5 = 5$$\nHence, the correct answer is **5**.",
    "is_pyq": true,
    "pyq_year": 2019,
    "pyq_exam": "jee_main",
    "pyq_shift": "apr_s2",
    "source": "pyq",
    "tags": ["Probability", "Total Probability", "Bayes Theorem"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": 0
  }
];

// 2. Read Existing Questions
const questionsPath = path.join(__dirname, 'src', 'app', 'actions', 'mock_questions.json');
let existingQuestions = [];

if (fs.existsSync(questionsPath)) {
  try {
    existingQuestions = JSON.parse(fs.readFileSync(questionsPath, 'utf-8'));
  } catch (err) {
    console.error("Error reading existing questions file, starting fresh.");
  }
}

// 3. Merge without duplication
const mergedQuestions = [...existingQuestions];
newQuestions.forEach(newQ => {
  const exists = mergedQuestions.some(q => q.id === newQ.id || q.question_text === newQ.question_text);
  if (!exists) {
    mergedQuestions.push(newQ);
  }
});

// 4. Save to JSON File
fs.writeFileSync(questionsPath, JSON.stringify(mergedQuestions, null, 2));
console.log(`✅ Success! Seeded mock_questions.json with 9 premium JEE questions. Total Questions: ${mergedQuestions.length}`);

// 5. If Supabase is configured, seed into the live database table!
if (supabaseUrl && supabaseAnonKey) {
  console.log("🔗 Supabase is configured! Attempting to seed live DB table public.questions...");
  
  const supabase = createClient(supabaseUrl, supabaseAnonKey);
  
  // Format questions for PostgreSQL upsert
  const dbQuestions = mergedQuestions.map(q => ({
    id: q.id.includes('mock-q-') ? undefined : q.id, // Avoid using non-UUID IDs in PostgreSQL
    subject: q.subject,
    class: q.class,
    chapter: q.chapter,
    topic: q.topic || null,
    difficulty: q.difficulty,
    question_type: q.question_type,
    question_text: q.question_text,
    options: q.options || [],
    correct_answer: q.correct_answer,
    solution_text: q.solution_text || null,
    is_pyq: !!q.is_pyq,
    pyq_year: q.pyq_year || null,
    pyq_exam: q.pyq_exam || null,
    pyq_shift: q.pyq_shift || null,
    source: q.source || 'original',
    tags: q.tags || [],
    verified: !!q.verified,
    marks_correct: q.marks_correct || 4,
    marks_incorrect: q.marks_incorrect || 0
  })).filter(q => q.id !== undefined); // Only seed standard UUID questions
  
  supabase.from('questions')
    .upsert(dbQuestions, { onConflict: 'id' })
    .then(({ data, error }) => {
      if (error) {
        console.error("❌ Supabase seeding failed:", error.message);
      } else {
        console.log("🎉 Successfully upserted questions to live Supabase Postgres schema!");
      }
      process.exit(0);
    })
    .catch(err => {
      console.error("❌ Exception during Supabase seeding:", err);
      process.exit(1);
    });
} else {
  console.log("ℹ️ Supabase not configured in .env.local. Running in Sandbox Mock mode.");
  process.exit(0);
}
