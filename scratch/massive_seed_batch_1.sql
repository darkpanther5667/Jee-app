-- JEE Test Series Massive Question Seed Batch 1 of 5
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
   {\hat i} &amp; {\hat j} &amp; {\hat k}  \cr 
   1 &amp; 2 &amp; { - 1}  \cr 
   { - 1} &amp; 1 &amp; { - 2}  \cr 

 } } \right| =  - 3\hat i + 3\hat j + 3\hat k$$<br><br>
Now equation of plane is <br><br>
$$ - 3x + 3y + 3z = c$$<br><br>
(1, 1, 0) will satisfy the plane<br><br>
$$ \Rightarrow  - 3 + 3 + 0 = c$$<br><br>
$$ \Rightarrow $$ c = 0<br><br>
$$  - 3x + 3y + 3z = 0$$<br><br>
distance  from (2, 1, 4) is<br><br>
$$ \Rightarrow \left| {{{ - 6 + 3 + 12} \over {\sqrt {27} }}} \right| = \left| {{9 \over {3\sqrt 3 }}} \right| = \sqrt 3 \,\,units$$',
    4,
    -1,
    true,
    2019,
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
<br><br>$$ \Rightarrow {x^2} = 4$$ or $$x=2,-2;$$ $$\,\,\,\,\,f''''\left( x \right) = {4 \over {{x^3}}}$$
<br><br>$$f''''{\left. {\left( x \right)} \right]_{x = 2}} =  + ve \Rightarrow f\left( x \right)$$ 
<br><br>has local min at $$x=2.$$',
    4,
    -1,
    true,
    2006,
    'jee_main',
    NULL,
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
&amp; f(x)=2 x+3(x)^{\frac{2}{3}} \\
&amp; f^{\prime}(x)=2+2 x^{\frac{-1}{3}} \\
&amp; =2\left(1+\frac{1}{x^{\frac{1}{3}}}\right) \\
&amp; =2\left(\frac{x^{\frac{1}{3}}+1}{x^{\frac{1}{3}}}\right)
\end{aligned}$$</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/6y3zli1lsr8t6nc/4c9643cb-de77-44b7-86fb-da033b7c270c/4abc4680-ce37-11ee-9412-cd4f9c6f2c40/file-6y3zli1lsr8t6nd.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/6y3zli1lsr8t6nc/4c9643cb-de77-44b7-86fb-da033b7c270c/4abc4680-ce37-11ee-9412-cd4f9c6f2c40/file-6y3zli1lsr8t6nd.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline" alt="JEE Main 2024 (Online) 29th January Evening Shift Mathematics - Application of Derivatives Question 32 English Explanation"></p>
<p>So, maxima (M) at x = $$-$$1 &amp; minima (m) at x = 0</p>',
    4,
    -1,
    true,
    2024,
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
    'Given,<br><br>4y<sup>2</sup> = x<sup>2</sup>(4 $$-$$ x)(x $$-$$ 2) ..... (1)<br><br>Here, Left hand side 4y<sup>2</sup> is always positive. So Right hand side should also be positive.<br><br>In x$$\in$$ [2, 4] Right hand side is positive.<br><br>By putting y = $$-$$y in equation (1), equation remains same. So, graph is symmetric about x axis.<br><br> <picture><source media="(max-width: 1644px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb.jpeg"><source media="(max-width: 320px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-320w.jpeg"><source media="(max-width: 500px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-500w.jpeg"><source media="(max-width: 680px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-680w.jpeg"><source media="(max-width: 860px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-860w.jpeg"><source media="(max-width: 1040px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-1040w.jpeg"><source media="(max-width: 1220px)" srcset="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-1220w.jpeg"><img src="https://imagex.cdn.examgoal.net/1kmtidhla/863be248-9825-44b0-aaf6-7a22a9778d83/2ceb4df0-8ff5-11eb-8dc2-2d770738b30d/file-1kmtidhlb-1400w.jpeg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 18th March Evening Shift Mathematics - Area Under The Curves Question 99 English Explanation"></picture> <br><br>Required Area = 2A<sub>1</sub><br><br>$$ = 2\int_2^4 y dx$$<br><br>$$ = \int_2^4 {x\sqrt {(x - 2)(4 - x)} } dx$$<br><br>put $$x = 4{\sin ^2}\theta  + 2{\cos ^2}\theta $$<br><br>$$ \Rightarrow dx = \left[ {4(2\sin \theta \cos \theta  - 4\sin \theta \cos \theta )} \right]d\theta $$<br><br>$$ \Rightarrow dx = 4\sin \theta \cos \theta d\theta $$<br><br>When lower limit = 2 then <br><br>$$2 = 4{\sin ^2}\theta  + 2{\cos ^2}\theta $$<br><br>$$ \Rightarrow 4(1 - {\cos ^2}\theta ) + 2{\cos ^2}\theta  = 2$$<br><br>$$ \Rightarrow 4 - 4{\cos ^2}\theta  + 2{\cos ^2}\theta  = 2$$<br><br>$$ \Rightarrow 2{\cos ^2}\theta  = 2$$<br><br>$$ \Rightarrow \cos \theta  =  \pm 1$$<br><br>$$ \Rightarrow \theta  = 0,\pi {} $$<br><br>When upper limit = 4 then<br><br>$$4 = 4{\sin ^2}\theta  + 2{\cos ^2}\theta $$<br><br>$$ \Rightarrow  - 2{\cos ^2}\theta  = 0$$<br><br>$$ \Rightarrow \theta  = {{\pi {} } \over 2}$$<br><br>$$ \therefore $$ Range of $$\theta$$ = 0 to $${{{\pi {} } \over 2}}$$<br><br>$$ \therefore $$ Area = $$ \int_0^{{{\pi {} } \over 2}} {(4{{\sin }^2}\theta  + 2{{\cos }^2}\theta )\sqrt {(2{{\sin }^2}\theta )(2{{\cos }^2}\theta )} (4\sin \theta \cos \theta )d\theta } $$<br><br>$$ = \int_0^{{{\pi {} } \over 2}} {(4{{\sin }^2}\theta  + 2{{\cos }^2}\theta )8{{\sin }^2}\theta {{\cos }^2}\theta d\theta } $$<br><br>$$ = 32\int_0^{{{\pi {} } \over 2}} {{{\sin }^4}\theta {{\cos }^2}\theta d\theta }  + 16\int_0^{{{\pi {} } \over 2}} {{{\sin }^2}\theta {{\cos }^2}\theta d\theta } $$<br><br>Using Wallis formula,<br><br>$$ = 32.{{3.1.1} \over {6.4.2}}.{{\pi {} } \over 2} + 16.{{1.3.1} \over {6.4.2}}.{{\pi {} } \over 2}$$<br><br>$$ = \pi {}  + {{\pi {} } \over 2}$$<br><br>$$ = {{3\pi {} } \over 2}$$',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'area_under_the_curves'],
    true,
    now()
);
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
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l5sczyp3/e6de313f-31b7-4de8-8ad3-c03114d47130/7ab55770-077b-11ed-94f6-83604aa63acb/file-1l5sczyp4.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l5sczyp3/e6de313f-31b7-4de8-8ad3-c03114d47130/7ab55770-077b-11ed-94f6-83604aa63acb/file-1l5sczyp4.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 29th June Evening Shift Mathematics - Circle Question 72 English Explanation"></p>
<p>As AB and AC makes an angle 90$$^\circ$$ then line BC passes through the center of circle and BC is the diameter of the circle.</p>
<p>$$\therefore$$ Length of BC = 2r = 2 $$\times$$ 1 = 2</p>
<p>$$\therefore$$ AC<sup>2</sup> = BC<sup>2</sup> $$-$$ AB<sup>2</sup></p>
<p>= 2<sup>2</sup> $$-$$ ($$\sqrt2$$)<sup>2</sup></p>
<p>= 2</p>
<p>$$\Rightarrow$$ AC = $$\sqrt2$$</p>
<p>$$\therefore$$ Area of right angle triangle ABC</p>
<p>= $${1 \over 2}$$ $$\times$$ AC $$\times$$ AB</p>
<p>= $${1 \over 2}$$ $$\times$$ $$\sqrt2$$ $$\sqrt2$$</p>
<p>= 1 square unit.</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
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
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3adb8dbf-0bb5-461c-8fa0-8c50c8989642',
    'mathematics',
    '12',
    'Definite Integration',
    'Properties Of Definite Integration',
    'medium',
    'single_correct',
    'Let P(x) = x<sup>2</sup> + bx + c be a quadratic polynomial with real coefficients such that $$\int_0^1 {P(x)dx} $$ = 1 and P(x) leaves remainder 5 when it is divided by (x $$-$$ 2). Then the value of 9(b + c) is equal to :',
    '[{"id": "A", "text": "9"}, {"id": "B", "text": "11"}, {"id": "C", "text": "7"}, {"id": "D", "text": "15"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$$(x - 2)Q(x) + 5 = {x^2} + bx + c$$<br><br>Put x = 2<br><br>5 = 2b + c + 4 .... (1)<br><br>$$\int_0^1 {({x^2} + bx + c)dx}  = 1$$<br><br>$$ \Rightarrow {1 \over 3} + {b \over 2} + c = 1$$<br><br>$${b \over 2} + c = {2 \over 3}$$ .... (2)<br><br>Solve (1) &amp; (2)<br><br>$$b = {2 \over 9}$$<br><br>$$c = {5 \over 9}$$<br><br>9(b + c) = 7',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'definite_integration'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '70607711-f175-4ea5-8e4b-013bb034ed98',
    'mathematics',
    '12',
    'Definite Integration',
    'Properties Of Definite Integration',
    'medium',
    'single_correct',
    '<p>$$\int\limits_{{{3\sqrt 2 } \over 4}}^{{{3\sqrt 3 } \over 4}} {{{48} \over {\sqrt {9 - 4{x^2}} }}dx} $$ is equal to :</p>',
    '[{"id": "A", "text": "$${\\pi  \\over 2}$$"}, {"id": "B", "text": "$${\\pi  \\over 3}$$"}, {"id": "C", "text": "$${\\pi  \\over 6}$$"}, {"id": "D", "text": "$$2\\pi $$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '$$
