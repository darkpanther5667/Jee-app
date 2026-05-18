-- Batch 1 - Chunk 1 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '07fe6cae-a1a5-4ba3-81da-ae47174b354a',
    'mathematics',
    '12',
    '3D Geometry',
    'Lines And Plane',
    'easy',
    'single_correct',
    'A plane which passes through the point $$(3,2,0)$$ and the line 
<br><br/>$${{x - 4} \over 1} = {{y - 7} \over 5} = {{z - 4} \over 4}$$ is :',
    '[{"id": "A", "text": "$$x-y+z=1$$"}, {"id": "B", "text": "$$x+y+z=5$$"}, {"id": "C", "text": "$$x+2y-z=1$$"}, {"id": "D", "text": "$$2x-y+z=5$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'As the point $$\left( {3,2,0} \right)$$ lies on the given line 
<br><br>$${{x - 4} \over 1} = {{y - 7} \over 5} = {{z - 4} \over 4}$$
<br><br>$$\therefore$$ There can be infinite many planes passing through this line. But here out of the four options only first option is satisfied by the coordinates of both the points $$\left( {3,\,2,\,0} \right)$$ and $$\left( {4,\,7,\,4} \right)$$
<br><br>$$\therefore$$ $$x - y + z = 1$$ is the required plane.',
    4,
    -1,
    true,
    2002,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', '3d_geometry'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7739c2d7-794d-4c3a-bda5-f4055742c809',
    'mathematics',
    '12',
    '3D Geometry',
    'Lines And Plane',
    'medium',
    'single_correct',
    'The length of the perpendicular drawn from the point (2, 1, 4) to the plane containing the lines 
<br>$$\overrightarrow r  = \left( {\widehat i + \widehat j} \right) + \lambda \left( {\widehat i + 2\widehat j - \widehat k} \right)$$ and $$\overrightarrow r  = \left( {\widehat i + \widehat j} \right) + \mu \left( { - \widehat i + \widehat j - 2\widehat k} \right)$$ is :',
    '[{"id": "A", "text": "$${1 \\over 3}$$"}, {"id": "B", "text": "$${1 \\over {\\sqrt 3 }}$$"}, {"id": "C", "text": "3"}, {"id": "D", "text": "$${\\sqrt 3 }$$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Vector of the plane is <br><br>
$$\left| {\matrix{
   {\hat i} &amp;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9dd0afeb-e3ed-401f-b07c-088079a29014',
    'mathematics',
    '12',
    '3D Geometry',
    'Lines In Space',
    'medium',
    'single_correct',
    '<p>If the two lines $${l_1}:{{x - 2} \over 3} = {{y + 1} \over {-2}},\,z = 2$$ and $${l_2}:{{x - 1} \over 1} = {{2y + 3} \over \alpha } = {{z + 5} \over 2}$$ are perpendicular, then an angle between the lines l<sub>2</sub> and $${l_3}:{{1 - x} \over 3} = {{2y - 1} \over { - 4}} = {z \over 4}$$ is :</p>',
    '[{"id": "A", "text": "$${\\cos ^{ - 1}}\\left( {{{29} \\over 4}} \\right)$$"}, {"id": "B", "text": "$${\\sec ^{ - 1}}\\left( {{{29} \\over 4}} \\right)$$"}, {"id": "C", "text": "$${\\cos ^{ - 1}}\\left( {{2 \\over {29}}} \\right)$$"}, {"id": "D", "text": "$${\\cos ^{ - 1}}\\left( {{2 \\over {\\sqrt {29} }}} \\right)$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>$$\because$$ L<sub>1</sub> and L<sub>2</sub> are perpendicular, so</p>
<p>$$3 \times 1 + ( - 2)\left( {{\alpha  \over 2}} \right) + 0 \times 2 = 0$$</p>
<p>$$ \Rightarrow \alpha  = 3$$</p>
<p>Now angle between l<sub>2</sub> and l<sub>3</sub>,</p>
<p>$$\cos \theta  = {{1( - 3) + {\alpha  \over 2}( - 2) + 2(4)} \over {\sqrt {1 + {{{\alpha ^2}} \over 4} + } 4\sqrt {9 + 4 + 16} }}$$</p>
<p>$$ \Rightarrow \cos \theta  = {2 \over {{{29} \over 2}}} \Rightarrow \theta  = {\cos ^{ - 1}}\left( {{4 \over {29}}} \right) = {\sec ^{ - 1}}\left( {{{29} \over 4}} \right)$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', '3d_geometry'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '99adb119-4739-42f3-b200-162a8406530b',
    'mathematics',
    '12',
    '3D Geometry',
    'Lines In Space',
    'medium',
    'single_correct',
    'Let $\mathrm{P}$ and $\mathrm{Q}$ be the points on the line $\frac{x+3}{8}=\frac{y-4}{2}=\frac{z+1}{2}$ which are at a distance of 6 units from the point $\mathrm{R}(1,2,3)$. If the centroid of the triangle PQR is $(\alpha, \beta, \gamma)$, then $\alpha^2+\beta^2+\gamma^2$ is :',
    '[{"id": "A", "text": "18"}, {"id": "B", "text": "24"}, {"id": "C", "text": "26"}, {"id": "D", "text": "36"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Any point on line $\frac{x+3}{8}=\frac{y-4}{2}=\frac{z+1}{2}$ <br/><br/>can be taken as $(8 \lambda-3,2 \lambda+4,2 \lambda-1)$
<br/><br/> If at a distance of 6 units from $R(1,2,3)$
<br/><br/>$$
\begin{aligned}
& \Rightarrow(8 \lambda-3-1)^2+(2 \lambda+4-2)^2+(2 \lambda-1-3)^2=36 \\\\
& \left.\Rightarrow \lambda^2-\lambda=0 \text { \{on simplification }\right\} \\\\
& \Rightarrow \lambda=0, \lambda=1
\end{aligned}
$$
<br/><br/>Here $P \& Q$ are $(-3,4,-1)$ and $(5,6,1)$ Centroid of $\triangle P Q R$
<br/><br/>$$
\begin{aligned}
& (\alpha, \beta, \gamma) \equiv\left(\frac{5-3+1}{3}, \frac{6+4+2}{3}, \frac{1-1+3}{3}\right) \\\\
& \Rightarrow \alpha=1, \beta=4, \gamma=1 \\\\
& \Rightarrow \alpha^2+\beta^2+\gamma^2=18
\end{aligned}
$$',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', '3d_geometry'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1395852e-fedf-48a3-a06b-0b2decf1475d',
    'mathematics',
    '12',
    'Application of Derivatives',
    'Maxima And Minima',
    'medium',
    'single_correct',
    'The function $$f\left( x \right) = {x \over 2} + {2 \over x}$$ has a local minimum at',
    '[{"id": "A", "text": "$$x=2$$"}, {"id": "B", "text": "$$x=-2$$"}, {"id": "C", "text": "$$x=0$$"}, {"id": "D", "text": "$$x=1$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '$$f\left( x \right) = {x \over 2} + {2 \over x} \Rightarrow f''\left( x \right) = {1 \over 2} - {2 \over {{x^2}}} = 0$$ 
<br><br>$$ \Rightarrow {x^2} = 4$$ or $$x=2,-2;

COMMIT;