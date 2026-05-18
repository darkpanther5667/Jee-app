-- Batch 5 - Chunk 4 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '899807d3-8c0f-4d54-8739-78b017057547',
    'chemistry',
    '12',
    'P Block Elements',
    'Group 15 Elements Nitrogen Family',
    'easy',
    'single_correct',
    'Chemical nature of the nitrogen oxide compound obtained from a reaction of concentrated nitric acid and P<sub>4</sub>O<sub>10</sub> (in 4 : 1 ratio) is :',
    '[{"id": "A", "text": "acidic"}, {"id": "B", "text": "basic"}, {"id": "C", "text": "amphoteric"}, {"id": "D", "text": "neutral"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>Chemical nature of the nitrogen pentaoxide compound obtained
from a reaction of concentrated nitric acid and P<sub>4</sub>O<sub>10</sub> (in 4 : 1 ratio) is
acidic.</p>
<p>Chemical reaction is as follows</p>
<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l0ads4jf/5608738b-a31c-4082-89fc-529e5bae6218/594b2cb0-9a9b-11ec-9f52-c900a8226ba7/file-1l0ads4jg.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l0ads4jf/5608738b-a31c-4082-89fc-529e5bae6218/594b2cb0-9a9b-11ec-9f52-c900a8226ba7/file-1l0ads4jg.png" loading="lazy" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'dd0066ef-fac8-4d23-af9c-bd6c61809d2b',
    'chemistry',
    '12',
    'P Block Elements',
    'Group 13 Elements Boron Family',
    'easy',
    'single_correct',
    '<p>The covalency and oxidation state respectively of boron in $$\left[\mathrm{BF}_{4}\right]^{-}$$, are :</p>',
    '[{"id": "A", "text": "3 and 4"}, {"id": "B", "text": "4 and 3"}, {"id": "C", "text": "4 and 4"}, {"id": "D", "text": "3 and 5"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'In the tetrafluoroborate anion ($$\left[\mathrm{BF}_{4}\right]^{-}$$), boron is bonded to four fluorine atoms through covalent bonds. Therefore, the covalency of boron in this ion is 4.
<br/><br/>
The oxidation state of boron can be calculated by considering the charges on the atoms involved in the anion. Fluorine has an oxidation state of -1, and there are four fluorine atoms in the anion, which contributes a total of -4. Since the overall charge on the tetrafluoroborate anion is -1, the oxidation state of boron must be +3 in order to balance the charges.
<br/><br/>
So, the covalency and oxidation state of boron in $$\left[\mathrm{BF}_{4}\right]^{-}$$ are 4 and 3, respectively.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'p_block_elements'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '86fcb3e6-d3e3-4903-9aed-b09a4188d062',
    'chemistry',
    '12',
    'Periodic Table and Periodicity',
    'Periodic Table And Its Features',
    'easy',
    'single_correct',
    'The lathanide ion that would show colour is :',
    '[{"id": "A", "text": "Sm<sup>3+</sup>"}, {"id": "B", "text": "Gd<sup>3+</sup>"}, {"id": "C", "text": "Lu<sup>3+</sup>"}, {"id": "D", "text": "La<sup>3+</sup>"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Electronic configuration of 
<br><br>Sm = [Xe] 4f<sup>6</sup> 6s<sup>2</sup>
<br><br>$$ \therefore $$ Electronic configuration of 
<br><br>Sm<sup>+3</sup> = [Xe] 4f<sup>5</sup>
<br><br>Sm<sup>+3</sup> shows yellow colour due to partially filled f orbital and f-f transition.
<br><br>Electronic configuration of 
<br><br>La<sup>+3</sup> = [Xe] 4f<sup>0</sup>
<br><br>Lu<sup>+3</sup> = [Xe] 4f<sup>14</sup>
<br><br>Gd<sup>+3</sup> = [Xe] 4f<sup>7</sup>
<br><br>La<sup>+3</sup>, Lu<sup>+3</sup> and Gd<sup>+3</sup> are colourless due to absence of f-f transition.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'periodic_table_and_periodicity'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '920892f1-03a3-48d9-9a1f-3e9756669b38',
    'chemistry',
    '12',
    'Periodic Table and Periodicity',
    'Electron Gain Enthalpy',
    'easy',
    'single_correct',
    '<p>Given below are two statements:</p>
<p>Statement I : Fluorine has most negative electron gain enthalpy in its group.</p>
<p>Statement II : Oxygen has least negative electron gain enthalpy in its group.</p>
<p>In the light of the above statements, choose the most appropriate from the options given below</p>',
    '[{"id": "A", "text": "Both Statement I and Statement II are true"}, {"id": "B", "text": "Both Statement I and Statement II are false"}, {"id": "C", "text": "Statement I is false but Statement II is true"}, {"id": "D", "text": "Statement I is true but Statement II is false"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>Statement- 1 is false because chlorine has most negative electron gain enthalpy in its group.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'periodic_table_and_periodicity'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4e94455f-19f5-41b7-a660-7729e6f42ccc',
    'chemistry',
    '12',
    'Polymers',
    'Classification Preparations And Properties Of Polymers',
    'easy',
    'single_correct',
    'Preparation of Bakelite proceeds via reactions.',
    '[{"id": "A", "text": "Electrophilic substitution and dehydration"}, {"id": "B", "text": "Condensation and elimination"}, {"id": "C", "text": "Nucleophilic addition and dehydration"}, {"id": "D", "text": "Electrophilic addition and dehydration"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Formation of Bakelite follows electrophillic substitution of phenol and formaldehyde followed by
dehydration.',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'polymers'],
    true,
    now()
);

COMMIT;