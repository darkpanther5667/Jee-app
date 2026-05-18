-- Batch 3 - Chunk 2 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '60d1706b-0f9e-4e44-859e-eac637e5a297',
    'physics',
    '12',
    'Electromagnetic Induction',
    'Inductance Self And Mutual',
    'medium',
    'single_correct',
    '<p>A small square loop of wire of side $$l$$ is placed inside a large square loop of wire $$\mathrm{L}(\mathrm{L}&gt;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3ab9571a-8ac6-4a90-89a8-395be19ff7e1',
    'physics',
    '12',
    'Electromagnetic Waves',
    'Displacement Current And Properties Of Em Waves',
    'easy',
    'single_correct',
    'A plane electromagnetic wave of frequency
25 GHz is propagating in vacuum along the
z-direction. At a particular point in space and
time, the magnetic field is given by $$\overrightarrow B  = 5 \times {10^{ - 8}}\widehat jT$$. The corresponding electric field $$\overrightarrow E $$ is (speed of light c = 3 × 10<sup>8</sup> ms<sup>–1</sup>)',
    '[{"id": "A", "text": "15 $$\\widehat i$$V / m"}, {"id": "B", "text": "-15 $$\\widehat i$$V / m"}, {"id": "C", "text": "1.66 \u00d7 10<sup>\u201316</sup> $$\\widehat i$$V / m"}, {"id": "D", "text": "-1.66 \u00d7 10<sup>\u201316</sup> $$\\widehat i$$V / m"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '$$\overrightarrow E  = \overrightarrow B  \times \overrightarrow V $$
<br><br>= $$\left( {5 \times {0^{ - 8}}\widehat j} \right) \times \left( {3 \times {{10}^8}\widehat k} \right)$$
<br><br>= $${15\,\widehat i}$$ V/m',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electromagnetic_waves'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3386237b-4460-4af9-b6a0-aa7fdf73b625',
    'physics',
    '12',
    'Electromagnetic Waves',
    'Displacement Current And Properties Of Em Waves',
    'medium',
    'single_correct',
    '<p>Due to presence of an em-wave whose electric component is given by $E=100 \sin (\omega t-k x) \mathrm{NC}^{-1}$ a cylinder of length 200 cm holds certain amount of em-energy inside it. If another cylinder of same length but half diameter than previous one holds same amount of em-energy, the magnitude of the electric field of the corresponding em-wave should be modified as</p>',
    '[{"id": "A", "text": "$50 \\sin (\\omega \\mathrm{t}-\\mathrm{kx}) \\mathrm{NC}^{-1}$"}, {"id": "B", "text": "$400 \\sin (\\omega \\mathrm{t}-\\mathrm{kx}) \\mathrm{NC}^{-1}$"}, {"id": "C", "text": "$200 \\sin (\\omega t-k x) \\mathrm{NC}^{-1}$"}, {"id": "D", "text": "$25 \\sin (\\omega \\mathrm{t}-\\mathrm{kx}) \\mathrm{NC}^{-1}$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>We know,</p>
<p>Energy density $$ = {1 \over 2}{\varepsilon _0}{E^2}C$$</p>
<p>$$ \Rightarrow {\text{Energy} \over \text{Volume}} = {1 \over 2}{\varepsilon _0}{E^2}C$$</p>
<p>$$ \Rightarrow \text{Energy}= {1 \over 2}{\varepsilon _0}E_c^2x\,vol$$</p>
<p>Given that, $${\left( {\text{Energy}} \right)_1} = {\left( {\text{Energy}} \right)_2}$$</p>
<p>$$ \Rightarrow {1 \over 2}{\varepsilon _0}E_1^2cx\pi R_1^2{L_1} = {1 \over 2}{\varepsilon _0}E_2^2cx\pi R_2^2{L_2}$$</p>
<p>$$ \Rightarrow E_1^2R_1^2{L_1} = E_2^2R_2^2{L_1}\,(as\,{L_1} = {L_2})$$</p>
<p>$$ \Rightarrow E_1^2R_1^2 = E_2^2R_2^2$$</p>
<p>$$ \Rightarrow {E_1}{R_1} = {E_2}{R_2}$$</p>
<p>$$ \Rightarrow {E_1}{R_1} = {E_2}\left( {{{{R_1}} \over 2}} \right)\,\left( {As\,{R_2} = {{{R_1}} \over 2}} \right)$$</p>
<p>$$ \Rightarrow {E_2} = 2{E_1} = 2 \times 100$$</p>
<p>$$ \Rightarrow {E_2} = 200\,N/C$$</p>
<p>Hence, option (3) is correct.</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electromagnetic_waves'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'cc3c20b7-3219-4c3b-8f92-134bb05aec9b',
    'physics',
    '12',
    'Electronic Devices',
    'Digital Circuits',
    'easy',
    'single_correct',
    'Which of the following gives a reversible operation?',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dmrlc6/34599ddb-ef93-43b5-a571-83c3413258a5/21d35660-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dmrlc7-182w.jpg\" style=\"max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '0f0e83b1-0ab6-4ce7-b4c6-b159abb8b1de',
    'physics',
    '12',
    'Electronic Devices',
    'Semiconductor And P N Junction Diode',
    'medium',
    'single_correct',
    '<p>In the given circuit, the breakdown voltage of the Zener diode is $$3.0 \mathrm{~V}$$. What is the value of $$\mathrm{I}_{\mathrm{z}}$$ ?</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/6y3zli1lsfm7q5u/64cb94a9-ecfe-47e7-9a05-53165c4f4a08/4e060120-c7d2-11ee-a6e7-91ff3070e761/file-6y3zli1lsfm7q5v.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/6y3zli1lsfm7q5u/64cb94a9-ecfe-47e7-9a05-53165c4f4a08/4e060120-c7d2-11ee-a6e7-91ff3070e761/file-6y3zli1lsfm7q5v.png" loading="lazy" style="max-width: 100%;

COMMIT;