\int_{\frac{3 \sqrt{2}}{4}}^{\frac{3 \sqrt{3}}{4}} \frac{48}{\sqrt{9-4 x^2}} d x
$$<br/><br/>
We have $\int \frac{d x}{\sqrt{a^2-x^2}}=\sin ^{-1} \frac{x}{a}+C$<br/><br/>
Hence $\int_{\frac{3 \sqrt{2}}{4}}^{\frac{3 \sqrt{3}}{4}} \frac{48}{\sqrt{9-4 x^2}} d x=\frac{48}{2} \times\left[\sin ^{-1} \frac{2 x}{3}\right]_{\frac{3 \sqrt{2}}{4}}^{\frac{3 \sqrt{3}}{4}}$<br/><br/>
$=24 \times\left[\sin ^{-1}\left(\frac{2}{3} \times \frac{3 \sqrt{3}}{4}\right)-\sin ^{-1}\left(\frac{2}{3} \times \frac{3 \sqrt{2}}{4}\right)\right]$
$=24 \times\left[\sin ^{-1} \frac{\sqrt{3}}{2}-\sin ^{-1} \frac{1}{\sqrt{2}}\right]$<br/><br/>
$=24 \times\left(\frac{\pi}{3}-\frac{\pi}{4}\right)$<br/><br/>
$=24 \times \frac{\pi}{12}=2 \pi$',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'definite_integration'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7ae35456-680d-4f25-8731-c486e3d0c0a5',
    'mathematics',
    '12',
    'Differential Equations',
    'Solution Of Differential Equations By Method Of Separation Variables And Homogeneous',
    'medium',
    'single_correct',
    'At present, a firm is manufacturing $$2000$$ items. It is estimated that the rate of change of production P  w.r.t.  additional number of workers $$x$$ is given by $${{dp} \over {dx}} = 100 - 12\sqrt x .$$ If the firm employs $$25$$ more workers, then the new level of production of items is',
    '[{"id": "A", "text": "$$2500$$"}, {"id": "B", "text": "$$3000$$"}, {"id": "C", "text": "$$3500$$"}, {"id": "D", "text": "$$4500$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Given, Rate of change is $${{dp} \over {dx}} = 100 - 12\sqrt x $$
