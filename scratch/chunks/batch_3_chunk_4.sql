-- Batch 3 - Chunk 4 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9913dd8b-ac8d-4ceb-9767-1a45b1d6dde5',
    'physics',
    '11',
    'Gravitation',
    'Keplers Law And Universal Law Of Gravitation',
    'medium',
    'single_correct',
    'A solid sphere of radius R gravitationally attracts a particle placed at 3R from its centre with a force F<sub>1</sub>. Now a spherical cavity of radius $$\left( {{R \over 2}} \right)$$ is made in the sphere (as shown in figure) and the force becomes F<sub>2</sub>. The value of F<sub>1</sub> : F<sub>2</sub> is<br><br><img src="https://imagex.cdn.examgoal.net/1klse24x4/4859a6d7-a609-43ae-b23b-345e599fe470/4caf4e80-7b8b-11eb-a157-49f87e3afb79/file-1klse24x5-307w.jpg" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1185691a-03af-472a-9131-6a21d18744b4',
    'physics',
    '11',
    'Gravitation',
    'Escape Speed And Motion Of Satellites',
    'medium',
    'single_correct',
    '<p>Given below are two statements:</p>
<p>Statement I: If $$\mathrm{E}$$ be the total energy of a satellite moving around the earth, then its potential energy will be $$\frac{E}{2}$$.</p>
<p>Statement II: The kinetic energy of a satellite revolving in an orbit is equal to the half the magnitude of total energy $$\mathrm{E}$$.</p>
<p>In the light of the above statements, choose the most appropriate answer from the options given below</p>',
    '[{"id": "A", "text": "Both Statement I and Statement II are incorrect"}, {"id": "B", "text": "Statement I is incorrect but Statement II is correct"}, {"id": "C", "text": "Statement I is correct but Statement II is incorrect"}, {"id": "D", "text": "Both Statement I and Statement II are correct"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>A satellite in orbit around a planet is subject to two main forces: gravitational force, which is trying to pull it towards the planet, and its own kinetic energy or inertia, which is trying to keep it moving in a straight line. The balance of these two forces results in the satellite moving in a circular or elliptical orbit.</p>
<p>The gravitational potential energy ($U$) of the satellite is given by the formula:</p>
<p>$U = -\frac{GMm}{R}$</p>
<p>where $G$ is the gravitational constant, $M$ is the mass of the Earth, $m$ is the mass of the satellite, and $R$ is the radius of the orbit. The negative sign indicates that work would have to be done to remove the satellite from the Earth&#39;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a1462d8d-73ca-4b33-97dc-c49cd6f527f7',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Zeroth And First Law Of Thermodynamics',
    'easy',
    'single_correct',
    'A thermally insulated vessel contains an ideal gas of molecular mass $$M$$ and ratio of specific heats $$\gamma .$$ It is moving with speed $$v$$ and it''s suddenly brought to rest. Assuming no heat is lost to the surroundings, Its temperature increases by:',
    '[{"id": "A", "text": "$${{\\left( {\\gamma  - 1} \\right)} \\over {2\\gamma R}}M{v^2}K$$"}, {"id": "B", "text": "$${{\\gamma {M^2}v} \\over {2R}}K$$"}, {"id": "C", "text": "$${{\\left( {\\gamma  - 1} \\right)} \\over {2R}}M{v^2}K$$"}, {"id": "D", "text": "$${{\\left( {\\gamma  - 1} \\right)} \\over {2\\left( {\\gamma  + 1} \\right)R}}M{v^2}K$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Here, work done is zero.
<br>So, loss in kinetic energy $$=$$ change in internal energy of gas
<br>$${1 \over 2}m{v^2} = n{C_v}\Delta T = n{R \over {\gamma  - 1}}\Delta T$$
<br>$${1 \over 2}m{v^2} = {m \over M}{R \over {\gamma  - 1}}\Delta T$$
<br>$$\therefore$$ $$\Delta T = {{M{v^2}\left( {\gamma  - 1} \right)} \over {2R}}K$$',
    4,
    -1,
    true,
    2011,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'heat_and_thermodynamics'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c91cf960-2f7b-4ed9-aae0-f7415ec63c91',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Degree Of Freedom And Law Of Equipartition Of Energy',
    'medium',
    'single_correct',
    'A gas mixture consists of 3 moles of oxygen and 5 moles of argon at temperature T. considering only translational and rotational modes, the total internal energy of the system is :',
    '[{"id": "A", "text": "12 RT"}, {"id": "B", "text": "20 RT"}, {"id": "C", "text": "4 RT"}, {"id": "D", "text": "15 RT"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'U $$ = {{{f_1}} \over 2}{n_1}RT + {{{f_2}} \over 2}{n_2}RT$$
<br><br>$$ = {5 \over 2}\left( {3RT} \right) + {3 \over 2} \times 5RT$$
<br><br>U $$ = 15RT$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'heat_and_thermodynamics'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '876b1576-3d7e-41da-8105-35c924c87535',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Kinetic Theory Of Gases And Gas Laws',
    'medium',
    'single_correct',
    'A balloon carries a total load of 185 kg at normal pressure and temperature of 27$$^\circ$$C. What load will the balloon carry on rising to a height at which the barometric pressure is 45 cm of Hg and the temperature is $$-$$7$$^\circ$$C. Assuming the volume constant?',
    '[{"id": "A", "text": "181.46 kg"}, {"id": "B", "text": "214.15 kg"}, {"id": "C", "text": "219.07 kg"}, {"id": "D", "text": "123.54 kg"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'P<sub>m</sub> = $$\rho$$RT<br><br>$$\therefore$$ $${{{P_1}} \over {{P_2}}} = {{{\rho _1}{T_1}} \over {{\rho _1}{T_2}}}$$<br><br>$${{{\rho _1}} \over {{\rho _2}}} \Rightarrow {{{P_1}{T_2}} \over {{P_2}{T_1}}} = \left( {{{76} \over {45}}} \right) \times {{266} \over {300}}$$<br><br>$${{{\rho _1}} \over {{\rho _2}}} \Rightarrow {{{M_1}} \over {{M_2}}} = {{76 \times 266} \over {45 \times 300}}$$<br><br>$$\therefore$$ $${M_2} \Rightarrow {{45 \times 300 \times 185} \over {76 \times 266}} = 123.54$$ kg',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'heat_and_thermodynamics'],
    true,
    now()
);

COMMIT;