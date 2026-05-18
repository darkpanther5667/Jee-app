-- Batch 1 - Chunk 6 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b6a34bae-8389-43e8-a40a-bb01530a36d7',
    'mathematics',
    '12',
    'Indefinite Integrals',
    'Integration By Substitution',
    'medium',
    'single_correct',
    'The integral $$\int {{{(2x - 1)\cos \sqrt {{{(2x - 1)}^2} + 5} } \over {\sqrt {4{x^2} - 4x + 6} }}} dx$$ is equal to (where c is a constant of integration)',
    '[{"id": "A", "text": "$${1 \\over 2}\\sin \\sqrt {{{(2x - 1)}^2} + 5}  + c$$"}, {"id": "B", "text": "$${1 \\over 2}\\cos \\sqrt {{{(2x + 1)}^2} + 5}  + c$$"}, {"id": "C", "text": "$${1 \\over 2}\\cos \\sqrt {{{(2x - 1)}^2} + 5}  + c$$"}, {"id": "D", "text": "$${1 \\over 2}\\sin \\sqrt {{{(2x + 1)}^2} + 5}  + c$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '$$\int {{{(2x - 1)\cos \sqrt {{{(2x - 1)}^2} + 5} } \over {\sqrt {{{(2x - 1)}^2} + 5} }}} dx$$<br><br>$${(2x - 1)^2} + 5 = {t^2}$$<br><br>$$2(2x - 1)2dx = 2t\,dt$$<br><br>$$2\sqrt {{t^2} - 5} dx = t\,dt$$<br><br>So, $$\int {{{\sqrt {{t^2} - 5} \cos t} \over {2\sqrt {{t^2} - 5} }}dt = {1 \over 2}\sin t + c} $$<br><br>$$ = {1 \over 2}\sin \sqrt {{{(2x - 1)}^2} + 5}  + c$$',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'indefinite_integrals'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '49aadb02-57a5-40aa-bd5d-c97535190e6f',
    'mathematics',
    '12',
    'Inverse Trigonometric Functions',
    'Principal Value Of Inverse Trigonometric Functions',
    'medium',
    'single_correct',
    '<p>Considering the principal values of the inverse trigonometric functions, the sum of all the solutions of the equation $$\cos ^{-1}(x)-2 \sin ^{-1}(x)=\cos ^{-1}(2 x)$$ is equal to :</p>',
    '[{"id": "A", "text": "0"}, {"id": "B", "text": "1"}, {"id": "C", "text": "$$\\frac{1}{2}$$"}, {"id": "D", "text": "$$-\\frac{1}{2}$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>$${\cos ^{ - 1}}x - 2{\sin ^{ - 1}}x = {\cos ^{ - 1}}2x$$</p>
<p>For Domain : $$x \in \left[ {{{ - 1} \over 2},{1 \over 2}} \right]$$</p>
<p>$${\cos ^{ - 1}}x - 2\left( {{\pi  \over 2} - {{\cos }^{ - 1}}x} \right) = {\cos ^{ - 1}}(2x)$$</p>
<p>$$ \Rightarrow {\cos ^{ - 1}}x + 2{\cos ^{ - 1}}x = \pi  + {\cos ^{ - 1}}2x$$</p>
<p>$$ \Rightarrow \cos (3{\cos ^{ - 1}}x) =  - \cos ({\cos ^{ - 1}}2x)$$</p>
<p>$$ \Rightarrow 4{x^3} = x$$</p>
<p>$$ \Rightarrow x = 3,\, \pm \,{1 \over 2}$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'inverse_trigonometric_functions'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5c772653-fecd-400c-9c14-a5404866912c',
    'mathematics',
    '12',
    'Limits Continuity and Differentiability',
    'Differentiability',
    'medium',
    'single_correct',
    'Let ƒ(x) = 15 – |x – 10|;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c27d0b4e-9a6e-4324-b7b0-66645027c3b7',
    'mathematics',
    '12',
    'Limits Continuity and Differentiability',
    'Limits Of Trigonometric Functions',
    'medium',
    'single_correct',
    '<p>The value of $$\mathop {\lim }\limits_{x \to 1} {{({x^2} - 1){{\sin }^2}(\pi x)} \over {{x^4} - 2{x^3} + 2x - 1}}$$ is equal to:</p>',
    '[{"id": "A", "text": "$${{{\\pi ^2}} \\over 6}$$"}, {"id": "B", "text": "$${{{\\pi ^2}} \\over 3}$$"}, {"id": "C", "text": "$${{{\\pi ^2}} \\over 2}$$"}, {"id": "D", "text": "$$\\pi$$<sup>2</sup>"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p>$$\mathop {\lim }\limits_{x \to 1} {{({x^2} - 1){{\sin }^2}(\pi x)} \over {{x^4} - 2{x^2} + 2x - 1}}$$</p>