<br><br>$$ \Rightarrow dP = \left( {100 - 12\sqrt x } \right)dx$$
<br><br>By intergrating $$\int {dP = \int {\left( {100 - 12\sqrt x } \right)} } dx$$
<br><br>$$\int {dP}  = \int {\left( {100 - 12\sqrt x } \right)} dx$$
<br><br>$$P = 100x - 8{x^{3/2}} + C$$
<br><br>Given, when $$x=0$$ then $$P=2000$$ 
<br><br>$$ \Rightarrow C = 2000$$
<br><br>Now when $$x$$$$=25$$ 
<br><br>then $$P = 100 \times 25 - 8 \times {\left( {25} \right)^{3/2}} + 2000$$
<br><br>$$\,\,\,\,\,\,\,\,\,\,$$ $$=4500-1000$$
<br><br>$$ \Rightarrow P = 3500$$',
    4,
    -1,
    true,
    2013,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', 'differential_equations'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '545bdda5-cbfc-47e4-acc8-4bf15690f342',
    'mathematics',
    '12',
    'Differential Equations',
    'Solution Of Differential Equations By Method Of Separation Variables And Homogeneous',
    'medium',
    'single_correct',
    '<p>Let the solution curve of the differential equation</p>
<p>$$x{{dy} \over {dx}} - y = \sqrt {{y^2} + 16{x^2}} $$, $$y(1) = 3$$ be $$y = y(x)$$. Then y(2) is equal to:</p>',
    '[{"id": "A", "text": "15"}, {"id": "B", "text": "11"}, {"id": "C", "text": "13"}, {"id": "D", "text": "17"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>Given,</p>
