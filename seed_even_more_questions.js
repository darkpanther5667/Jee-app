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
console.log("🚀 CLEARJEE QUESTIONS ENGINE SEEDER — BATCH 3");
console.log("=========================================");

const batch3Questions = [
  // 1. Physics - Class 12 - Optics
  {
    "id": "2782b13c-04c3-42e1-85bc-22340b070030",
    "subject": "physics",
    "class": "12",
    "chapter": "Ray Optics",
    "topic": "Prism Deviation",
    "difficulty": "hard",
    "question_type": "single_correct",
    "question_text": "A ray of light is incident at an angle of $60^\\circ$ on one face of a prism of refracting angle $A = 30^\\circ$. The ray emerging from the other face makes an angle of $30^\\circ$ with the normal. Find the angle of deviation $\\delta$ produced by the prism.",
    "options": [
      {"id": "A", "text": "$30^\\circ$"},
      {"id": "B", "text": "$45^\\circ$"},
      {"id": "C", "text": "$60^\\circ$"},
      {"id": "D", "text": "$90^\\circ$"}
    ],
    "correct_answer": {"type": "single", "value": "C"},
    "solution_text": "For a prism, the relation between refracting angle $A$, angle of incidence $i$, angle of emergence $e$, and angle of deviation $\\delta$ is:\n$$i + e = A + \\delta$$\nGiven:\n- Angle of refracting $A = 30^\\circ$\n- Angle of incidence $i = 60^\\circ$\n- Angle of emergence $e = 30^\\circ$\n\nSubstituting these values into the formula:\n$$60^\\circ + 30^\\circ = 30^\\circ + \\delta$$\n$$90^\\circ = 30^\\circ + \\delta \\implies \\delta = 60^\\circ$$\nHence, the correct option is **C**.",
    "is_pyq": true,
    "pyq_year": 2021,
    "pyq_exam": "jee_main",
    "pyq_shift": "feb_s1",
    "source": "pyq",
    "tags": ["Optics", "Prism", "Deviation"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  // 2. Physics - Class 12 - Semiconductors
  {
    "id": "2782b13c-04c3-42e1-85bc-22340b070031",
    "subject": "physics",
    "class": "12",
    "chapter": "Semiconductors",
    "topic": "Logic Gates",
    "difficulty": "medium",
    "question_type": "single_correct",
    "question_text": "Identify the logic gate represented by the boolean expression $Y = \\overline{A \\cdot B} \\cdot \\overline{A + B}$.",
    "options": [
      {"id": "A", "text": "AND gate"},
      {"id": "B", "text": "NAND gate"},
      {"id": "C", "text": "NOR gate"},
      {"id": "D", "text": "OR gate"}
    ],
    "correct_answer": {"type": "single", "value": "C"},
    "solution_text": "Let us simplify the boolean expression using De Morgan's laws:\n$$Y = \\overline{A \\cdot B} \\cdot \\overline{A + B}$$\nRecall that:\n- $\\overline{A \\cdot B} = \\overline{A} + \\overline{B}$\n- $\\overline{A + B} = \\overline{A} \\cdot \\overline{B}$\n\nTherefore:\n$$Y = (\\overline{A} + \\overline{B}) \\cdot (\\overline{A} \\cdot \\overline{B})$$\nSince $\\overline{A} \\cdot \\overline{B}$ is a subset or mathematically dominant inside the product:\n$$Y = \\overline{A} \\cdot \\overline{B} \\cdot \\overline{A} + \\overline{A} \\cdot \\overline{B} \\cdot \\overline{B}$$\nUsing standard boolean algebraic identities:\n$$Y = \\overline{A} \\cdot \\overline{B} + \\overline{A} \\cdot \\overline{B} = \\overline{A} \\cdot \\overline{B}$$\nApplying De Morgan's law back:\n$$Y = \\overline{A + B}$$\nThis is the boolean expression for a **NOR gate**.\nHence, the correct option is **C**.",
    "is_pyq": true,
    "pyq_year": 2020,
    "pyq_exam": "jee_main",
    "pyq_shift": "jan_s2",
    "source": "pyq",
    "tags": ["Electronics", "Semiconductors", "Logic Gates"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  // 3. Physics - Class 11 - Fluid Mechanics
  {
    "id": "2782b13c-04c3-42e1-85bc-22340b070032",
    "subject": "physics",
    "class": "11",
    "chapter": "Fluid Mechanics",
    "topic": "Bernoulli's Theorem",
    "difficulty": "hard",
    "question_type": "single_correct",
    "question_text": "Water flows through a horizontal pipe of non-uniform cross-section. The velocity of water is $2\\text{ m/s}$ at a point where pressure is $20\\text{ kPa}$. At another point, the velocity of water is $4\\text{ m/s}$. Find the pressure at this point. (Take density of water = $1000\\text{ kg/m}^3$)",
    "options": [
      {"id": "A", "text": "$14\\text{ kPa}$"},
      {"id": "B", "text": "$16\\text{ kPa}$"},
      {"id": "C", "text": "$12\\text{ kPa}$"},
      {"id": "D", "text": "$10\\text{ kPa}$"}
    ],
    "correct_answer": {"type": "single", "value": "A"},
    "solution_text": "According to Bernoulli's Theorem for a horizontal pipe:\n$$P_1 + \\frac{1}{2} \\rho v_1^2 = P_2 + \\frac{1}{2} \\rho v_2^2$$\nGiven:\n- $P_1 = 20\\text{ kPa} = 20 \\times 10^3\\text{ Pa}$\n- $v_1 = 2\\text{ m/s}$\n- $v_2 = 4\\text{ m/s}$\n- $\\rho = 1000\\text{ kg/m}^3$\n\nSubstituting the values:\n$$20 \\times 10^3 + \\frac{1}{2} (1000) (2)^2 = P_2 + \\frac{1}{2} (1000) (4)^2$$\n$$20000 + 500(4) = P_2 + 500(16)$$\n$$20000 + 2000 = P_2 + 8000$$\n$$22000 = P_2 + 8000 \\implies P_2 = 14000\\text{ Pa} = 14\\text{ kPa}$$\nHence, the correct option is **A**.",
    "is_pyq": true,
    "pyq_year": 2019,
    "pyq_exam": "jee_main",
    "pyq_shift": "apr_s2",
    "source": "pyq",
    "tags": ["Fluids", "Fluid Mechanics", "Bernoulli"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  // 4. Chemistry - Class 12 - Coordination Compounds
  {
    "id": "2782b13c-04c3-42e1-85bc-22340b070033",
    "subject": "chemistry",
    "class": "12",
    "chapter": "Coordination Compounds",
    "topic": "Magnetic Moment",
    "difficulty": "medium",
    "question_type": "numerical",
    "question_text": "Find the spin-only magnetic moment (in B.M.) of the complex ion $[Fe(H_2O)_6]^{2+}$. (Atomic number of Fe = 26)",
    "options": [],
    "correct_answer": {"type": "numerical", "value": 4.9},
    "solution_text": "In $[Fe(H_2O)_6]^{2+}$, Iron is in the $+2$ oxidation state.\nThe electronic configuration of $Fe$ is $[Ar] 3d^6 4s^2$.\nTherefore, the configuration of $Fe^{2+}$ is $[Ar] 3d^6$.\nSince $H_2O$ is a weak field ligand, it does not cause pairing of electrons.\nThe $3d$ orbital configuration will have 4 unpaired electrons ($t_{2g}^4 e_g^2$).\n\nThe spin-only magnetic moment $\\mu$ is given by:\n$$\\mu = \\sqrt{n(n+2)}\\text{ B.M.}$$\nSubstituting $n = 4$:\n$$\\mu = \\sqrt{4(4+2)} = \\sqrt{24} \\approx 4.90\\text{ B.M.}$$\nHence, the correct answer is **4.9**.",
    "is_pyq": true,
    "pyq_year": 2021,
    "pyq_exam": "jee_main",
    "pyq_shift": "aug_s1",
    "source": "pyq",
    "tags": ["Inorganic Chemistry", "CFT", "Magnetic Moment"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": 0
  },
  // 5. Chemistry - Class 11 - Gaseous State
  {
    "id": "2782b13c-04c3-42e1-85bc-22340b070034",
    "subject": "chemistry",
    "class": "11",
    "chapter": "States of Matter",
    "topic": "Ideal Gas Deviation",
    "difficulty": "hard",
    "question_type": "single_correct",
    "question_text": "The compressibility factor $Z$ of a real gas at high pressure is equal to which of the following expressions?",
    "options": [
      {"id": "A", "text": "$1 - \\frac{a}{V_m R T}$"},
      {"id": "B", "text": "$1 + \\frac{P b}{R T}$"},
      {"id": "C", "text": "$1 - \\frac{P b}{R T}$"},
      {"id": "D", "text": "$1 + \\frac{a}{V_m R T}$"}
    ],
    "correct_answer": {"type": "single", "value": "B"},
    "solution_text": "The van der Waals equation of state for 1 mole of a real gas is:\n$$\\left( P + \\frac{a}{V_m^2} \\right) (V_m - b) = R T$$\nAt high pressures, $P \\gg \\frac{a}{V_m^2}$, so we can neglect the term $\\frac{a}{V_m^2}$:\n$$P (V_m - b) = R T$$\n$$P V_m - P b = R T \\implies P V_m = R T + P b$$\nDividing both sides by $R T$:\n$$\\frac{P V_m}{R T} = 1 + \\frac{P b}{R T}$$\nSince the compressibility factor is $Z = \\frac{P V_m}{R T}$, we get:\n$$Z = 1 + \\frac{P b}{R T}$$\nHence, the correct option is **B**.",
    "is_pyq": true,
    "pyq_year": 2018,
    "pyq_exam": "jee_main",
    "source": "pyq",
    "tags": ["Physical Chemistry", "Gaseous State", "Compressibility Factor"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  // 6. Mathematics - Class 12 - Limits
  {
    "id": "2782b13c-04c3-42e1-85bc-22340b070035",
    "subject": "mathematics",
    "class": "12",
    "chapter": "Limits",
    "topic": "L'Hopital Rule",
    "difficulty": "medium",
    "question_type": "single_correct",
    "question_text": "Evaluate the limit: $\\lim_{x \\to 0} \\frac{e^{x^2} - \\cos x}{x^2}$.",
    "options": [
      {"id": "A", "text": "$1$"},
      {"id": "B", "text": "$1.5$"},
      {"id": "C", "text": "$2$"},
      {"id": "D", "text": "$0.5$"}
    ],
    "correct_answer": {"type": "single", "value": "B"},
    "solution_text": "The limit is in the indeterminate form $\\frac{0}{0}$ because as $x \\to 0$, $e^{0} - \\cos(0) = 1 - 1 = 0$ and $x^2 = 0$.\nApplying L'Hopital's Rule, we differentiate the numerator and denominator with respect to $x$:\n$$\\lim_{x \\to 0} \\frac{\\frac{d}{dx}(e^{x^2} - \\cos x)}{\\frac{d}{dx}(x^2)} = \\lim_{x \\to 0} \\frac{2x e^{x^2} + \\sin x}{2x}$$\n$$\\lim_{x \\to 0} \\left( e^{x^2} + \\frac{\\sin x}{2x} \\right) = e^0 + \\frac{1}{2} \\lim_{x \\to 0} \\frac{\\sin x}{x} = 1 + \\frac{1}{2}(1) = 1.5$$\nHence, the correct option is **B**.",
    "is_pyq": true,
    "pyq_year": 2022,
    "pyq_exam": "jee_main",
    "pyq_shift": "jun_s2",
    "source": "pyq",
    "tags": ["Calculus", "Limits", "L'Hopital"],
    "verified": true,
    "marks_correct": 4,
    "marks_incorrect": -1
  },
  // 7. Mathematics - Class 11 - Straight Lines
  {
    "id": "2782b13c-04c3-42e1-85bc-22340b070036",
    "subject": "mathematics",
    "class": "11",
    "chapter": "Straight Lines",
    "topic": "Distance of Point",
    "difficulty": "medium",
    "question_type": "numerical",
    "question_text": "Find the perpendicular distance from the point $(3, 4)$ to the straight line $3x - 4y + 12 = 0$.",
    "options": [],
    "correct_answer": {"type": "numerical", "value": 1},
    "solution_text": "The perpendicular distance $d$ of a point $(x_1, y_1)$ from a straight line $Ax + By + C = 0$ is given by:\n$$d = \\frac{|Ax_1 + By_1 + C|}{\\sqrt{A^2 + B^2}}$$\nGiven:\n- Point $(x_1, y_1) = (3, 4)$\n- Line $3x - 4y + 12 = 0$\n\nSubstituting the values:\n$$d = \\frac{|3(3) - 4(4) + 12|}{\\sqrt{3^2 + (-4)^2}} = \\frac{|9 - 16 + 12|}{\\sqrt{9 + 16}} = \\frac{|5|}{\\sqrt{25}} = \\frac{5}{5} = 1$$\nHence, the correct answer is **1**.",
    "is_pyq": true,
    "pyq_year": 2018,
    "pyq_exam": "jee_main",
    "source": "pyq",
    "tags": ["Coordinate Geometry", "Straight Lines", "Distance Formula"],
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
    console.error("Error reading existing questions file.");
  }
}

// 3. Merge without duplication
const mergedQuestions = [...existingQuestions];
batch3Questions.forEach(newQ => {
  const exists = mergedQuestions.some(q => q.id === newQ.id || q.question_text === newQ.question_text);
  if (!exists) {
    mergedQuestions.push(newQ);
  }
});

// 4. Save to JSON File
fs.writeFileSync(questionsPath, JSON.stringify(mergedQuestions, null, 2));
console.log(`✅ Success! Seeded mock_questions.json with 7 additional batch 3 questions. Total Questions: ${mergedQuestions.length}`);

// 5. Save SQL for Direct Supabase Injection
if (supabaseUrl && supabaseAnonKey) {
  const dbQuestions = batch3Questions.map(q => ({
    id: q.id,
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
  }));
  
  fs.writeFileSync(path.join(__dirname, 'batch3_seed.sql'), generateSQL(dbQuestions));
  console.log("💾 Wrote batch3_seed.sql for direct database executions.");
}

function generateSQL(questions) {
  let sql = `INSERT INTO public.questions (
  id, subject, class, chapter, topic, difficulty, question_type, question_text, 
  options, correct_answer, solution_text, is_pyq, pyq_year, pyq_exam, pyq_shift, 
  source, tags, verified, marks_correct, marks_incorrect
) VALUES\n`;

  const values = questions.map(q => {
    const escText = q.question_text.replace(/'/g, "''");
    const escSol = q.solution_text.replace(/'/g, "''");
    const optJson = JSON.stringify(q.options).replace(/'/g, "''");
    const ansJson = JSON.stringify(q.correct_answer).replace(/'/g, "''");
    
    return `('${q.id}', '${q.subject}', '${q.class}', '${q.chapter.replace(/'/g, "''")}', '${q.topic.replace(/'/g, "''")}', '${q.difficulty}', '${q.question_type}', 
 '${escText}',
 '${optJson}'::jsonb,
 '${ansJson}'::jsonb,
 '${escSol}',
 ${q.is_pyq}, ${q.pyq_year || 'NULL'}, ${q.pyq_exam ? `'${q.pyq_exam}'` : 'NULL'}, ${q.pyq_shift ? `'${q.pyq_shift}'` : 'NULL'}, 
 '${q.source}', ARRAY[${q.tags.map(t => `'${t}'`).join(',')}], ${q.verified}, ${q.marks_correct}, ${q.marks_incorrect})`;
  });

  sql += values.join(',\n') + `\nON CONFLICT (id) DO UPDATE SET
  subject = EXCLUDED.subject,
  class = EXCLUDED.class,
  chapter = EXCLUDED.chapter,
  topic = EXCLUDED.topic,
  difficulty = EXCLUDED.difficulty,
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options,
  correct_answer = EXCLUDED.correct_answer,
  solution_text = EXCLUDED.solution_text,
  is_pyq = EXCLUDED.is_pyq,
  pyq_year = EXCLUDED.pyq_year,
  pyq_exam = EXCLUDED.pyq_exam,
  pyq_shift = EXCLUDED.pyq_shift,
  source = EXCLUDED.source,
  tags = EXCLUDED.tags,
  verified = EXCLUDED.verified,
  marks_correct = EXCLUDED.marks_correct,
  marks_incorrect = EXCLUDED.marks_incorrect;`;

  return sql;
}
