-- Batch 2 - Chunk 5 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '843f406a-eb13-4a77-8395-98eb84e4bd40',
    'physics',
    '12',
    'Alternating Current',
    'Ac Generator And Transformer',
    'easy',
    'single_correct',
    'In a transformer, number of turns in the primary coil are $$140$$ and that in the secondary coil are $$280.$$ If current in primary coil is $$4A,$$ then that in the secondary coil is',
    '[{"id": "A", "text": "$$4A$$"}, {"id": "B", "text": "$$2A$$"}, {"id": "C", "text": "$$6A$$"}, {"id": "D", "text": "$$10A$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '$${N_p} = 140,\,\,{N_s} = 280,\,\,{I_p} = 4A,\,\,{I_s} = ?$$ 
<br><br>For a transformer $${{{I_s}} \over {{I_p}}} = {{{N_p}} \over {{N_s}}}$$
<br><br>$$ \Rightarrow {{{I_s}} \over 4} = {{140} \over {280}} \Rightarrow {I_s} = 2A$$',
    4,
    -1,
    true,
    2002,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'alternating_current'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e046f678-b1e5-43da-a562-a5fc7f06862a',
    'physics',
    '12',
    'Alternating Current',
    'Ac Circuits And Power In Ac Circuits',
    'easy',
    'single_correct',
    '<p>In series RLC resonator, if the self inductance and capacitance become double, the new resonant frequency (f<sub>2</sub>) and new quality factor (Q<sub>2</sub>) will be :</p>
<p>(f<sub>1</sub> = original resonant frequency, Q<sub>1</sub> = original quality factor)</p>',
    '[{"id": "A", "text": "$${f_2} = {{{f_1}} \\over 2}$$ and $${Q_2} = {Q_1}$$"}, {"id": "B", "text": "$${f_2} = {f_1}$$ and $${Q_2} = {{{Q_1}} \\over {{Q_2}}}$$"}, {"id": "C", "text": "$${f_2} = 2{f_1}$$ and $${Q_2} = {Q_1}$$"}, {"id": "D", "text": "$${f_2} = {f_1}$$ and $${Q_2} = 2{Q_1}$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>We know,</p>
<p>Quality factor (Q factor)</p>
<p>$${Q_1} = {{{w_1}} \over {\Delta w}}$$</p>
<p>$$ = {1 \over {\sqrt {LC} }} \times {L \over R}$$</p>
<p>$$ = {1 \over R}\sqrt {{L \over C}} $$</p>
<p>Now, when $$L'' = 2L$$ and $$C'' = 2C$$ then $${Q_2} = {1 \over R}\sqrt {{{2L} \over {2C}}}  = {1 \over R}\sqrt {{L \over C}}  = {Q_1}$$</p>
<p>$$\therefore$$ Q<sub>2</sub> remains same as Q<sub>1</sub>.</p>
<p>Also, as $${w_1} = {1 \over {\sqrt {LC} }}$$</p>
<p>$$ \Rightarrow 2\pi {f_1} = {1 \over {\sqrt {LC} }}$$</p>
<p>$$ \Rightarrow {f_1} = {1 \over {2\pi \sqrt {LC} }}$$</p>
<p>$$\therefore$$ When $$L'' = 2L$$ and $$C'' = 2C$$ then new resonating frequency</p>
<p>$${f_2} = {1 \over {2\pi \sqrt {2L \times 2C} }} = {1 \over {2\pi  \times 2\sqrt {LC} }} = {1 \over 2} \times {f_1}$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'alternating_current'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ec26f581-1e9a-475d-a75c-846eae974ca3',
    'physics',
    '12',
    'Atoms and Nuclei',
    'Nucleus And Radioactivity',
    'medium',
    'single_correct',
    'A radioactive nucleus (initial mass number $$A$$ and atomic number $$Z$$ emits $$3\,\alpha $$- particles and $$2$$ positrons. The ratio of number of neutrons to that of protons in the final nucleus will be',
    '[{"id": "A", "text": "$${{A - Z - 8} \\over {Z - 4}}$$"}, {"id": "B", "text": "$${{A - Z - 4} \\over {Z - 8}}$$"}, {"id": "C", "text": "$${{A - Z - 12} \\over {Z - 4}}$$"}, {"id": "D", "text": "$${{A - Z - 4} \\over {Z - 2}}$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '$${}_Z^AX\mathop  \to \limits^{A - 12} {}_{Z - 8}Y + 3{}_2^4{X_e} + {}_t^0e$$