<p>$$x{{dy} \over {dx}} - y = \sqrt {{y^2} + 16x} $$</p>
<p>$$ \Rightarrow x{{dy} \over {dx}} = y + \sqrt {{y^2} + 16x} $$</p>
<p>$$ \Rightarrow {{dy} \over {dx}} = {y \over x} + \sqrt {{{\left( {{y \over x}} \right)}^2} + 16} $$</p>
<p>This is a homogenous different equation.</p>
<p>Let $${y \over x} = v$$</p>
<p>$$ \Rightarrow y = vx$$</p>
<p>$$ \Rightarrow {{dy} \over {dx}} = v + x{{dv} \over {dx}}$$</p>
<p>$$\therefore$$ $$v + x{{dv} \over {dx}} =v+ \sqrt {{v^2} + 16} $$</p>
<p>$$ \Rightarrow $$ $$ x{{dv} \over {dx}} = \sqrt {{v^2} + 16} $$</p>
<p>$$ \Rightarrow {{dv} \over {\sqrt {{v^2} + 16} }} = {{dx} \over x}$$</p>
<p>Integrating both sides, we get</p>
<p>$$\int {{{dv} \over {\sqrt {{v^2} + 16} }} = \int {{{dx} \over x}} } $$</p>
<p>$$ \Rightarrow \ln \left| {v + \sqrt {{v^2} + 16} } \right| = \ln x + \ln c$$</p>
<p>$$ \Rightarrow v + \sqrt {{v^2} + 16}  = cx$$</p>
<p>Now putting, $$v = {y \over x}$$, we get</p>
<p>$${y \over x} + \sqrt {{{{y^2}} \over {{x^2}}} + 16}  = cx$$</p>
<p>$$ \Rightarrow {y \over x} + \sqrt {{{{y^2} + 16{x^2}} \over {{x^2}}}}  = cx$$</p>
<p>$$ \Rightarrow y + \sqrt {{y^2} + 16{x^2}}  = c{x^2}$$ ...... (1)</p>
<p>Given, $$y(1) = 3$$</p>
<p>$$\therefore$$ When x = 1 then y = 3.</p>
<p>Putting in equation (1) we get,</p>
<p>$$3 + \sqrt {9 + 16}  = c.\,1$$</p>
<p>$$ \Rightarrow c = 8$$</p>
<p>$$\therefore$$ Solution of equation,</p>
<p>$$y + \sqrt {{y^2} + 16{x^2}}  = 8{x^2}$$</p>
<p>Now, y(2) means when x = 2 then y = ?</p>
<p>$$\therefore$$ $$y + \sqrt {{y^2} + 16 \times 4}  = 8 \times 4$$</p>
<p>$$ \Rightarrow y = 15$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'differential_equations'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '182bd554-010a-4d29-81c3-21adecf430cb',
    'mathematics',
    '12',
    'Differential Equations',
    'Linear Differential Equations',
    'hard',
    'single_correct',
    '<p>If for the solution curve $y=f(x)$ of the differential equation $\frac{d y}{d x}+(\tan x) y=\frac{2+\sec x}{(1+2 \sec x)^2}$, $x \in\left(\frac{-\pi}{2}, \frac{\pi}{2}\right), f\left(\frac{\pi}{3}\right)=\frac{\sqrt{3}}{10}$, then $f\left(\frac{\pi}{4}\right)$ is equal to:</p>',
    '[{"id": "A", "text": "$\\frac{5-\\sqrt{3}}{2 \\sqrt{2}}$"}, {"id": "B", "text": "<p>$\\frac{4 - \\sqrt{2}}{14}$</p>"}, {"id": "C", "text": "<p>$\\frac{9\\sqrt{3} + 3}{10(4 + \\sqrt{3})}$</p>"}, {"id": "D", "text": "<p>$\\frac{\\sqrt{3} + 1}{10(4 + \\sqrt{3})}$</p>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>$$\begin{aligned}
