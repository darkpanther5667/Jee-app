-- Batch 5 - Chunk 5 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '12916c8b-9787-4c0b-a5ad-56ee08c363be',
    'chemistry',
    '12',
    'Practical Organic Chemistry',
    'Detection Of Extra Elements And Functional Groups',
    'medium',
    'single_correct',
    '<p>Compound that will give positive Lassaigne''s test for both nitrogen and halogen is :</p>',
    '[{"id": "A", "text": "$$\\mathrm{NH_2OH.HCl}$$"}, {"id": "B", "text": "$$\\mathrm{N_2H_4.HCl}$$"}, {"id": "C", "text": "$$\\mathrm{CH_3NH_2.HCl}$$"}, {"id": "D", "text": "$$\\mathrm{NH_4Cl}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$\mathrm{CH}_{3} \mathrm{NH}_{2} \cdot \mathrm{HCl}$ will give positive Lassaigne''s test for both nitrogen and halogen.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'practical_organic_chemistry'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a62634f8-ea1f-4a4b-b235-75d94fae49dd',
    'chemistry',
    '11',
    'S Block Elements',
    'Physiochemical Trends In Alkali Metals',
    'easy',
    'single_correct',
    'The main oxides formed on combustion of Li, Na and K in excess of air are, respectively :',
    '[{"id": "A", "text": "LiO<sub>2</sub>, Na<sub>2</sub>O<sub>2</sub> and K<sub>2</sub>O"}, {"id": "B", "text": "Li<sub>2</sub>O<sub>2</sub>, Na<sub>2</sub>O<sub>2</sub> and KO<sub>2</sub>"}, {"id": "C", "text": "Li<sub>2</sub>O, Na<sub>2</sub>O<sub>2</sub> and KO<sub>2</sub>"}, {"id": "D", "text": "Li<sub>2</sub>O, Na<sub>2</sub>O and KO<sub>2</sub>"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'On heating with excess of air $$Li,$$ $$Na$$ and $$K$$ forms following oxides 
<br><br>$$4Li + {O_2}\,\,\buildrel \, \over
 \longrightarrow \,\,\mathop {2L{i_2}O\,\,\,\,\,\,\,\,\,\,}\limits_{Lithium\,\,\,\,monoxide} \,$$ 
<br><br>$$2Na + {O_2}\,\,\buildrel {575\,\,K} \over
 \longrightarrow \,\,\mathop {N{a_2}{O_2}\,\,\,\,\,\,\,\,\,\,\,}\limits_{Sodium\,\,\,peroxide} $$ 
<br><br>$$K + {O_2}\,\,\buildrel \, \over
 \longrightarrow \,\,\mathop {K{O_2}\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,}\limits_{Potassium\,\,\,\sup eroxise} $$',
    4,
    -1,
    true,
    2016,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 's_block_elements'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'd5a8d888-2456-4e5e-83c5-f9a05d6eaf0b',
    'chemistry',
    '11',
    'S Block Elements',
    'Physiochemical Trends In Alkaline Earth Metals',
    'medium',
    'single_correct',
    '<p>The correct order of hydration enthalpies is</p>
<p>(A) K$$^+$$</p>
<p>(B) Rb$$^+$$</p>
<p>(C) Mg$$^{2+}$$</p>
<p>(D) Cs$$^+$$</p>
<p>(E) Ca$$^{2+}$$</p>
<p>Choose the correct answer from the options given below :</p>',
    '[{"id": "A", "text": "E > C > A > B > D"}, {"id": "B", "text": "C > A > E > B > D"}, {"id": "C", "text": "C > E > A > D > B"}, {"id": "D", "text": "C > E > A > B > D"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Hydration enthalpy $\propto$ charge density
<br/><br/>Charge density means $${{Magnitude\,of\,Charge} \over {Ionic\,Radius}}$$.
<br/><br/>
$\therefore$ The correct order of charge density is
<br/><br/>
$$
\mathrm{Mg}^{2+}>\mathrm{Ca}^{2+}>\mathrm{K}^{+}>\mathrm{Rb}^{+}>\mathrm{Cs}^{+}
$$
<br/><br/>
$\therefore$ The order of hydration enthalpy
<br/><br/>
$$
C>E>A>B>D
$$',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 's_block_elements'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'eef13448-57c6-4f0e-871b-914ea03911d8',
    'chemistry',
    '12',
    'Solid State',
    'Crystal Structure Of Solids',
    'medium',
    'single_correct',
    'An element has a face-centred cubic (fcc) structure with a cell edge of $$a$$. The distance between the centres of
two nearest tetrahedral voids in the lattice is :',
    '[{"id": "A", "text": "$$a$$"}, {"id": "B", "text": "$${3 \\over 2}a$$"}, {"id": "C", "text": "$${a \\over 2}$$"}, {"id": "D", "text": "$$\\sqrt 2 a$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'In FCC, tetrahedral voids are located on the
body diagonal at a <br><br>distance of $${{\sqrt 3 a} \over 4}$$ from the
corner. Together they form a smaller cube of
edge length $${a \over 2}$$.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'solid_state'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e3c8f8be-9655-4f27-a437-1e19d1a7f118',
    'chemistry',
    '12',
    'Solutions',
    'Relative Lowering Of Vapour Pressure And Roults Law',
    'medium',
    'single_correct',
    'A set of solutions is prepared using 180 g of
water as a solvent and 10 g of different nonvolatile solutes A, B and C. The relative
lowering of vapour pressure in the presence of
these solutes are in the order :<br><br>[Given, molar
mass of A = 100 g mol<sup>–1</sup>;

COMMIT;