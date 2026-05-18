-- Batch 1 - Chunk 2 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'd25ffc8a-05d5-40cc-8c87-d8d211b7fbcb',
    'mathematics',
    '12',
    'Application of Derivatives',
    'Tangent And Normal',
    'medium',
    'single_correct',
    'The length of the perpendicular from the origin,
on the normal to the curve,<br> x<sup>2</sup> + 2xy – 3y<sup>2</sup> = 0
at the point (2,2) is',
    '[{"id": "A", "text": "$$\\sqrt 2 $$"}, {"id": "B", "text": "$$4\\sqrt 2 $$"}, {"id": "C", "text": "2"}, {"id": "D", "text": "$$2\\sqrt 2 $$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'x<sup>2</sup> + 2xy – 3y<sup>2</sup> = 0
<br><br>Differentiate the curve
<br><br> 2x + 2y + 2xy'' – 6yy'' = 0
<br><br>$$ \Rightarrow $$ $$ \Rightarrow $$ x + y + xy'' – 3yy'' = 0
<br><br>$$ \Rightarrow $$ y''(x – 3y) = – (x + y)
<br><br>$$ \Rightarrow $$ y'' = $${{x + y} \over {3y - x}}$$
<br><br>Slope of normal = $$ - {{dx} \over {dy}}$$ = $${{x - 3y} \over {x + y}}$$
<br><br>$$ \therefore $$ $${\left( { - {{dx} \over {dy}}} \right)_{\left( {2,2} \right)}}$$ = $${{2 - 6} \over {2 + 2}}$$ = -1
<br><br> Normal at (2, 2)
 <br><br>y – 2 = – 1 (x – 2)
<br><br>$$ \Rightarrow $$ y + x = 4
<br><br>$$ \therefore $$ Perpendicular distance from (0,0)
<br><br>= $$\left| {{{0 + 0 - 4} \over {\sqrt 2 }}} \right|$$ = $${2\sqrt 2 }$$',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'application_of_derivatives'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4587e775-6226-4be5-a81b-455ce4c10df5',
    'mathematics',
    '12',
    'Application of Derivatives',
    'Maxima And Minima',
    'medium',
    'single_correct',
    '<p>The function $$f(x)=2 x+3(x)^{\frac{2}{3}}, x \in \mathbb{R}$$, has</p>',
    '[{"id": "A", "text": "exactly one point of local minima and no point of local maxima"}, {"id": "B", "text": "exactly one point of local maxima and exactly one point of local minima"}, {"id": "C", "text": "exactly two points of local maxima and exactly one point of local minima"}, {"id": "D", "text": "exactly one point of local maxima and no point of local minima"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>$$\begin{aligned}
&amp;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ae3f6cf4-c6c5-45f5-9859-420f652bba59',
    'mathematics',
    '12',
    'Area Under The Curves',
    'Area Under Simple Curves In Standard Forms',
    'medium',
    'single_correct',
    'The area bounded by the curve 4y<sup>2</sup> = x<sup>2</sup>(4 $$-$$ x)(x $$-$$ 2) is equal to :',
    '[{"id": "A", "text": "$${\\pi  \\over {16}}$$"}, {"id": "B", "text": "$${\\pi  \\over {8}}$$"}, {"id": "C", "text": "$${3\\pi  \\over {2}}$$"}, {"id": "D", "text": "$${3\\pi  \\over {8}}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Given,<br><br>4y<sup>2</sup> = x<sup>2</sup>(4 $$-$$ x)(x $$-$$ 2) ..... (1)<br><br>Here, Left hand side 4y<sup>2</sup> is always positive. So Right hand side should also be positive.<br><br>In x$$\in$$ [2, 4] Right hand side is positive.<br><br>By putting y = $$-$$y in equation (1), equation remains same. So, graph is symmetric about x axis.<br><br> <picture><source media="(max-width: 1644px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb.jpeg"><source media="(max-width: 320px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-320w.jpeg"><source media="(max-width: 500px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-500w.jpeg"><source media="(max-width: 680px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-680w.jpeg"><source media="(max-width: 860px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-860w.jpeg"><source media="(max-width: 1040px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-1040w.jpeg"><source media="(max-width: 1220px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-1220w.jpeg"><img src="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-1400w.jpeg" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '0710c8dc-3780-4693-8530-0e0c65bf338c',
    'mathematics',
    '11',
    'Binomial Theorem',
    'Problems Based On Binomial Co Efficient And Collection Of Binomial Co Efficient',
    'medium',
    'single_correct',
    'The sum of the series $${}^{20}{C_0} - {}^{20}{C_1} + {}^{20}{C_2} - {}^{20}{C_3} + .....\, - \,.....\, + {}^{20}{C_{10}}$$ is',
    '[{"id": "A", "text": "$$0$$"}, {"id": "B", "text": "$${}^{20}{C_{10}}$$"}, {"id": "C", "text": "$$ - {}^{20}{C_{10}}$$"}, {"id": "D", "text": "$${1 \\over 2}{}^{20}{C_{10}}$$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'We know