& \text { If } \mathrm{e}^{\int \tan x d x}=\mathrm{e}^{\ln (\sec x)}=\sec x \\
& \therefore y \cdot \sec x=\int\left\{\frac{2+\sec x}{(1+2 \sec x)^2}\right\} \sec x d x
\end{aligned}$$</p>
<p>$$\begin{aligned}
&\begin{aligned}
& =\int \frac{2 \cos x+1}{(\cos x+2)^2} d x \text { Let } \cos x=\frac{1-t^2}{1+t^2} \\
& =\int \frac{2\left(\frac{1-t^2}{1+t^2}\right)+1}{\left(\frac{1-t^2}{1+t^2}+2\right)^2} 2 d t \\
& =\int \frac{2-2 t^2+1+t^2}{\left(1-t^2+2+2 t^2\right)^2} \times 2 d t \\
& =2 \int \frac{3-t^2}{\left(t^2+3\right)^2} d t
\end{aligned}\\
&\text { Let } \mathrm{t}+\frac{3}{\mathrm{t}}=\mathrm{u}\\
&\left(1-\frac{3}{\mathrm{t}^2}\right) \mathrm{dt}=\mathrm{du}
\end{aligned}$$</p>
<p>$=-2 \int \frac{\mathrm{du}}{\mathrm{u}^2}$</p>
<p>$$\begin{aligned}
& y \cdot(\sec x)=\frac{2}{u}+c \\
& y \cdot \sec x=\frac{2}{t+\frac{3}{t}}+c\quad\text{..... (I)}
\end{aligned}$$</p>
<p>$$\begin{aligned}
& \text { At } \mathrm{x}=\frac{\pi}{3}, \mathrm{t}=\tan \frac{\mathrm{x}}{2}=\frac{1}{\sqrt{3}} \\
& \text { 2. } \frac{\sqrt{3}}{10}=\frac{2}{\frac{1}{\sqrt{3}}+3 \sqrt{3}}+\mathrm{c} \\
& \text { 2. } \frac{\sqrt{3}}{10}=\frac{2 \sqrt{3}}{10}+\mathrm{c} \Rightarrow \mathrm{C}=0 \\
& \text { At } \mathrm{x}=\frac{\pi}{4}, \mathrm{t}=\tan \frac{\mathrm{x}}{2}=\sqrt{2}-1
\end{aligned}$$</p>
<p>$$\begin{aligned}
& \therefore y \cdot \sqrt{2}=\frac{2}{\sqrt{2}-1+\frac{3}{\sqrt{2}-1}} \\
& y \cdot \sqrt{2}=\frac{2(\sqrt{2}-1)}{6-2 \sqrt{2}} \\
& y=\frac{\sqrt{2}(\sqrt{2}-1)}{2(3-\sqrt{2})}=\frac{1}{\sqrt{2}} \times \frac{2 \sqrt{2}-1}{7} \\
& =\frac{4-\sqrt{2}}{14}
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'differential_equations'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'f21b76e6-7303-4ad2-bf4a-d162542bfa1d',
    'mathematics',
    '12',
    'Differentiation',
    'Successive Differentiation',
    'hard',
    'single_correct',
    '<p>If $$y(\theta)=\frac{2 \cos \theta+\cos 2 \theta}{\cos 3 \theta+4 \cos 2 \theta+5 \cos \theta+2}$$, then at $$\theta=\frac{\pi}{2}, y^{\prime \prime}+y^{\prime}+y$$ is equal to :</p>',
    '[{"id": "A", "text": "$$\\frac{1}{2}$$"}, {"id": "B", "text": "1"}, {"id": "C", "text": "$$\\frac{3}{2}$$"}, {"id": "D", "text": "2"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p>$$\begin{aligned}