<br><br>Number of protons, N<sub>p</sub> = Z - 8
<br><br>Number of neutrons, N<sub>n</sub> = $$A - 12 - \left( {Z - 8} \right)$$
<br><br>$$\therefore$$ Required ratio $$ = {{A - Z - 4} \over {Z - 8}}$$',
    4,
    -1,
    true,
    2010,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'atoms_and_nuclei'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '04ef6970-1f28-48ab-86b9-75c91a450a7b',
    'physics',
    '12',
    'Atoms and Nuclei',
    'Nucleus And Radioactivity',
    'medium',
    'single_correct',
    'The half-life of $${}^{198}Au$$ is 3 days. If atomic weight of $${}^{198}Au$$ is 198 g/mol then the activity of 2 mg of $${}^{198}Au$$ is [in disintegration/second] :',
    '[{"id": "A", "text": "2.67 $$\\times$$ 10<sup>12</sup>"}, {"id": "B", "text": "6.06 $$\\times$$ 10<sup>18</sup>"}, {"id": "C", "text": "32.36 $$\\times$$ 10<sup>12</sup>"}, {"id": "D", "text": "16.18 $$\\times$$ 10<sup>12</sup>"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'A = $$\lambda$$N<br><br>$$\lambda  = {{\ln 2} \over {{t_{1/2}}}} = {{\ln 2} \over {3 \times 24 \times 60 \times 60}}$$sec<sup>$$-$$1</sup> = 2.67 $$\times$$ 10<sup>$$-$$6</sup> sec<sup>$$-$$1</sup><br><br>N = Number of atoms in 2 mg Au<br><br>$$ = {{2 \times {{10}^{ - 3}}} \over {198}} \times 6 \times {10^{23}}$$ = 6.06 $$\times$$ 10<sup>15</sup><br><br>$$A = \lambda N = 1.618 \times {10^{13}} = 16.18 \times {10^{12}}$$ dps',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'atoms_and_nuclei'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ae597a25-a196-4416-8880-1e8b985843de',
    'physics',
    '12',
    'Atoms and Nuclei',
    'Bohrs Model And Hydrogen Spectrum',
    'easy',
    'single_correct',
    '<p>An electron rotates in a circle around a nucleus having positive charge $$\mathrm{Ze}$$. Correct relation between total energy (E) of electron to its potential energy (U) is :</p>',
    '[{"id": "A", "text": "$$2 \\mathrm{E}=3 \\mathrm{U}$$"}, {"id": "B", "text": "$$\\mathrm{E}=\\mathrm{U}$$"}, {"id": "C", "text": "$$2 \\mathrm{E}=\\mathrm{U}$$"}, {"id": "D", "text": "$$\\mathrm{E}=2 \\mathrm{U}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>In the context of an electron orbiting around a nucleus with a positive charge of $$\mathrm{Ze}$$, we are dealing with classical physics approximations and the electrostatic force between the electron and the nucleus. In such a setup, the electron''s potential energy (U) is due to electrostatic interaction, and it is given by Coulomb''s law:</p>

<p>$$U = -\frac{kZe^2}{r}$$</p>

<p>Where:</p>

<ul>

<li>$U$ is the potential energy of the electron,</li>

<li>$k$ is Coulomb''s constant,</li>

<li>$Z$ is the atomic number (number of protons in the nucleus),</li>

<li>$e$ is the charge of an electron, and</li>

<li>$r$ is the radius of the orbit of the electron around the nucleus.</li>

</ul>

<p>The negative sign indicates that the potential energy is negative because the electron and nucleus attract each other.</p>

<p>The total energy (E) of the electron in orbit is the sum of its kinetic energy (K) and its potential energy (U). Since the electron is in a stable orbit, its kinetic energy can be shown to be exactly half the magnitude of its potential energy but positive:</p>

<p>$$K = -\frac{1}{2}U$$</p>

<p>Therefore,</p>

<p>$$E = K + U = -\frac{1}{2}U + U = \frac{1}{2}U$$</p>

<p>To find a relation between total energy (E) and potential energy (U), we rearrange the equation as follows:</p>

<p>$$2E = U$$</p>

<p>This is to say, the total energy (E) is half the magnitude of potential energy (U) but negative, and the correct relationship between them, when looking for a positive proportionality, yields to $2E = U$. Hence, the correct option is:</p>

<p>Option C: $$2 \mathrm{E} = \mathrm{U}$$</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'atoms_and_nuclei'],
    true,
    now()
);

COMMIT;