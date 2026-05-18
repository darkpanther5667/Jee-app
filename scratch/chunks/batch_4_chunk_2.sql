-- Batch 4 - Chunk 2 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b2dd4b12-b5eb-439c-8e78-56ad92c85be6',
    'physics',
    '12',
    'Units and Measurements',
    'Vernier Calipers',
    'medium',
    'single_correct',
    '<p>If n main scale divisions coincide with (n + 1) vernier scale divisions. The least count of vernier callipers, when each centimetre on the main scale is divided into five equal parts, will be :</p>',
    '[{"id": "A", "text": "$${2 \\over {n + 1}}$$ mm"}, {"id": "B", "text": "$${5 \\over {n + 1}}$$ mm"}, {"id": "C", "text": "$${1 \\over {2n}}$$ mm"}, {"id": "D", "text": "$${1 \\over {5n}}$$ mm"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>5 parts of main scale division = 1 cm</p>
<p>$$\therefore$$ 1 part of main scale division = $${1 \over 5}$$ cm</p>
<p>$$\therefore$$ 1 M.S.D. = $${1 \over 5}$$ cm</p>
<p>(n + 1) vernier scale division = n main scale division.</p>
<p>$$\therefore$$ 1 V.S.D. = $${n \over n+1}$$ M.S.D.</p>
<p>= $${n \over n+1}$$ $$\times$$ 1 M.S.D.</p>
<p>= $${n \over n + 1}$$ $$\times$$ $${1 \over 5}$$ cm</p>
<p>We know,</p>
<p>L.C. = 1 M.S.D. $$-$$ 1 V,S.D.</p>
<p>= $${1 \over 5}$$ cm $$-$$ $${n \over {5(n + 1)}}$$ cm</p>
<p>= $${{n + 1 - n} \over {5(n + 1)}}$$ cm</p>
<p>= $${1 \over {5(n + 1)}}$$ cm</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'units_and_measurements'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b549e74c-ef3c-4853-b26c-d192d42a6a39',
    'physics',
    '12',
    'Units and Measurements',
    'Dimensions Of Physical Quantities',
    'easy',
    'single_correct',
    'If $\mu_0$ and $\epsilon_0$ are the permeability and permittivity of free space, respectively, then the dimension of $\left(\frac{1}{\mu_0 \epsilon_0}\right)$ is :',
    '[{"id": "A", "text": "$\\mathrm{T}^2 / \\mathrm{L}$"}, {"id": "B", "text": "$\\mathrm{L}^2 / \\mathrm{T}^2$"}, {"id": "C", "text": "$\\mathrm{T}^2 / \\mathrm{L}^2$"}, {"id": "D", "text": "$\\mathrm{L} / \\mathrm{T}^2$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>The expression $\frac{1}{\mu_0 \epsilon_0}$ is related to the speed of light $ c $, given by the equation:</p>
<p>$ c = \frac{1}{\sqrt{\mu_0 \epsilon_0}} $</p>
<p>Therefore, we have:</p>
<p>$ \frac{1}{\mu_0 \epsilon_0} = c^2 $</p>
<p>The speed of light $ c $ has the dimensions of $\text{L T}^{-1}$, where $\text{L}$ is the dimension of length and $\text{T}$ is the dimension of time. Thus, when squared, the dimensions become:</p>
<p>$ c^2 = (\text{L T}^{-1})^2 = \text{L}^2 \text{T}^{-2} $</p>
<p>Hence, the dimensions of $\frac{1}{\mu_0 \epsilon_0}$ are $\text{L}^2 \text{T}^{-2}$.</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'units_and_measurements'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'db91bed4-3d15-40b1-9d66-35e79fb646dc',
    'physics',
    '12',
    'Wave Optics',
    'Huygens Principle And Interference Of Light',
    'easy',
    'single_correct',
    'In a Young’s double slit experiment, light of
500 nm is used to produce an interference
pattern. When the distance between the slits
is 0.05 mm, the angular width (in degree) of
the fringes formed on the distance screen is
close to',
    '[{"id": "A", "text": "0.17<sup>o</sup>"}, {"id": "B", "text": "1.7<sup>o</sup>"}, {"id": "C", "text": "0.57<sup>o</sup>"}, {"id": "D", "text": "0.07<sup>o</sup>"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$$\beta $$ = $${{\lambda D} \over d}$$
<br><br>and $$\theta $$ = $${\beta  \over D}$$
<br><br>$$ \Rightarrow $$ $$\theta $$ = $${\lambda  \over d}$$
<br><br>= $${{500 \times {{10}^{ - 9}}} \over {0.05 \times {{10}^{ - 3}}}}$$
<br><br>= 0.01 rad
<br><br>= 0.57<sup>o</sup>',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'wave_optics'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '332c4ac3-9f69-4827-850e-38db73b42e63',
    'physics',
    '11',
    'Waves',
    'Superposition And Reflection Of Waves',
    'easy',
    'single_correct',
    'Three sound waves of equal amplitudes have frequencies $$\left( {v - 1} \right),\,v,\,\left( {v + 1} \right).$$ They superpose to give beats. The number of beats produced per second will be :',
    '[{"id": "A", "text": "$$3$$"}, {"id": "B", "text": "$$2$$"}, {"id": "C", "text": "$$1$$"}, {"id": "D", "text": "$$4$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Maximum number of beats $$ = \left( {v + 1} \right) - \left( {v - 1} \right) = 2$$',
    4,
    -1,
    true,
    2009,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'waves'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ba5e82d2-8e40-43d9-b0fc-05f7a4b384dd',
    'physics',
    '11',
    'Waves',
    'Basic Of Waves And Progressive Waves',
    'easy',
    'single_correct',
    '<p>Two strings with circular cross section and made of same material, are stretched to have same amount of tension. A transverse wave is then made to pass through both the strings. The velocity of the wave in the first string having the radius of cross section R is $v_1$, and that in the other string having radius of cross section R/2 is $v_2$. Then $\frac{v_2}{v_1}$ = </p>',
    '[{"id": "A", "text": "<p>8</p>"}, {"id": "B", "text": "<p>4</p>"}, {"id": "C", "text": "<p>2</p>"}, {"id": "D", "text": "<p>$\\sqrt{2}$</p>"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>To find the ratio of the velocities of transverse waves in two strings with different radii but identical materials and tension, consider the following:</p>
<p>The wave velocity $ v $ in a string is given by the formula:</p>
<p>$ v = \sqrt{\frac{T}{\mu}} $</p>
<p>where $ T $ is the tension and $ \mu $ is the linear mass density of the string, defined as:</p>
<p>$ \mu = \rho \pi R^2 $</p>
<p>Here, $ \rho $ is the density of the material, and $ R $ is the radius of the string. Given that both strings have the same tension $ T $ and material, we compare their wave velocities $ v_1 $ and $ v_2 $ for radii $ R_1 = R $ and $ R_2 = \frac{R}{2} $.</p>
<p>The velocity ratio is expressed as:</p>
<p>$ \frac{v_2}{v_1} = \frac{\sqrt{\frac{T}{\rho \pi R_2^2}}}{\sqrt{\frac{T}{\rho \pi R_1^2}}} $</p>
<p>Simplifying this expression:</p>
<p>$ \frac{v_2}{v_1} = \frac{\sqrt{R_1^2}}{\sqrt{R_2^2}} = \frac{R_1}{R_2} = \frac{R}{\frac{R}{2}} = 2 $</p>
<p>Thus, the ratio $ \frac{v_2}{v_1} $ is 2.</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'waves'],
    true,
    now()
);

COMMIT;