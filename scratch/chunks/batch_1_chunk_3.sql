-- Batch 1 - Chunk 3 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2d3c5153-3c62-42d5-ba1f-6cd402372744',
    'mathematics',
    '11',
    'Circle',
    'Orthogonality Of Two Circles',
    'medium',
    'single_correct',
    'If a circle passes through the point (a, b) and cuts the circle $${x^2}\, + \,{y^2} = {p^2}$$ orthogonally, then the equation of the locus of its centre is :',
    '[{"id": "A", "text": "$${x^2}\\, + \\,{y^2} - \\,3ax\\, - \\,4\\,by\\,\\, + \\,({a^2}\\, + \\,{b^2} - {p^2}) = 0$$"}, {"id": "B", "text": "$$2ax\\, + \\,\\,2\\,by\\,\\, - \\,({a^2}\\, - \\,{b^2} + {p^2}) = 0$$"}, {"id": "C", "text": "$${x^2}\\, + \\,{y^2} - \\,2ax\\, - \\,\\,3\\,by\\,\\, + \\,({a^2}\\, - \\,{b^2} - {p^2}) = 0$$"}, {"id": "D", "text": "$$2ax\\, + \\,\\,2\\,by\\,\\, - \\,({a^2}\\, + \\,{b^2} + {p^2}) = 0$$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Let the center be $$\left( {\alpha ,\beta } \right)$$
<br><br>As It cuts the circle $${x^2} + {y^2} = {p^2}$$ orthogonally
<br><br>$$\therefore$$ Using $$2{g_1}{g_2} + 2{f_1}{f_2} = {c_1} + {c_2},\,\,$$  we get
<br><br>$$2\left( { - \alpha } \right) \times 0 + 2\left( { - \beta } \right) \times 0$$
<br><br>$$ = {c_1} - {p^2} \Rightarrow {c_1} = {p^2}$$
<br><br>Let equation of circle is 
<br><br>$${x^2} + {y^2} - 2\alpha x - 2\beta y + {p^2} = 0$$
<br><br>It passes through
<br><br>$$\left( {a,b} \right) \Rightarrow {a^2} + {b^2} - 2\alpha a - 2\beta b + {p^2} = 0$$
<br><br>$$\therefore$$ Locus of $$\left( {\alpha ,\beta } \right)$$ is 
<br><br>$$\therefore$$ $$2ax + 2by - \left( {{a^2} + {b^2} + {p^2}} \right) = 0.$$',
    4,
    -1,
    true,
    2005,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', 'circle'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a971bafd-ba54-4f3a-bfb9-4bb82ece6507',
    'mathematics',
    '11',
    'Circle',
    'Basic Theorems Of A Circle',
    'easy',
    'single_correct',
    '<p>Let a triangle ABC be inscribed in the circle $${x^2} - \sqrt 2 (x + y) + {y^2} = 0$$ such that $$\angle BAC = {\pi  \over 2}$$. If the length of side AB is $$\sqrt 2 $$, then the area of the $$\Delta$$ABC is equal to :</p>',
    '[{"id": "A", "text": "1"}, {"id": "B", "text": "$$\\left( {\\sqrt 6  + \\sqrt 3 } \\right)/2$$"}, {"id": "C", "text": "$$\\left( {3 + \\sqrt 3 } \\right)/4$$"}, {"id": "D", "text": "$$\\left( {\\sqrt 6  + 2\\sqrt 3 } \\right)/4$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>Note:</p>