<br><br>$${}^{20}{C_0} - {}^{20}{C_1} + {}^{20}{C_2} - {}^{20}{C_3} + .... + {}^{20}{C_{10}} - {}^{20}{C_{11}}+ ...... + {}^{20}{C_{20}} = 0$$
<br><br>$$ \Rightarrow $$ $$({}^{20}{C_0} - {}^{20}{C_1} + {}^{20}{C_2} - {}^{20}{C_3} + .... - {}^{20} {C_{9}})$$ $$+{}^{20}{C_{10}}$$ $$(-{}^{20}{C_{9}}+ {}^{20}{C_{8}}+...... + {}^{20}{C_{0}})$$
<br><br>(As $${}^{20}{C_{11}} = {}^{20}{C_9}$$)
<br><br>$$ \Rightarrow $$ $$2({}^{20}{C_0} - {}^{20}{C_1} + {}^{20}{C_2} - {}^{20}{C_3} + .... - {}^{20} {C_{9}})$$ $$+{}^{20}{C_{10}}$$ = 0
<br><br>$$ \Rightarrow $$ $${}^{20}{C_0} - {}^{20}{C_1} + {}^{20}{C_2} - {}^{20}{C_3} + .... - {}^{20} {C_{9}}$$ = $$ - {1 \over 2}{}^{20}{C_{10}}$$
<br><br>Adding $${}^{20}{C_{10}}$$ both sides,
<br><br>$$ \Rightarrow $$ $${}^{20}{C_0} - {}^{20}{C_1} + {}^{20}{C_2} - {}^{20}{C_3} + .... - {}^{20} {C_{9}}$$ $$ + {}^{20}{C_{10}}$$ = $$ - {1 \over 2}{}^{20}{C_{10}}$$ $$ + {}^{20}{C_{10}}$$
<br><br>$$ \Rightarrow $$ $${}^{20}{C_0} - {}^{20}{C_1} + {}^{20}{C_2} - {}^{20}{C_3} + .... - {}^{20} {C_{9}}$$ $$ + {}^{20}{C_{10}}$$ = $$  {1 \over 2}{}^{20}{C_{10}}$$',
    4,
    -1,
    true,
    2007,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', 'binomial_theorem'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1d886617-1865-4232-b66d-5af13a06602a',
    'mathematics',
    '11',
    'Binomial Theorem',
    'Divisibility Concept And Remainder Concept',
    'medium',
    'single_correct',
    '<p>The remainder when (2021)<sup>2023</sup> is divided by 7 is :</p>',
    '[{"id": "A", "text": "1"}, {"id": "B", "text": "2"}, {"id": "C", "text": "5"}, {"id": "D", "text": "6"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '(2021)<sup>2023</sup></p>
<p>= (2016 + 5)<sup>2023</sup> [here 2016 is divisible by 7]</p>
<p>= <sup>2023</sup>C<sub>0</sub> (2016)<sup>2023</sup> + .......... + <sup>2023</sup>C<sub>2022</sub> (2016) (5)<sup>2022</sup> + <sup>2023</sup>C<sub>2023</sub> (5)<sup>2023</sup></p>
<p>= 2016 [<sup>2023</sup>C<sub>0</sub> . (2016)<sup>2022</sup> + ....... + <sup>2023</sup>C<sub>2022</sub> . (5)<sup>2022</sup>] + (5)<sup>2023</sup></p>
<p>= 2016$$\lambda$$ + (5)<sup>2023</sup></p>
<p>= 7 $$\times$$ 288$$\lambda$$ + (5)<sup>2023</sup></p>
<p>= 7K + (5)<sup>2023</sup> ...... (1)</p>
<p>Now, (5)<sup>2023</sup></p>
<p>= (5)<sup>2022</sup> . 5</p>
<p>= (5<sup>3</sup>)<sup>674</sup> . 5</p>
<p>= (125)<sup>674</sup> . 5</p>
<p>= (126 $$-$$ 1)<sup>674</sup> . 5</p>
<p>= 5[<sup>674</sup>C<sub>0</sub> (126)<sup>674</sup> + ......... $$-$$ <sup>674</sup>C<sub>673</sub> (126) + <sup>674</sup>C<sub>674</sub>]</p>
<p>= 5 $$\times$$ 126 [<sup>674</sup>C<sub>0</sub>(126)<sup>673</sup> + ....... $$-$$ <sup>674</sup>C<sub>673</sub>] + 5</p>
<p>= 5 . 7 . 18 [<sup>674</sup>C<sub>0</sub>(126)<sup>673</sup> + ....... $$-$$ <sup>674</sup>C<sub>673</sub>] + 5</p>
<p>= 7$$\lambda$$ + 5</p>
<p>Replacing (5)<sup>2023</sup> in equation (1) with 7$$\lambda$$ + 5, we get,</p>
<p>(2021)<sup>2023</sup> = 7K + 7$$\lambda$$ + 5</p>
<p>= 7(K + $$\lambda$$) + 5</p>
<p>$$\therefore$$ Remainer = 5',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'binomial_theorem'],
    true,
    now()
);

COMMIT;