<p>$$ = \mathop {\lim }\limits_{x \to 1} {{({x^2} - 1)si{n^2}(\pi x)} \over {({x^2} - 1){{(x - 1)}^2}}}$$</p>
<p>$$ = \mathop {\lim }\limits_{x \to 1} {{{{\sin }^2}(\pi x)} \over {{{(x - 1)}^2}}}$$</p>
<p>Let $$x = 1 + h$$</p>
<p>$$\therefore$$ when x $$\to$$ 1 then h $$\to$$ 0</p>
<p>$$ = \mathop {\lim }\limits_{h \to 0} {{{{\sin }^2}(\pi (1 + h))} \over {{{(1 + h - 1)}^2}}}$$</p>
<p>$$ = \mathop {\lim }\limits_{h \to 0} {{{{\sin }^2}(\pi h)} \over {{h^2}}}$$</p>
<p>$$ = \mathop {\lim }\limits_{h \to 0} {\pi ^2} \times {{{{\sin }^2}(\pi h)} \over {{{(\pi h)}^2}}}$$</p>
<p>$$ = {\pi ^2} \times 1$$</p>
<p>$$ = {\pi ^2}$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'limits_continuity_and_differentiability'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a7f12c0d-de49-4ba4-b73f-772ac4355850',
    'mathematics',
    '12',
    'Logarithm',
    'Logarithmic Equations',
    'medium',
    'single_correct',
    '<p>If the solution of the equation $$\log _{\cos x} \cot x+4 \log _{\sin x} \tan x=1, x \in\left(0, \frac{\pi}{2}\right)$$, is $$\sin ^{-1}\left(\frac{\alpha+\sqrt{\beta}}{2}\right)$$, where $$\alpha$$, $$\beta$$ are integers, then $$\alpha+\beta$$ is equal to :</p>',
    '[{"id": "A", "text": "3"}, {"id": "B", "text": "6"}, {"id": "C", "text": "4"}, {"id": "D", "text": "5"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>$${\log _{\cos x}}\cot x + 4{\log _{\sin x}}\tan x = 1$$</p>
<p>$$ \Rightarrow {\log _{\cos x}}\cot x - 4{\log _{\sin x}}\cot x = 1$$</p>
<p>$$ \Rightarrow 1 - {\log _{\cos x}}\sin x - 4 - 4{\log _{\sin x}}\cos x = 1$$</p>
<p>Let $${\log _{\cos x}}\sin x = t$$</p>
<p>$$t + {4 \over t} = 4$$</p>
<p>$$ \Rightarrow t = 2$$</p>
<p>$$\sin x = {\cos ^2}x$$</p>
<p>$$ \Rightarrow \sin x = 1 - {\sin ^2}x$$</p>
<p>$$ \Rightarrow {\sin ^2}x + \sin {x^{ - 1}} = 0$$</p>
<p>$$ \Rightarrow \sin x = {{ - 1\, \pm \,\sqrt 5 } \over 2}$$</p>
<p>as $$x \in \left( {0,{\pi  \over 2}} \right)$$</p>
<p>$$\sin x = {{\sqrt 5  - 1} \over 2}$$</p>
<p>$$x = {\sin ^{ - 1}}\left( {{{ - 1 + \sqrt 5 } \over 2}} \right)$$</p>
<p>$$ \Rightarrow \alpha  =  - 1,\beta  = 5$$</p>
<p>$$\alpha  + \beta  = 4$$</p>',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'logarithm'],
    true,
    now()
);

COMMIT;