<p>For equation of circle $${x^2} + {y^2} + 2gx + 2fy + c = 0$$, center is $$( - g,\, - f)$$ and radius $$r = \sqrt {{g^2} + {f^2} - c} $$</p>
<p>Given,</p>
<p>equation of circle is</p>
<p>$${x^2} - \sqrt 2 (x + y) + {y^2} = 0$$</p>
<p>$$ \Rightarrow {x^2} + {y^2} - \sqrt 2 x - \sqrt 2 y = 0$$</p>
<p>$$ \Rightarrow {x^2} + {y^2} + 2\left( { - {1 \over {\sqrt 2 }}} \right)x + 2\left( { - {1 \over {\sqrt 2 }}} \right) = 0$$</p>
<p>$$\therefore$$ $$g =  - {1 \over {\sqrt 2 }}$$ and $$f =  - {1 \over {\sqrt 2 }}$$</p>
<p>$$\therefore$$ Center $$ = ( - g,\, - f) = \left( {{1 \over {\sqrt 2 }},{1 \over {\sqrt 2 }}} \right)$$</p>
<p>And Radius $$ = r = \sqrt {{{\left( { - {1 \over {\sqrt 2 }}} \right)}^2} + {{\left( { - {1 \over {\sqrt 2 }}} \right)}^2} - 0} $$</p>
<p>$$ = \sqrt {{1 \over 2} + {1 \over 2}}  = \sqrt 1  = 1$$</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l5sczyp3/e6de313f-31b7-4de8-8ad3-c03114d47130/7ab55770-077b-11ed-94f6-83604aa63acb/file-1l5sczyp4.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l5sczyp3/e6de313f-31b7-4de8-8ad3-c03114d47130/7ab55770-077b-11ed-94f6-83604aa63acb/file-1l5sczyp4.png" loading="lazy" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9904c706-3945-487e-9cad-3da14bc67518',
    'mathematics',
    '12',
    'Complex Numbers',
    'Applications Of Complex Numbers In Coordinate Geometry',
    'medium',
    'single_correct',
    'Let z$$ \in $$C, the set of complex numbers. Then the equation, 2|z + 3i| $$-$$ |z $$-$$ i| = 0 represents :',
    '[{"id": "A", "text": "a circle with radius $${8 \\over 3}.$$"}, {"id": "B", "text": "a circle with diameter $${{10} \\over 3}.$$"}, {"id": "C", "text": "an ellipse with length of major axis $${{16} \\over 3}.$$"}, {"id": "D", "text": "an ellipse with length of minor axis $${{16} \\over 9}.$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Given, 
<br><br>2 $$\,\left| \, \right.$$z + 3i$$\,\left| \, \right.$$ = $$\,\left| \, \right.$$z $$-$$i$$\,\left| \, \right.$$
<br><br>Let z = x + iy
<br><br>$$ \Rightarrow $$$$\,\,\,$$ 2 $$\,\left| \, \right.$$ x + iy + 3i $$\,\left| \, \right.$$ = $$\,\left| \, \right.$$ x + iy $$-$$ i $$\,\left| \, \right.$$
<br><br>$$ \Rightarrow $$$$\,\,\,$$ 2 $$\,\left| \, \right.$$ x + i (y + 3)$$\,\left| \, \right.$$ = $$\,\left| \, \right.$$ x + i (y $$-$$ 1)$$\,\left| \, \right.$$
<br><br>$$ \Rightarrow $$$$\,\,\,$$ 2 $$\sqrt {{x^2} + {{\left( {y + 3} \right)}^2}} $$ = $$\sqrt {{x^2} + {{\left( {y - 1} \right)}^2}} $$
<br><br>$$ \Rightarrow $$$$\,\,\,$$ 4 (x<sup>2</sup> + y<sup>2</sup> + 6y + 9) = x<sup>2</sup> + y<sup>2</sup> $$-$$ 2y + 1
<br><br>$$ \Rightarrow $$$$\,\,\,$$ 3x<sup>2</sup> + 3y<sup>2</sup> + 26y + 35 = 0
<br><br>$$ \Rightarrow $$$$\,\,\,$$ x<sup>2</sup> + y<sup>2</sup> + $${{26} \over 3}$$ y + $${{35} \over 3}$$ = 0
<br><br>This is a equation of circle with center ($$-$$ $${{13} \over 3}$$, 0) 
<br><br>$$\therefore\,\,\,$$ Radius = $$\sqrt {0 + {{169} \over 9} - {{35} \over 3}} $$
<br><br>= $$\sqrt {{{64} \over 9}} $$
<br><br>= $${8 \over 3}$$',
    4,
    -1,
    true,
    2017,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'complex_numbers'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c4b817bd-e260-429c-b90b-d9517d0ddbd7',
    'mathematics',
    '12',
    'Complex Numbers',
    'De Moivres Theorem',
    'medium',
    'single_correct',
    'The complex number $z=\frac{i-1}{\cos \frac{\pi}{3}+i \sin \frac{\pi}{3}}$ is equal to :',
    '[{"id": "A", "text": "$\\cos \\frac{\\pi}{12}-i \\sin \\frac{\\pi}{12}$"}, {"id": "B", "text": "$\\sqrt{2}\\left(\\cos \\frac{\\pi}{12}+i \\sin \\frac{\\pi}{12}\\right)$"}, {"id": "C", "text": "$\\sqrt{2} i\\left(\\cos \\frac{5 \\pi}{12}-i \\sin \\frac{5 \\pi}{12}\\right)$"}, {"id": "D", "text": "$\\sqrt{2}\\left(\\cos \\frac{5 \\pi}{12}+i \\sin \\frac{5 \\pi}{12}\\right)$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '$\mathrm{Z}=\frac{\mathrm{i}-1}{\cos \frac{\pi}{3}+\mathrm{i} \sin \frac{\pi}{3}}=\frac{\mathrm{i}-1}{\frac{1}{2}+\frac{\sqrt{3}}{2} \mathrm{i}}$

