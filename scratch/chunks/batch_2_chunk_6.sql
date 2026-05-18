-- Batch 2 - Chunk 6 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a4142701-ceea-46de-866c-0ff3d476a0a1',
    'physics',
    '12',
    'Capacitor',
    'Parallel Plate Capacitor',
    'medium',
    'single_correct',
    'An electron with kinetic energy K<sub>1</sub> enters between parallel plates of a capacitor at an angle ''$$\alpha$$'' with the plates. It leaves the plates at angle ''$$\beta$$'' with kinetic energy K<sub>2</sub>. Then the ratio of kinetic energies K<sub>1</sub> : K<sub>2</sub> will be :',
    '[{"id": "A", "text": "$${{{{\\cos }^2}\\beta } \\over {{{\\cos }^2}\\alpha }}$$"}, {"id": "B", "text": "$${{\\cos \\beta } \\over {\\cos \\alpha }}$$"}, {"id": "C", "text": "$${{{{\\sin }^2}\\beta } \\over {{{\\cos }^2}\\alpha }}$$"}, {"id": "D", "text": "$${{\\cos \\beta } \\over {\\sin \\alpha }}$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1kqze98do/36d2cd8d-1980-4be4-af63-70d917e0a296/a3763ec0-e262-11eb-bfe6-a5f7baa62679/file-1kqze98dp.png" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '70c65b0a-88a3-4ef3-828f-23eb475116b7',
    'physics',
    '12',
    'Center of Mass',
    'Collision',
    'medium',
    'single_correct',
    'A body of mass 2 kg makes an eleastic collision
with a second body at rest and continues to move
in the original direction but with one fourth of its
original speed. What is the mass of the second
body ?',
    '[{"id": "A", "text": "1.2 kg"}, {"id": "B", "text": "1.0 kg"}, {"id": "C", "text": "1.8 kg"}, {"id": "D", "text": "1.5 kg"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'By conservation of linear momentum:<br><br>
$$2{v_0} = 2\left( {{{{v_0}} \over 4}} \right) + mv \Rightarrow 2{v_0} = {{{v_0}} \over 2} + mv$$<br><br>
$$ \Rightarrow {{3{v_0}} \over 2} = mv\,\,...(1)$$<br><br>
Since collision is elastic<br><br>
$${V_{separation}} = {V_{approch}}$$<br><br>
$$ \Rightarrow v - {{{v_0}} \over 4} = {v_0} \Rightarrow m = {6 \over 5} = 1.2\,kg$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'center_of_mass'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ac310699-875a-4b81-9dd0-700691b7548f',
    'physics',
    '12',
    'Circular Motion',
    'Uniform Circular Motion',
    'medium',
    'single_correct',
    'A conical pendulum of length 1 m makes an angle $$\theta $$ = 45<sup>o</sup> w.r.t. Z-axis and moves in a circle in the XY plane. The radius of the circle is 0.4 m and its center is vertically below O. The speed of the pendulum, in its circular path, will be: (Take g = 10 ms<sup>−2</sup> )
<br><br><img src="https://imagex.cdn.examgoal.net/NydOBhIDP3af2DDfg/rP7ie0Zx4S75d64ocvp6yXPuQE94g/HUvC1Cgdkpah9IVnfjFOR8/image.png" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7a8d09db-c2b5-460e-8d89-5d38e33cfe37',
    'physics',
    '12',
    'Communication Systems',
    'Elements Of Communication System And Propagation Of Em Wave',
    'medium',
    'single_correct',
    'A TV transmission tower has a height of 140 m and the height of the receiving antenna is 40 m. What is the maximum distance upto which signals can be broadcasted from this tower is LOS (Line of Sight) mode ? (Given : radius of earth = 6.4 × 10<sup>6</sup> m).',
    '[{"id": "A", "text": "40 km"}, {"id": "B", "text": "65 km"}, {"id": "C", "text": "48 km"}, {"id": "D", "text": "80 km"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Maximum distance upto which signal can be broadcasted is 
<br><br>d<sub>max</sub> = $$\sqrt {2R{h_T}}  + \sqrt {2R{h_R}} $$
<br><br>where h<sub>T</sub> and h<sub>R</sub> are heights of transmitter tower and height of reserver respectively. Putting all values -
<br><br>d<sub>max</sub> = $$\sqrt {2 \times 6.4 \times 106} \left[ {\sqrt {104}  + \sqrt {40} } \right]$$
<br><br>on solving, d<sub>max</sub> = 65 km',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'communication_systems'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ac722478-9069-4ed8-9fe4-733a038e97b4',
    'physics',
    '12',
    'Current Electricity',
    'Ohms Law',
    'easy',
    'single_correct',
    'An energy source will supply a constant current into the load if its internal resistance is',
    '[{"id": "A", "text": "very large as compared to the load resistance"}, {"id": "B", "text": "equal to the resistance of the load"}, {"id": "C", "text": "non-zero but less than the resistance of the load"}, {"id": "D", "text": "zero"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '$$I = {E \over {R + r}},\,$$ Internal resistance $$\left( r \right)$$ is 
<br><br>zero, $$I = {E \over R} = $$ constant.',
    4,
    -1,
    true,
    2005,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'current_electricity'],
    true,
    now()
);

COMMIT;