& y(\theta)=\frac{2 \cos \theta+\cos 2 \theta}{\cos 3 \theta+4 \cos 2 \theta+5 \cos \theta+2} \\
& =\frac{2 \cos ^2 \theta+2 \cos \theta-1}{4 \cos ^3 \theta+8 \cos ^2 \theta+2 \cos \theta-2} \\
& =\frac{2 \cos ^2 \theta+2 \cos \theta-1}{\left(2 \cos ^2 \theta+2 \cos \theta-1\right)(2 \cos \theta+2)} \\
& =\frac{1}{2(1+\cos \theta)}=\frac{1}{4 \cos ^2 \theta / 2}=\frac{\sec ^2 \theta / 2}{4} \\
& y^{\prime}(\theta)=\frac{1}{4}\left(2 \sec \frac{\theta}{2} \cdot \sec \frac{\theta}{2} \cdot \tan \frac{\theta}{2} \cdot \frac{1}{2}\right) \\
& =\frac{1}{4} \sec ^2 \frac{\theta}{2} \cdot \tan \frac{\theta}{2}
\end{aligned}$$</p>
<p>$$y^{\prime \prime}(\theta)=\frac{1}{4}\left(\tan \frac{\theta}{2}\right)\left(\sec ^2 \frac{\theta}{2} \cdot \tan \frac{\theta}{2}\right) +\frac{1}{4} \sec ^2 \frac{\theta}{2} \cdot \sec ^2 \frac{\theta}{2} \cdot \frac{1}{2}$$</p>
<p>$$\begin{aligned}
& \text { at } \theta=\frac{\pi}{2}, y(\theta)=\frac{1}{2}, y^{\prime}(\theta)=\frac{1}{2}, y^{\prime \prime}(\theta)=1 \\
& \therefore \quad y+y^{\prime}+y^{\prime \prime}=2
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'differentiation'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1ebfdac7-5b2b-42b0-a46b-eb0c25488d59',
    'mathematics',
    '11',
    'Ellipse',
    'Question Based On Basic Definition And Parametric Representation',
    'medium',
    'single_correct',
    'Let $\frac{x^2}{a^2}+\frac{y^2}{b^2}=1, \mathrm{a}>\mathrm{b}$ be an ellipse, whose eccentricity is $\frac{1}{\sqrt{2}}$ and the length of the latusrectum is $\sqrt{14}$. Then the square of the eccentricity of $\frac{x^2}{a^2}-\frac{y^2}{b^2}=1$ is :',
    '[{"id": "A", "text": "3"}, {"id": "B", "text": "$${7 \\over 2}$$"}, {"id": "C", "text": "$${3 \\over 2}$$"}, {"id": "D", "text": "$${5 \\over 2}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>

<p>Given the ellipse $\frac{x^2}{a^2}+\frac{y^2}{b^2}=1$ with $a > b$, the eccentricity $ e $ is given by the formula:</p>

<p>$ e = \sqrt{1 - \left(\frac{b}{a}\right)^2} $</p>

<p>It is provided that the eccentricity $ e $ is $ \frac{1}{\sqrt{2}} $ (given), so we can equate the two expressions for eccentricity:</p>

<p>$ \frac{1}{\sqrt{2}} = \sqrt{1 - \left(\frac{b}{a}\right)^2} $</p>

<p>Squaring both sides to eliminate the square root gives:</p>

<p>$ \frac{1}{2} = 1 - \left(\frac{b}{a}\right)^2 $</p>

<p>$ \left(\frac{b}{a}\right)^2 = 1 - \frac{1}{2} $</p>

<p>$ \left(\frac{b}{a}\right)^2 = \frac{1}{2} $</p>

<p>Taking the square root on both sides:</p>

<p>$ \frac{b}{a} = \frac{1}{\sqrt{2}} $</p>

<p>$ a = b\sqrt{2} $</p>

<p>Now, for the ellipse, the length of the latus rectum is given by the formula:</p>

<p>$ \text{Length of Latus Rectum (L)} = \frac{2b^2}{a} $</p>

<p>It''s provided that the length of the latus rectum $ L $ is $ \sqrt{14} $, so substitute the known values to find $ b $:</p>

<p>$ \sqrt{14} = \frac{2b^2}{b\sqrt{2}} = \frac{2b}{\sqrt{2}} $</p>

<p>$ b\sqrt{2} = \sqrt{14} $</p>

<p>$ b^2 = \frac{14}{2} $</p>

<p>$ b^2 = 7 $</p>

<p>And since $ a = b\sqrt{2} $, we can find $ a^2 $:</p>

<p>$ a^2 = (b\sqrt{2})^2 $</p>

<p>$ a^2 = 7 \cdot 2 $</p>

<p>$ a^2 = 14 $</p>

<p>Now we have an ellipse with $ a^2 = 14 $ and $ b^2 = 7 $. The equation of a hyperbola similar to the given ellipse but with the terms subtracted is:</p>

<p>$ \frac{x^2}{a^2} - \frac{y^2}{b^2} = 1 $</p>

<p>For the hyperbola, the square of the eccentricity $ e'' $ is given by:</p>

<p>$ (e'')^2 = 1 + \frac{b^2}{a^2} $</p>

<p>Substitute the values we''ve found for $ a^2 $ and $ b^2 $ into the formula for the square of the hyperbola''s eccentricity:</p>

<p>$ (e'')^2 = 1 + \frac{b^2}{a^2} $</p>

<p>$ (e'')^2 = 1 + \frac{7}{14} $</p>

<p>$ (e'')^2 = 1 + \frac{1}{2} $</p>

<p>$ (e'')^2 = \frac{3}{2} $</p>