<br/><br/>$=\frac{i-1}{\frac{1}{2}+\frac{\sqrt{3}}{2} \mathrm{i}} \times \frac{\frac{1}{2}-\sqrt{\frac{3}{2}} \mathrm{i}}{\frac{1}{2}-\sqrt{3 / 2} \mathrm{i}}=\frac{\sqrt{3}-1}{2}+\frac{\sqrt{3}+1}{2} \mathrm{i}$

<br/><br/>Apply polar form,

<br/><br/>$r \cos \theta=\frac{\sqrt{3}-1}{2}$

<br/><br/>$r \sin \theta=\frac{\sqrt{3}+1}{2}$

<br/><br/>Now, $\tan \theta=\frac{\sqrt{3}+1}{\sqrt{3}-1}$

<br/><br/>So, $ \theta=\frac{5 \pi}{12}$',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'complex_numbers'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7c033373-77e9-4ce1-a8e8-fa69d44f2dbb',
    'mathematics',
    '12',
    'Definite Integration',
    'Properties Of Definite Integration',
    'medium',
    'single_correct',
    '$$\int\limits_0^\pi  {xf\left( {\sin x} \right)dx} $$   is equal to',
    '[{"id": "A", "text": "$$\\pi \\int\\limits_0^\\pi  {f\\left( {\\cos x} \\right)dx} $$"}, {"id": "B", "text": "$$\\,\\pi \\int\\limits_0^\\pi  {f\\left( {sinx} \\right)dx} $$"}, {"id": "C", "text": "$${\\pi  \\over 2}\\int\\limits_0^{\\pi /2} {f\\left( {sinx} \\right)dx} $$"}, {"id": "D", "text": "$$\\pi \\int\\limits_0^{\\pi /2} {f\\left( {\\cos x} \\right)dx} $$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '$$I = \int\limits_0^\pi  {xf\left( {\sin \,x} \right)dx} $$
<br><br>$$ = \int\limits_0^\pi  {\left( {\pi  - x} \right)f\left( {\sin x} \right)dx} $$
<br><br>$$ = \pi \int\limits_0^\pi  {f\left( {\sin x} \right)dx - 1} $$
<br><br>$$ \Rightarrow 2I = \pi {\pi  \over 0}f\left( {\sin x} \right)dx$$
<br><br>$$I = {\pi  \over 2}\int\limits_0^\pi  {f\left( {\sin x} \right)dx} $$
<br><br>$$ = \pi \int\limits_0^{\pi /2} {f\left( {\sin x} \right)dx} $$
<br><br>$$ = \pi \int\limits_0^{\pi /2} {f\left( {\cos x} \right)dx} $$',
    4,
    -1,
    true,
    2006,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', 'definite_integration'],
    true,
    now()
);

COMMIT;