<p>Therefore, the square of the eccentricity of the hyperbola is $ \frac{3}{2} $, which corresponds to option C.</p>

</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'ellipse'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '358b57b6-8833-42da-983f-7898f0186239',
    'mathematics',
    '12',
    'Functions',
    'Classification Of Functions',
    'easy',
    'single_correct',
    'Let x denote the total number of one-one functions from a set A with 3 elements to a set B with 5 elements and y denote the total number of one-one functions form the set A to the set A $$\times$$ B. Then :',
    '[{"id": "A", "text": "2y = 273x"}, {"id": "B", "text": "y = 91x"}, {"id": "C", "text": "2y = 91x"}, {"id": "D", "text": "y = 273x"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Number of elements in A = 3<br><br>Number of elements in B = 5<br><br>Number of elements in A $$\times$$ B = 15<br><br><img src="https://imagex.cdn.examgoal.net/1kr002q13/6ac8f5dd-779d-48d0-b474-0d133af0fbd9/f7461570-e2b7-11eb-bdd2-7fe09049309d/file-1kr002q14.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Evening Shift Mathematics - Functions Question 104 English Explanation 1"><br><br>Number of one-one function<br><br>x = 5 $$\times$$ 4 $$\times$$ 3<br><br>x = 60<br><br><img src="https://imagex.cdn.examgoal.net/1kr003ghu/61a54cb8-5862-4c40-a4d2-e1a4d7f876f4/0bb78b10-e2b8-11eb-9d24-7bc7e73961bf/file-1kr003ghv.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Evening Shift Mathematics - Functions Question 104 English Explanation 2"><br><br>Number of one-one function<br><br>y = 15 $$\times$$ 14 $$\times$$ 13<br><br>y = 15 $$\times$$ 4 $$\times$$ $${{14} \over 4}$$ $$\times$$ 13<br><br>y = 60 $$\times$$ $${7 \over 2}$$ $$\times$$ 13<br><br>2y = (13)(7x)<br><br>2y = 91x',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'functions'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '48f9cf6e-8c6e-43af-b3c0-1f1dd9315ae2',
    'mathematics',
    '12',
    'Functions',
    'Domain',
    'medium',
    'single_correct',
    '<p>If the domain of the function $f(x)=\log _7\left(1-\log _4\left(x^2-9 x+18\right)\right)$ is $(\alpha, \beta) \cup(\gamma, o)$, then $\alpha+\beta+\gamma+\hat{o}$ is equal to</p>',
    '[{"id": "A", "text": "17"}, {"id": "B", "text": "15"}, {"id": "C", "text": "16"}, {"id": "D", "text": "18"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p>$$\begin{aligned}
&amp; 1-\log _4\left(x^2-9 x+18\right)&gt;0 \\
&amp; \log _4\left(x^2-9 x+18\right)&lt;1 \\
&amp; x^2-9 x+18&lt;4 \\
&amp; x^2-9 x+14&lt;0 \\
&amp; x \in(2,7) \\
&amp; x^2-9 x+18&gt;0 \\
&amp; x \in(-\infty, 3) \cup(6, \infty)
\end{aligned}$$</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9z86fxm/15bd262e-33e2-4e2e-9ebe-ec599dc4489a/c4ef48a0-232a-11f0-99e8-5f2c09d57200/file-jaoe38c1m9z86fxn.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/jaoe38c1m9z86fxm/15bd262e-33e2-4e2e-9ebe-ec599dc4489a/c4ef48a0-232a-11f0-99e8-5f2c09d57200/file-jaoe38c1m9z86fxn.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0 auto; max-height: 40vh; vertical-align: baseline" alt="JEE Main 2025 (Online) 3rd April Evening Shift Mathematics - Functions Question 1 English Explanation"></p>
<p>$$\begin{aligned}
&amp; x \in(2,3) \cup(6,7) \\
&amp; \alpha+\beta+\gamma+\delta=18
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'functions'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '69c9a67e-33ec-4a96-9600-0d4219f58041',
    'mathematics',
    '11',
    'Hyperbola',
    'Tangent To Hyperbola',
    'medium',
    'single_correct',
    'Consider a hyperbola H : x<sup>2</sup> $$-$$ 2y<sup>2</sup> = 4. Let the tangent at a <br>point P(4, $${\sqrt 6 }$$) meet the x-axis at Q and latus rectum at R(x<sub>1</sub>, y<sub>1</sub>), x<sub>1</sub> &gt; 0. If F is a focus of H which is nearer to the point P, then the area of $$\Delta$$QFR is equal to :',
    '[{"id": "A", "text": "$${\\sqrt 6 }$$ $$-$$ 1"}, {"id": "B", "text": "$${7 \\over {\\sqrt 6 }}$$ $$-$$ 2"}, {"id": "C", "text": "$${4\\sqrt 6 }$$ $$-$$ 1"}, {"id": "D", "text": "$${4\\sqrt 6 }$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l3b0ez3v/5fa06fb6-2e73-4b95-aa16-dacb000be7c4/83af90b0-d658-11ec-9a06-bd4ec5b93eb4/file-1l3b0ez3w.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l3b0ez3v/5fa06fb6-2e73-4b95-aa16-dacb000be7c4/83af90b0-d658-11ec-9a06-bd4ec5b93eb4/file-1l3b0ez3w.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2021 (Online) 18th March Evening Shift Mathematics - Hyperbola Question 50 English Explanation"></p>
<p>Given,</p>
<p>$${x^2} - 2{y^2} = 4$$</p>
<p>$$ \Rightarrow {{{x^2}} \over 4} - {{{y^2}} \over 2} = 1 \Rightarrow {{{x^2}} \over {{{(2)}^2}}} - {{{y^2}} \over {{{(\sqrt 2 )}^2}}} = 1$$</p>
<p>Here, a = 2, $$b = \sqrt 2 $$</p>
<p>$$\therefore$$ $$e = \sqrt {1 + {{{b^2}} \over {{a^2}}}}  = \sqrt {1 + {2 \over 4}}  = \sqrt {1 + {1 \over 2}}  = \sqrt {{3 \over 2}} $$</p>
<p>So, Focus (F) = ($$\pm$$ a e, 0) = ($$\pm$$ $$\sqrt 6 $$, 0)</p>
<p>Now, equation of tangent at $$P(4,\sqrt 6 )$$ is</p>
<p>$$x{x_1} - 2y{y_1} = 4$$</p>
<p>$$ \Rightarrow x\,.\,4 - 2y\,.\,\sqrt 6  = 4$$</p>
<p>$$ \Rightarrow 4x - 2\sqrt 6 y = 4$$</p>
<p>$$ \Rightarrow 2x - \sqrt 6 y = 2$$ ....... (i)</p>
<p>Putting y = 0 in Eq. (i), we get x-intercept of tangent i.e. x = 1</p>
<p>$$\therefore$$ Q $$\equiv$$ (1, 0)</p>
<p>Hence, equation of corresponding latus rectum is $$x = \sqrt 6 $$</p>
<p>$$\therefore$$ $$R \equiv \left( {\sqrt 6 ,{{2(\sqrt 6  - 1)} \over {\sqrt 6 }}} \right)$$ [putting $$x = \sqrt 6 $$ in Eq. (i), we get $$y = {{2(\sqrt 6  - 1)} \over {\sqrt 6 }}$$]</p>
<p>$$\therefore$$ Area of $$\Delta QFR = {1 \over 2} \times (QF) \times (RF)$$</p>
<p>$$ = {1 \over 2}(\sqrt 6  - 1) \times {{2(\sqrt 6  - 1)} \over {\sqrt 6 }} = {{{{(\sqrt 6  - 1)}^2}} \over {\sqrt 6 }} = \left( {{7 \over {\sqrt 6 }} - 2} \right)$$</p>',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'hyperbola'],
    true,
    now()
);
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
    'Let ƒ(x) = 15 – |x – 10|; x $$ \in $$ R. Then the set
of all values of x, at which the function,
g(x) = ƒ(ƒ(x)) is not differentiable, is :',
    '[{"id": "A", "text": "{10,15}"}, {"id": "B", "text": "{5,10,15,20}"}, {"id": "C", "text": "{10}"}, {"id": "D", "text": "{5,10,15}"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'ƒ(x) = 15 – |x – 10|
<br><br>g(x) = ƒ(ƒ(x)) = 15 – |ƒ(x) – 10|
<br><br>= 15 – |15 – |x – 10| – 10|
<br><br>= 15 – |5 – |x – 10||
<br><br>As this is a linear expression so it is non differentiable when value inside the modulus is zero.
<br><br>So non differentiable when
<br><br>x – 10 = 0 $$ \Rightarrow $$ x = 10
<br><br>and 5 – |x – 10| = 0
<br><br>$$ \Rightarrow $$ |x – 10| = 5
<br><br>$$ \Rightarrow $$ x - 10 = $$ \pm $$ 5
<br><br>$$ \Rightarrow $$ x = 5, 15
<br><br>$$ \therefore $$ g(x) is not differentiable at x = 5, 10, 15.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
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