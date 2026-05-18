-- JEE Test Series Massive Question Seed (150 Questions)
BEGIN TRANSACTION;
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '41fbf459-0922-4b2a-9bd2-c932d67ab5a4',
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
    '593e77ae-2f64-4c37-bca1-e821e5c0fac6',
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
    'f55079e5-7f10-46d8-860f-64113e956699',
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
    'dc0fa7e0-c91c-4d19-8a6f-a54231b9da0d',
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
    '77f58b13-6cb2-450f-9222-b169f08c5784',
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
    'f868d580-b1f9-4d74-842b-09233c47297a',
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
    'd0ccac49-404d-44a5-9be6-0d56c70abdc4',
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
    'c7787e49-42ee-4817-885a-f29ad566328c',
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
    '774a5b1b-ae5e-49e2-b03e-873e707be9f2',
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
    '881e1903-7b3e-46f7-8383-30eec2a82875',
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
    'a91ed89a-a16e-4a1b-9d3e-881722eaeb91',
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
    '4994a9a8-ffad-47d3-999a-0069e4ee8c3f',
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
    '771b61b8-c248-4236-bf59-752e224a2834',
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
    '61046965-0468-4255-be6b-7134b5b8eb44',
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
    'a283be44-f2ba-4148-9734-53249806613e',
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
    '0a1a3aaa-9592-44e0-b6e7-b29a7743bc33',
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
    'f3abe7ba-a610-4a27-bb99-f79008781b1b',
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
    '2038012b-f8fb-4c93-9e50-ee739fddd2c7',
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
    'd71b7a2f-0def-481c-b25d-ea98fb83bbd4',
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
    'd718dacf-7bf3-413f-a8bb-ab3397371c3f',
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
    '753bf3ae-090b-4865-aa00-ede54dcb278e',
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
    'ef3e98ce-71cc-4537-991a-e1409432cb25',
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
    '1f37d809-1513-4984-89e3-8ec8d443243a',
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
    '35cf6c9a-6126-43e9-903f-ab20f7ce7438',
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
    '20d48118-e09f-4506-b5a1-9f9d51d14443',
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
    'b2dd2109-83e3-49eb-8902-1180df25c7eb',
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
    'a3c01001-a138-4713-a9f9-f74a78fa7668',
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
    'a27bac4e-b268-4bca-85d3-7a22bbebb469',
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
    'c9d88fe4-e65c-40c5-b8bd-85c435359e90',
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
    '0eaea088-b608-4cd8-a1af-2dbb7d4148a2',
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
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '29e22e45-af88-4249-9061-d86529ba74eb',
    'mathematics',
    '12',
    'Mathematical Reasoning',
    'Logical Connectives',
    'easy',
    'single_correct',
    'If the truth value of the Boolean expression $$\left( {\left( {p \vee q} \right) \wedge \left( {q \to r} \right) \wedge \left( { \sim r} \right)} \right) \to \left( {p \wedge q} \right)$$ is false, then the truth values of the statements p, q, r respectively can be :',
    '[{"id": "A", "text": "T F T"}, {"id": "B", "text": "F  F T"}, {"id": "C", "text": "T F F"}, {"id": "D", "text": "F T F"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<table class="tg">
<thead>
  <tr>
    <th class="tg-baqh">p</th>
    <th class="tg-baqh">q</th>
    <th class="tg-baqh">r</th>
    <th class="tg-baqh">$$\underbrace {p \vee q}_a$$</th>
    <th class="tg-baqh">$$\underbrace {q \to r}_b$$</th>
    <th class="tg-baqh">$${a \wedge b}$$</th>
    <th class="tg-baqh">$${ \sim r}$$</th>
    <th class="tg-baqh">$$\underbrace {a \wedge b \wedge ( \sim r)}_c$$</th>
    <th class="tg-baqh">$$\underbrace {p \wedge q}_d$$</th>
    <th class="tg-baqh">$$c \to d$$</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
  </tr>
  <tr>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
  </tr>
  <tr>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
  </tr>
  <tr>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">F</td>
    <td class="tg-baqh">T</td>
  </tr>
</tbody>
</table>',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'mathematical_reasoning'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1ace9064-f667-47a8-8e54-4320a96b1385',
    'mathematics',
    '12',
    'Matrices and Determinants',
    'Symmetric And Skew Symmetric Matrices',
    'medium',
    'single_correct',
    'Let  $$A$$ and $$B$$ be two symmetric matrices of order $$3$$. 
<br><br/><b>Statement - 1 :</b> $$A(BA)$$ and $$(AB)$$$$A$$ are symmetric matrices. 
<br><br/><b>Statement - 2 :</b> $$AB$$ is symmetric matrix if matrix multiplication of $$A$$ with $$B$$ is commutative.',
    '[{"id": "A", "text": "statement - 1 is true, statement - 2 is true; statement - 2 is <b>not</b> a correct explanation for statement - 1."}, {"id": "B", "text": "statement - 1 is true, statement - 2 is false."}, {"id": "C", "text": "statement - 1 is false, statement -2 is true"}, {"id": "D", "text": "statement -1 is true, statement - 2 is true; statement - 2 is a correct explanation for statement - 1."}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '$$\therefore$$ $$A'' = A,B'' = B$$ 
<br><br>Now $$\,\,\,\left( {A\left( {BA} \right)} \right)'' = \left( {BA} \right)''A''$$ 
<br><br>$$ = \left( {A''B''} \right)A'' = \left( {AB} \right)A = A\left( {BA} \right)$$ 
<br><br>Similarly $$\left( {\left( {AB} \right)A} \right)'' = \left( {AB} \right)A$$
<br><br>So, $$A\left( {BA} \right)\,\,\,\,$$ and $$A\left( {BA} \right)\,\,\,\,$$ are symmetric matrices.
<br><br>Again $$\left( {AB} \right)'' = B''A'' = BA$$
<br><br>Now if $$BA=AB$$, then $$AB$$ is symmetric matrix.',
    4,
    -1,
    true,
    2011,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', 'matrices_and_determinants'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '41ceb233-4412-4323-898c-a948b1c084b6',
    'mathematics',
    '12',
    'Matrices and Determinants',
    'Solutions Of System Of Linear Equations In Two Or Three Variables Using Determinants And Matrices',
    'medium',
    'single_correct',
    'If the system of linear equations<br>
2x + 2ay + az = 0<br>
2x + 3by + bz = 0<br>
2x + 4cy + cz = 0,<br>
where a, b, c $$ \in $$ R are non-zero distinct; has a non-zero solution, then:',
    '[{"id": "A", "text": "$${1 \\over a},{1 \\over b},{1 \\over c}$$ are in A.P."}, {"id": "B", "text": "a + b + c = 0"}, {"id": "C", "text": "a, b, c are in G.P."}, {"id": "D", "text": "a,b,c are in A.P."}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'For non-zero solution
<br><br>$$\left| {\matrix{
   2 &amp; {2a} &amp; a  \cr 
   2 &amp; {3b} &amp; b  \cr 
   2 &amp; {4c} &amp; c  \cr 

 } } \right| = 0$$
<br><br>$$ \Rightarrow $$ $$\left| {\matrix{
   1 &amp; {2a} &amp; a  \cr 
   0 &amp; {3b - 2a} &amp; {b - a}  \cr 
   0 &amp; {4c - 2a} &amp; {c - a}  \cr 

 } } \right| = 0$$
<br><br>$$ \Rightarrow $$  (3b – 2a) (c –a) – (b – a) (4c – 2a) = 0
<br><br>$$ \Rightarrow $$ 2ac = bc + ab
<br><br>$$ \Rightarrow $$ $${2 \over b} = {1 \over a} + {1 \over c}$$
<br><br>$$ \therefore $$ $${1 \over a},{1 \over b},{1 \over c}$$ are in A.P.',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'matrices_and_determinants'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '6cf22c3d-9690-4ea4-b14c-531d11eb6ae0',
    'mathematics',
    '12',
    'Matrices and Determinants',
    'Properties Of Determinants',
    'medium',
    'single_correct',
    '<p>Let the matrix $$A=\left[\begin{array}{lll}0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0\end{array}\right]$$ and the matrix $$B_{0}=A^{49}+2 A^{98}$$. If $$B_{n}=A d j\left(B_{n-1}\right)$$ for all $$n \geq 1$$, then $$\operatorname{det}\left(B_{4}\right)$$ is equal to :</p>',
    '[{"id": "A", "text": "$$3^{28}$$"}, {"id": "B", "text": "$$3^{30}$$"}, {"id": "C", "text": "$$3^{32}$$"}, {"id": "D", "text": "$$3^{36}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>$$A = \left[ {\matrix{
   0 & 1 & 0  \cr 
   0 & 0 & 1  \cr 
   1 & 0 & 0  \cr 

 } } \right]$$</p>
<p>$$ \Rightarrow {A^2} = \left[ {\matrix{
   0 & 1 & 0  \cr 
   0 & 0 & 1  \cr 
   1 & 0 & 0  \cr 

 } } \right] \times \left[ {\matrix{
   0 & 1 & 0  \cr 
   0 & 0 & 1  \cr 
   1 & 0 & 0  \cr 

 } } \right] = \left[ {\matrix{
   0 & 0 & 1  \cr 
   1 & 0 & 0  \cr 
   0 & 1 & 0  \cr 

 } } \right]$$</p>
<p>$$ \Rightarrow {A^3} = \left[ {\matrix{
   0 & 0 & 1  \cr 
   1 & 0 & 0  \cr 
   0 & 1 & 0  \cr 

 } } \right]\left[ {\matrix{
   0 & 1 & 0  \cr 
   0 & 0 & 1  \cr 
   1 & 0 & 0  \cr 

 } } \right] = \left[ {\matrix{
   1 & 0 & 0  \cr 
   0 & 1 & 0  \cr 
   0 & 0 & 1  \cr 

 } } \right] = l$$</p>
<p>Now $${B_0} = {A^{49}} + 2{A^{98}} = {({A^3})^{16}}\,.\,A + 2{({A^3})^{32}}\,.\,{A^2}$$</p>
<p>$${B_0} = A + 2{A^2} = \left[ {\matrix{
   0 & 1 & 0  \cr 
   0 & 0 & 1  \cr 
   1 & 0 & 0  \cr 

 } } \right] + \left[ {\matrix{
   0 & 0 & 2  \cr 
   2 & 0 & 0  \cr 
   0 & 2 & 0  \cr 

 } } \right] = \left[ {\matrix{
   0 & 1 & 2  \cr 
   2 & 0 & 1  \cr 
   1 & 2 & 0  \cr 

 } } \right]$$</p>
<p>$$|{B_0}| = 9$$</p>
<p>Since, $${B_n} = Adj\,|{B_{n - 1}}| \Rightarrow |{B_n}| = |{B_{n - 1}}{|^2}$$</p>
<p>Hence $$|{B_4}| = |{B_3}{|^2} = |{B_2}{|^4} = |{B_1}{|^8} = |{B_0}{|^{16}}$$</p>
<p>$$ = |{3^2}{|^{16}} = {3^{32}}$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'matrices_and_determinants'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b512baad-e65f-4eb6-b376-bc61767ad395',
    'mathematics',
    '12',
    'Matrices and Determinants',
    'Expansion Of Determinant',
    'medium',
    'single_correct',
    '<p>Let $A = [a_{ij}]$ be a $2 \times 2$ matrix such that $a_{ij} \in \{0, 1\}$ for all $i$ and $j$. Let the random variable $X$ denote the possible values of the determinant of the matrix $A$. Then, the variance of $X$ is:</p>',
    '[{"id": "A", "text": "<p>$\\frac{5}{8}$</p>"}, {"id": "B", "text": "<p>$\\frac{1}{4}$</p>"}, {"id": "C", "text": "<p>$\\frac{3}{4}$</p>"}, {"id": "D", "text": "<p>$\\frac{3}{8}$</p>"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p>$$\begin{aligned}
& |A|=\left|\begin{array}{ll}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{array}\right| \\
& =a_{11} a_{22}-a_{21} a_{12} \\
& =\{-1,0,1\}
\end{aligned}$$</p>
<p>$$\begin{array}{c|c|c|c}
\mathrm{x} & \mathrm{P}_{\mathrm{i}} & \mathrm{P}_{\mathrm{i}} \mathrm{X}_{\mathrm{i}} & \mathrm{P}_1 \mathrm{X}_{\mathrm{i}}{ }^2 \\
-1 & \frac{3}{16} & -\frac{3}{16} & \frac{3}{16} \\
0 & \frac{10}{16} & 0 & 0 \\
1 & \frac{3}{16} & \frac{3}{16} & \frac{3}{16} \\
\hline & & \sum \mathrm{P}_{\mathrm{i}} \mathrm{X}_{\mathrm{i}}=0 & \sum \mathrm{P}_{\mathrm{i}} \mathrm{X}_{\mathrm{i}}{ }^2=\frac{3}{8}
\end{array}$$</p>
<p>$$\begin{aligned}
& \therefore \operatorname{var}(\mathrm{x})=\sum \mathrm{P}_{\mathrm{i}} \mathrm{X}_{\mathrm{i}}^2-\left(\sum \mathrm{P}_{\mathrm{i}} X_{\mathrm{i}}\right)^2 \\
& =\frac{3}{8}-0=\frac{3}{8}
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'matrices_and_determinants'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4be8dd3e-cc0d-4823-90e7-85cee946dae6',
    'mathematics',
    '11',
    'Parabola',
    'Tangent To Parabola',
    'medium',
    'single_correct',
    'A tangent is drawn to the parabola y<sup>2</sup> = 6x which is perpendicular to the line 2x + y = 1. Which of the following points does NOT lie on it?',
    '[{"id": "A", "text": "(0, 3)"}, {"id": "B", "text": "($$-$$6, 0)"}, {"id": "C", "text": "(4, 5)"}, {"id": "D", "text": "(5, 4)"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Equation of tangent : $$y = mx + {3 \over {2m}}$$<br><br>$${m_T} = {1 \over 2}$$ ($$\because$$ perpendicular to line $$2x + y = 1$$)<br><br>$$\therefore$$ tangent is : $$y = {x \over 2} + 3$$<br><br>$$ \Rightarrow x - 2y + 6 = 0$$',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'parabola'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1d41fe72-53f2-47d3-9a8d-cd52d54e2b84',
    'mathematics',
    '12',
    'Permutations and Combinations',
    'Number Of Combinations',
    'medium',
    'single_correct',
    '<br> <b> Statement - 1: </b> The number of ways of distributing 10 identical balls in 4 distinct boxes such that no box is emply is $${}^9{C_3}$$.
<br> <b>  Statement - 2: </b> The number of ways of choosing any 3 places from 9 different places is $${}^9{C_3}$$.',
    '[{"id": "A", "text": "Statement - 1 is true,  Statement - 2 is true,  Statement - 2 is not a correct explanation for  Statement - 1."}, {"id": "B", "text": "Statement - 1 is true,  Statement - 2 is false."}, {"id": "C", "text": "Statement - 1 is false, Statement - 2 is true."}, {"id": "D", "text": "Statement - 1 is true, Statement - 2 is true, Statement - 2 is a correct explanation for Statement - 1."}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>Let XA<sub></sub>, X<sub>B</sub>, X<sub>C</sub> and X<sub>D</sub> represent number of balls present in box A, B, C and D respectively.</p>
<p>As no box can be empty so,</p>
<p>X<sub>A</sub> $$\ge$$ 1, X<sub>B</sub> $$\ge$$ 1, X<sub>C</sub> $$\ge$$ 1 and X<sub>D</sub> $$\ge$$ 1</p>
<p>$$\Rightarrow$$ X<sub>A</sub> $$-$$ 1 $$\ge$$ 0, $$\Rightarrow$$ X<sub>B</sub> $$-$$ 1 $$\ge$$ 0, $$\Rightarrow$$ X<sub>C</sub> $$-$$ 1 $$\ge$$ 0 and $$\Rightarrow$$ X<sub>D</sub> $$-$$ 1 $$\ge$$ 0</p>
<p>t<sub>A</sub> $$\ge$$ 0, t<sub>B</sub> $$\ge$$ 0, t<sub>C</sub> $$\ge$$ 0 and t<sub>D</sub> $$\ge$$ 0</p>
<p>According to the question,</p>
<p>X<sub>A</sub> + X<sub>B</sub> + X<sub>C</sub> + X<sub>D</sub> = 10</p>
<p>$$\Rightarrow$$ (X<sub>A</sub> $$-$$ 1) + (X<sub>B</sub> $$-$$ 1) + (X<sub>C</sub> $$-$$ 1) + (X<sub>D</sub> $$-$$ 1) = 6</p>
<p>$$\Rightarrow$$ t<sub>A</sub> + t<sub>B</sub> + t<sub>C</sub> + t<sub>D</sub> = 6</p>
<p>Now question becomes, box A, B, C, and D can have none or one or more balls and total balls are 6</p>
<p>From formula we know, n things can be distributed among r people in $${}^{n + r - 1}{C_{r - 1}}$$ ways where each people can have either 0 or more things.</p>
<p>$$\therefore$$ 6 balls can be distributed among 4 boxes in $${}^{6 + 4 - 1}{C_{4 - 1}} = {}^9{C_3}$$ ways where each box can have either 0 or more balls.</p>
<p>Therefore, Statement 1 is correct. The number of ways of choosing any 3 places from 9 different places is $${}^9{C_3}$$ ways. But Statement - 2 is not the correct explanation of Statement - 1.</p>',
    4,
    -1,
    true,
    2011,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', 'permutations_and_combinations'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '94160dc1-8e1e-4515-bf18-be7ac2a50bf4',
    'mathematics',
    '12',
    'Permutations and Combinations',
    'Number Of Combinations',
    'medium',
    'single_correct',
    '<p>There are 5 points $$P_1, P_2, P_3, P_4, P_5$$ on the side $$A B$$, excluding $$A$$ and $$B$$, of a triangle $$A B C$$. Similarly there are 6 points $$\mathrm{P}_6, \mathrm{P}_7, \ldots, \mathrm{P}_{11}$$ on the side $$\mathrm{BC}$$ and 7 points $$\mathrm{P}_{12}, \mathrm{P}_{13}, \ldots, \mathrm{P}_{18}$$ on the side $$\mathrm{CA}$$ of the triangle. The number of triangles, that can be formed using the points $$\mathrm{P}_1, \mathrm{P}_2, \ldots, \mathrm{P}_{18}$$ as vertices, is:</p>',
    '[{"id": "A", "text": "751"}, {"id": "B", "text": "776"}, {"id": "C", "text": "796"}, {"id": "D", "text": "771"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>Number of points on side $$A B=5$$</p>
<p>Number of points on side $$B C=6$$</p>
<p>Number of points on side $$A C=7$$</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lwk6ko9r/1d69134a-fee4-473a-84cb-efe47fa9ec3c/ecc716f0-1985-11ef-a7bd-376696e028ce/file-1lwk6ko9s.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lwk6ko9r/1d69134a-fee4-473a-84cb-efe47fa9ec3c/ecc716f0-1985-11ef-a7bd-376696e028ce/file-1lwk6ko9s.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline" alt="JEE Main 2024 (Online) 4th April Morning Shift Mathematics - Permutations and Combinations Question 32 English Explanation"></p>
<p>Number of ways selecting three points from side</p>
<p>$$A B={ }^5 C_3$$</p>
<p>Number of ways selecting three points from side</p>
<p>$$B C={ }^6 C_3$$</p>
<p>Number of ways selecting three points from side</p>
<p>$$A C={ }^7 C_3$$</p>
<p>Total number of triangle possible formed using the points $$P_1 P_2 \ldots P_{18}$$</p>
<p>$$\begin{aligned}
&amp; ={ }^{18} C_3-{ }^5 C_3-{ }^6 C_3-{ }^7 C_3 \\\\
&amp; =816-10-20-35 \\\\
&amp; =751
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'permutations_and_combinations'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5f584412-77d5-4523-a753-5d31b87732f1',
    'mathematics',
    '12',
    'Probability',
    'Conditional Probability And Multiplication Theorem',
    'medium',
    'single_correct',
    'An unbiased coin is tossed. If the outcome is a head then a pair of unbiased dice is rolled and the sum of the numbers obtained on them is noted. If the toss of the coin results in tail then a card from a well-shuffled pack of nine cards numbered 1, 2, 3, ……, 9 is randomly picked and the number on the card is noted. The probability that the noted number is either 7 or 8 is :',
    '[{"id": "A", "text": "$${{19} \\over {36}}$$"}, {"id": "B", "text": "$${{15} \\over {72}}$$"}, {"id": "C", "text": "$${{13} \\over {36}}$$"}, {"id": "D", "text": "$${{19} \\over {72}}$$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/bI7E4RshlKcIu2wdV/xIqwrYt1hS4IELTl3VCkgmR4vmaYU/DfHML9XD7Sf69KWebbyL46/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 10th January Morning Slot Mathematics - Probability Question 174 English Explanation">
<br>$$P\left( A \right) = {1 \over 2} \times {{11} \over {36}} + {1 \over 2} \times {2 \over 9} = {{19} \over {72}}$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'probability'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2b9422c4-2f76-480d-ae25-cbf352359c50',
    'mathematics',
    '12',
    'Probability',
    'Venn Diagram And Set Theory',
    'medium',
    'single_correct',
    '<p>Let $$S=\{1,2,3, \ldots, 2022\}$$. Then the probability, that a randomly chosen number n from the set S such that $$\mathrm{HCF}\,(\mathrm{n}, 2022)=1$$, is :</p>',
    '[{"id": "A", "text": "$$\\frac{128}{1011}$$"}, {"id": "B", "text": "$$\\frac{166}{1011}$$"}, {"id": "C", "text": "$$\\frac{127}{337}$$"}, {"id": "D", "text": "$$\\frac{112}{337}$$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p>S = {1, 2, 3, .......... 2022}</p>
<p>HCF (n, 2022) = 1</p>
<p>$$\Rightarrow$$ n and 2022 have no common factor</p>
<p>Total elements = 2022</p>
<p>2022 = 2 $$\times$$ 3 $$\times$$ 337</p>
<p>M : numbers divisible by 2.</p>
<p>{2, 4, 6, ........, 2022}$$\,\,\,\,$$ n(M) = 1011</p>
<p>N : numbers divisible by 3.</p>
<p>{3, 6, 9, ........, 2022}$$\,\,\,\,$$ n(N) = 674</p>
<p>L : numbers divisible by 6.</p>
<p>{6, 12, 18, ........, 2022}$$\,\,\,\,$$ n(L) = 337</p>
<p>n(M $$\cup$$ N) = n(M) + n(N) $$-$$ n(L)</p>
<p>= 1011 + 674 $$-$$ 337</p>
<p>= 1348</p>
<p>0 = Number divisible by 337 but not in M $$\cup$$ N</p>
<p>{337, 1685}</p>
<p>Number divisible by 2, 3 or 337</p>
<p>= 1348 + 2 = 1350</p>
<p>Required probability $$ = {{2022 - 1350} \over {2022}}$$</p>
<p>$$ = {{672} \over {2022}}$$</p>
<p>$$ = {{112} \over {337}}$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'probability'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1fa22865-cc89-4ca2-a9b0-aef85fe83c39',
    'mathematics',
    '12',
    'Properties of Triangle',
    'Cosine Rule',
    'medium',
    'single_correct',
    'Given $${{b + c} \over {11}} = {{c + a} \over {12}} = {{a + b} \over {13}}$$ for a $$\Delta $$ABC with usual notation. 
<br><br>If &nbsp;&nbsp;$${{\cos A} \over \alpha } = {{\cos B} \over \beta } = {{\cos C} \over \gamma },$$ then the ordered triad ($$\alpha $$, $$\beta $$, $$\gamma $$) has a value :',
    '[{"id": "A", "text": "(19, 7, 25)"}, {"id": "B", "text": "(7, 19, 25)"}, {"id": "C", "text": "(5, 12, 13)"}, {"id": "D", "text": "(3, 4, 5)"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'b + c = 11$$\lambda $$, c + a = 12$$\lambda $$,  a + b = 13$$\lambda $$
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;a = 7$$\lambda $$, b = 6$$\lambda $$, c = 5$$\lambda $$
<br><br>(using cosine formula)
<br><br>cosA = $${1 \over 5},$$ cosB = $${19 \over 35},$$  cosC = $${5 \over 7},$$ 
<br><br>$$\alpha $$ : $$\beta $$ : $$\gamma $$ $$ \Rightarrow $$&nbsp;&nbsp;7 : 19 : 25',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'properties_of_triangle'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b96d8dd9-0adc-4075-86fd-66c1c055a5ad',
    'mathematics',
    '12',
    'Quadratic Equation and Inequalities',
    'Modulus Function',
    'medium',
    'single_correct',
    'The sum of the solutions of the equation <br>
$$\left| {\sqrt x  - 2} \right| + \sqrt x \left( {\sqrt x  - 4} \right) + 2 = 0$$<br>
(x &gt; 0) is equal to:',
    '[{"id": "A", "text": "9"}, {"id": "B", "text": "12"}, {"id": "C", "text": "4"}, {"id": "D", "text": "10"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<b>Case 1 :</b> When $$\sqrt x  \ge 2$$
<br><br>then $$\left| {\sqrt x  - 2} \right| = \sqrt x  - 2$$
<br><br>$$ \therefore $$ The given equation becomes,
<br><br>$$\left( {\sqrt x  - 2} \right)$$ + $$\sqrt x \left( {\sqrt x  - 4} \right) + 2$$ = 0
<br><br>$$ \Rightarrow $$ $$\left( {\sqrt x  - 2} \right)$$ + $$x - 4\sqrt x $$ + 2 = 0
<br><br>$$ \Rightarrow $$ $$x - 3\sqrt x $$ = 0
<br><br>$$ \Rightarrow $$ $$\sqrt x \left( {\sqrt x  - 3} \right)$$ = 0
<br><br>$$ \therefore $$ $$\sqrt x $$ = 0 or 3
<br><br>$$\sqrt x $$ = 0 is not possible as $$\sqrt x  \ge 2$$.
<br><br>So, $$\sqrt x $$ = 3
<br><br>or $$x$$ = 9
<br><br><b>Case 2 :</b> When $$\sqrt x  &lt; 2$$
<br><br>then $$\left| {\sqrt x  - 2} \right| = $$$$ - \left( {\sqrt x  - 2} \right)$$ = $$2 - \sqrt x $$
<br><br>$$ \therefore $$ The given equation becomes,
<br><br>$$\left( {2 - \sqrt x } \right)$$ + $$\sqrt x \left( {\sqrt x  - 4} \right) + 2$$ = 0
<br><br>$$ \Rightarrow $$ $${2 - \sqrt x }$$ + $$x - 4\sqrt x $$ + 2 = 0
<br><br>$$ \Rightarrow $$ $$x - 5\sqrt x  + 4$$ = 0
<br><br>$$ \Rightarrow $$ $$x - 4\sqrt x - \sqrt x  + 4$$ = 0
<br><br>$$ \Rightarrow $$ $$\sqrt x \left( {\sqrt x  - 4} \right)$$$$-\left( {\sqrt x  - 4} \right)$$ = 0
<br><br>$$ \Rightarrow $$ $$\left( {\sqrt x  - 4} \right)$$$$\left( {\sqrt x  - 1} \right)$$ = 0
<br><br>$$ \therefore $$ $$\sqrt x $$ = 4 or 1
<br><br>$$\sqrt x $$ = 4 is not possible as $$\sqrt x  &lt; 2$$.
<br><br>$$ \therefore $$ $$\sqrt x $$ = 1
<br><br>or $$x$$ = 1
<br><br>So, Sum of all solutions = 9 + 1 = 10',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'quadratic_equation_and_inequalities'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2b15ddf5-d2db-40ce-a144-397f769e7cf6',
    'mathematics',
    '12',
    'Quadratic Equation and Inequalities',
    'Nature Of Roots',
    'medium',
    'single_correct',
    'If the set of all $a \in \mathbf{R}$, for which the equation $2 x^2+(a-5) x+15=3 a$ has no real root, is the interval ( $\alpha, \beta$ ), and $X=|x \in Z ; \alpha < x < \beta|$, then $\sum\limits_{x \in X} x^2$ is equal to:',
    '[{"id": "A", "text": "<p>2139</p>"}, {"id": "B", "text": "<p>2119</p>"}, {"id": "C", "text": "<p>2109</p>"}, {"id": "D", "text": "<p>2129</p>"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>$$\begin{aligned}
& (a-5)^2-8(15-3 a)<0 \\
& a^2+14 a+25-120<0 \\
& a^2+14 a-95<0 \\
& (a+19)(a-5)<0 \\
& a \in(-19,5) \\
& \therefore-19< x<5 \\
& \therefore \sum_{x \in X} x^2=\left(1^2+2^2+\ldots .+4^2\right)+\left(1^2+2^2+\ldots+18^2\right) \\
& =\frac{4 \times 5 \times 9}{6}+\frac{18 \times 19 \times 37}{6} \\
& =30+2109 \\
& =2139
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'quadratic_equation_and_inequalities'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c30dadb9-ba5b-49bc-9b86-83dd26da008b',
    'mathematics',
    '12',
    'Sequences and Series',
    'Arithmetic Progression',
    'medium',
    'single_correct',
    'If &nbsp;&nbsp;<sup>n</sup>C<sub>4</sub>, <sup>n</sup>C<sub>5</sub> and <sup>n</sup>C<sub>6</sub> are in A.P., then n can be :',
    '[{"id": "A", "text": "11"}, {"id": "B", "text": "12"}, {"id": "C", "text": "9"}, {"id": "D", "text": "14"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '2.<sup>n</sup>C<sub>5</sub> = <sup>n</sup>C<sub>4</sub> + <sup>n</sup><sup></sup>C<sub>6</sub> 
<br><br>2.$${n \over {\left| 5 \right|n - 5}} = {n \over {\left| 4 \right|n - 4}} + {n \over {\left| 6 \right|n - 6}}$$
<br><br>$${2 \over 5}.{1 \over {n - 5}} = {1 \over {\left( {n - 4} \right)\left( {n - 5} \right)}} + {1 \over {30}}$$
<br><br>$$n = 14$$ satisfying equation.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'sequences_and_series'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3a39a1b6-aaf8-4728-bc4c-15b280d88e67',
    'mathematics',
    '12',
    'Sequences and Series',
    'Summation Of Series',
    'medium',
    'single_correct',
    '<p>$$
\begin{aligned}
&\text { Let }\left\{a_{n}\right\}_{n=0}^{\infty} \text { be a sequence such that } a_{0}=a_{1}=0 \text { and } \\\\
&a_{n+2}=3 a_{n+1}-2 a_{n}+1, \forall n \geq 0 .
\end{aligned}
$$</p>
<p>Then $$a_{25} a_{23}-2 a_{25} a_{22}-2 a_{23} a_{24}+4 a_{22} a_{24}$$ is equal to</p>',
    '[{"id": "A", "text": "483"}, {"id": "B", "text": "528"}, {"id": "C", "text": "575"}, {"id": "D", "text": "624"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>Given,</p>
<p>$${a_0} = {a_1} = 0$$</p>
<p>and $${a_{n + 2}} = 3{a_{n + 1}} - 2{a_n} + 1$$</p>
<p>For $$n = 0,\,{a_2} = 3{a_1} - 2{a_0} + 1$$</p>
<p>$$ = 3\,.\,0 - 2\,.\,0 + 1$$</p>
<p>$$ = 1$$</p>
<p>For $$n = 1,\,{a_3} = 3{a_2} - 2{a_1} + 1$$</p>
<p>$$ = 3\,.\,1 - 2\,.\,0 + 1$$</p>
<p>$$ = 4$$</p>
<p>For $$n = 2,\,{a_4} = 3{a_3} - 2{a_2} + 1$$</p>
<p>$$ = 3\,.\,4 - 2\,.\,1 + 1$$</p>
<p>$$ = 11$$</p>
<p>For $$n = 3,\,{a_5} = 3{a_4} - 2{a_3} + 1$$</p>
<p>$$ = 3\,.\,11 - 2\,.\,4 + 1$$</p>
<p>$$ = 26$$</p>
<p>For $$n = 4,\,{a_6} = 3{a_5} - 2{a_4} + 1$$</p>
<p>$$ = 3\,.\,26 - 2\,.\,11 + 1$$</p>
<p>$$ = 57$$</p>
<p>$$\therefore$$ $${S_n} = 1 + 4 + 11 + 26 + 57\, + \,....\, + \,{t_n}$$</p>
<p>$${S_n} = 1 + 4 + 11 + 26\, + \,....\, + \,{t_{n - 1}} + {t_n}$$</p>
<p>$$0 = 1 + 3 + 7 + 15 + 31\, + \,.....\, - {t_n}$$</p>
<p>$$ \Rightarrow {t_n} = 1 + 3 + 7 + 15 + 31\, + \,....$$</p>
<p>Now, find the sum of the series,</p>
<p>$${t_n} = 1 + 3 + 7 + 15 + 31\, + \,.....\, + \,{x_{n - 1}} + {x_n}$$ .....(1)</p>
<p>$${t_n} = $$&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$$1 + 3 + 7 + 15\, + \,.....\, + \,{x_{n - 1}} + {x_n}$$ ......(2)</p>
<p>Subtracting (2) from (1), we get</p>

<p>-------------------------------------------------------------------------</p>
<p>$$0 = 1 + 2 + 4 + 8 + 16\, + \,....\, + \,{x_n}$$</p>
<p>$$ \Rightarrow {x_n} = 1 + 2 + 4 + 8 + 16\, + \,.....\, + \,$$ n terms</p>
<p>$$ = {{1({2^n} - 1)} \over {2 - 1}}$$</p>
<p>$$ = {2^n} - 1$$</p>
<p>$$\therefore$$ $${t_n} = \sum\limits_{n = 1}^n {{x_n}} $$</p>
<p>$$ = \sum\limits_{n = 1}^n {({2^n} - 1)} $$</p>
<p>$$ = \sum\limits_{n = 1}^n {{2^n} - \sum\limits_{n = 1}^n 1 } $$</p>
<p>$$ = {{2({2^n} - 1)} \over {2 - 1}} - n$$</p>
<p>$$ = {2^{n + 1}} - 2 - n$$</p>
<p>$${t_1} = {2^2} - 2 - 1 = 1 = {a_2}$$</p>
<p>$${t_2} = {2^3} - 2 - 2 = 4 = {a_3}$$</p>
<p>$${t_3} = {2^4} - 2 - 3 = 11 = {a_4}$$</p>
<p>$$\therefore$$ $${a_{22}} = {t_{21}} = {2^{22}} - 2 - 21 = {2^{22}} - 23$$</p>
<p>$${a_{23}} = {t_{22}} = {2^{23}} - 2 - 22 = {2^{23}} - 24$$</p>
<p>$${a_{24}} = {t_{23}} = {2^{24}} - 2 - 23 = {2^{24}} - 25$$</p>
<p>$${a_{25}} = {t_{24}} = {2^{25}} - 2 - 24 = {2^{25}} - 26$$</p>
<p>Now,</p>
<p>$${a_{25}}{a_{23}} - 2{a_{25}}{a_{22}} - 2{a_{23}}{a_{24}} + 4{a_{22}}  {a_{24}}$$</p>
<p>$$ = {a_{25}}({a_{23}} - 2{a_{22}}) - 2{a_{24}}({a_{23}} - 2{a_{22}})$$</p>
<p>$$ = ({a_{23}} - 2{a_{22}})({a_{25}} - 2{a_{24}})$$</p>
<p>$$ = [({2^{23}} - 24) - 2({2^{22}} - 23)][({2^{25}} - 26) - 2({2^{24}} - 25)]$$</p>
<p>$$ = [({2^{23}} - 24 - {2^{23}} + 46)][({2^{25}} - 26 - {2^{25}} + 50)]$$</p>
<p>$$ = (22)(24)$$</p>
<p>$$ = 528$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'sequences_and_series'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b0e925f3-bf49-4daf-a501-8e7475d4eaee',
    'mathematics',
    '12',
    'Sets and Relations',
    'Number Of Sets And Relations',
    'medium',
    'single_correct',
    'Let A and B be two sets containing four and
two elements respectively. Then, the number
of subsets of the set A $\times$ B , each having atleast
three elements are',
    '[{"id": "A", "text": "219"}, {"id": "B", "text": "256"}, {"id": "C", "text": "275"}, {"id": "D", "text": "510"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Given,<br/><br/>
$$
\begin{aligned}
&n(A)=4, n(B) =2 \\\\
&\Rightarrow n(A \times B) =8
\end{aligned}
$$<br/><br/>
Total number of subsets of set $(A \times B)=2^8$<br/><br/>
Number of subsets of set $A \times B$ having no element (i.e. $\phi)=1$<br/><br/>
Number of subsets of set $A \times B$ having one element $={ }^8 C_1$<br/><br/>
Number of subsets of set $A \times B$ having two elements $={ }^8 C_2$<br/><br/>
$\therefore$ Number of subsets having atleast three elements<br/><br/>
$$
\begin{aligned}
&=2^8-\left(1+{ }^8 C_1+{ }^8 C_2\right) \\\\
&=2^8-1-8-28 \\\\
&=2^8-37 \\\\
&=256-37=219
\end{aligned}
$$',
    4,
    -1,
    true,
    2015,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', 'sets_and_relations'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'cf505a71-5960-4d3d-9cf0-31a0a51f916f',
    'mathematics',
    '12',
    'Statistics',
    'Calculation Of Mean Median And Mode Of Grouped And Ungrouped Data',
    'easy',
    'single_correct',
    'If in a frequency distribution, the mean and median are 21 and 22 respectively, then
its mode is approximately :',
    '[{"id": "A", "text": "20.5"}, {"id": "B", "text": "22.0"}, {"id": "C", "text": "24.0"}, {"id": "D", "text": "25.5"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Given that, 
<br><br>Mean = 21  and median = 22
<br><br>We know, 
<br><br>Mode + 2 Mean = 3 Median
<br><br>$$\therefore$$  Mode = 3 $$ \times $$ 22 $$-$$ 2 $$ \times $$ 21
<br><br>= 66 $$-$$ 42
<br><br>= 24',
    4,
    -1,
    true,
    2005,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'mathematics', 'statistics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'de72a5cf-f418-4b8a-bd63-8a9d1233da07',
    'mathematics',
    '12',
    'Statistics',
    'Calculation Of Standard Deviation Variance And Mean Deviation Of Grouped And Ungrouped Data',
    'medium',
    'single_correct',
    'Let the median and the mean deviation about the median of 7 observation $170,125,230,190,210$, a, b be 170 and $\frac{205}{7}$ respectively. Then the mean deviation about the mean of these 7 observations is :',
    '[{"id": "A", "text": "31"}, {"id": "B", "text": "28"}, {"id": "C", "text": "30"}, {"id": "D", "text": "32"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$$
\text { Median }=170 \Rightarrow 125, \mathrm{a}, \mathrm{b}, 170,190,210,230
$$

<br/><br/>Mean deviation about
Median $=$
<br/><br/>$$
\begin{aligned}
& \frac{0+45+60+20+40+170-a+170-b}{7}=\frac{205}{7} \\\\
& \Rightarrow \mathrm{a}+\mathrm{b}=300 \\\\
& \text { Mean }=\frac{170+125+230+190+210+a+b}{7}=175
\end{aligned}
$$

<br/><br/>Mean deviation
About mean $=$
<br/><br/>$$
\frac{50+175-a+175-b+5+15+35+55}{7}=30
$$',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'statistics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c5ce8333-647a-49e8-8fee-afb385ec6707',
    'mathematics',
    '12',
    'Straight Lines and Pair of Straight Lines',
    'Centers Of Triangle',
    'medium',
    'single_correct',
    'A point P moves on the line 2x – 3y + 4 = 0. If Q(1, 4) and R (3, – 2) are fixed points, then the locus of the centroid of $$\Delta $$PQR is a line :',
    '[{"id": "A", "text": "parallel to y-axis"}, {"id": "B", "text": "with slope $${2 \\over 3}$$"}, {"id": "C", "text": "parallel to x-axis"}, {"id": "D", "text": "with slope $${3 \\over 2}$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Let the centroid of $$\Delta $$PQR is (h, k) &amp; P is ($$\alpha $$, $$\beta $$),  then
<br><br>$${{\alpha  + 1 + 3} \over 3} = h\,$$&nbsp;&nbsp;&nbsp;and&nbsp;&nbsp;&nbsp;$${{\beta  + 4 - 2} \over 3} = k$$
<br><br>$$\alpha  = \left( {3h - 4} \right)$$&nbsp;&nbsp;&nbsp;$$\beta  = \left( {3k - 4} \right)$$
<br><br>Point P($$\alpha $$, $$\beta $$) lies on the line 2x $$-$$ 3y + 4 = 0
<br><br>$$ \therefore $$&nbsp;&nbsp;2(3h $$-$$ 4) $$-$$ 3 (3k $$-$$ 2) + 4 = 0
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;locus  is 6x $$-$$ 9y + 2 = 0',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'straight_lines_and_pair_of_straight_lines'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4efc36e7-ae7d-4549-b75b-5bf787945c29',
    'mathematics',
    '12',
    'Straight Lines and Pair of Straight Lines',
    'Locus',
    'medium',
    'single_correct',
    '<p>If A and B are the points of intersection of the circle $x^2 + y^2 - 8x = 0$ and the hyperbola $\frac{x^2}{9} - \frac{y^2}{4} = 1$ and a point P moves on the line $2x - 3y + 4 = 0$, then the centroid of $\Delta PAB$ lies on the line :</p>',
    '[{"id": "A", "text": "<p>$x + 9y = 36$</p>"}, {"id": "B", "text": "<p>$9x - 9y = 32$</p>"}, {"id": "C", "text": "<p>$4x - 9y = 12$</p>"}, {"id": "D", "text": "<p>$6x - 9y = 20$</p>"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p>$$\begin{aligned}
& x^2+y^2-8 x=0, \frac{x^2}{9}-\frac{y^2}{4}=1 \quad\text{.... (1)}\\
& 4 x^2-9 y^2=36 \quad\text{.... (2)}\\
& \text { Solve }(1) \&(2) \\
& 4 x^2-9\left(8 x-x^2\right)=36 \\
& 13 x^2-72 x-36=0 \\
& (13 x+6)(x=6)=0 \\
& x=\frac{-6}{13}, x=6 \\
& x=\frac{-6}{13}(\text { rejected }) \\
& y \rightarrow \text { Imaginary } \\
& n=6, \frac{36}{9}-\frac{y^2}{4}=1 \\
& y^2=12, y=I \sqrt{12} \\
& A(6, \sqrt{12}), B(6,-\sqrt{12}) \\
& p\left(\alpha, \frac{2 \alpha+4}{3}\right) P \text { lies on }
\end{aligned}$$</p>
<p>$$\begin{aligned}
& \text { centroid }(\mathrm{h}, \mathrm{k}) \quad 2x-3y+y=0\\
& \mathrm{h}=\frac{12+\alpha}{3}, \alpha=3 \mathrm{~h}-12 \\
& \mathrm{k}=\frac{\frac{2 \alpha-3 y}{3}}{3} \Rightarrow 2 \alpha+4=9 \mathrm{y} \\
& \alpha=\frac{9 \mathrm{k}-4}{2} \\
& 6 \mathrm{~h}-2 \mathrm{y}=9 \mathrm{k}-4 \\
& 6 \mathrm{x}-9 \mathrm{y}=20
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'mathematics', 'straight_lines_and_pair_of_straight_lines'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'd17dc3f0-8dc9-426c-8ce6-77e0129a1156',
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
    '032b26d4-22a8-4980-b104-f4fe0dbd8e66',
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
    'caccdd69-f05f-4f06-b271-cbbfc7fbb148',
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
    '018dd54c-4f90-4457-a4db-285030e6e747',
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
    'e7758886-5209-4cc3-99e8-e62a78c208af',
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
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b627880b-f248-42b3-9e09-1760fab312b9',
    'physics',
    '12',
    'Capacitor',
    'Parallel Plate Capacitor',
    'medium',
    'single_correct',
    'An electron with kinetic energy K<sub>1</sub> enters between parallel plates of a capacitor at an angle ''$$\alpha$$'' with the plates. It leaves the plates at angle ''$$\beta$$'' with kinetic energy K<sub>2</sub>. Then the ratio of kinetic energies K<sub>1</sub> : K<sub>2</sub> will be :',
    '[{"id": "A", "text": "$${{{{\\cos }^2}\\beta } \\over {{{\\cos }^2}\\alpha }}$$"}, {"id": "B", "text": "$${{\\cos \\beta } \\over {\\cos \\alpha }}$$"}, {"id": "C", "text": "$${{{{\\sin }^2}\\beta } \\over {{{\\cos }^2}\\alpha }}$$"}, {"id": "D", "text": "$${{\\cos \\beta } \\over {\\sin \\alpha }}$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1kqze98do/36d2cd8d-1980-4be4-af63-70d917e0a296/a3763ec0-e262-11eb-bfe6-a5f7baa62679/file-1kqze98dp.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Evening Shift Physics - Capacitor Question 97 English Explanation">
<br>$$ \because $$ $${v_1}\cos \alpha  = {v_2}\cos \beta $$<br><br>$${{{v_1}} \over {{v_2}}} = {{\cos \beta } \over {\cos \alpha }}$$<br><br>Then the ratio of kinetic energies<br><br>$${{{k_1}} \over {{k_2}}} = {{{1 \over 2}m{v_1}^2} \over {{1 \over 2}m{v_2}^2}} = {\left( {{{{v_1}} \over {{v_2}}}} \right)^2} = {\left( {{{\cos \beta } \over {\cos \alpha }}} \right)^2}$$<br><br>$$ \Rightarrow $$ $${{{k_1}} \over {{k_2}}} = {{{{\cos }^2}\beta } \over {{{\cos }^2}\alpha }}$$',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'capacitor'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b58710d3-ea90-42b2-a20b-d7d54487e63e',
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
    'f4e204e3-bcbc-48de-ace0-f13347e1fea3',
    'physics',
    '12',
    'Circular Motion',
    'Uniform Circular Motion',
    'medium',
    'single_correct',
    'A conical pendulum of length 1 m makes an angle $$\theta $$ = 45<sup>o</sup> w.r.t. Z-axis and moves in a circle in the XY plane. The radius of the circle is 0.4 m and its center is vertically below O. The speed of the pendulum, in its circular path, will be: (Take g = 10 ms<sup>−2</sup> )
<br><br><img src="https://imagex.cdn.examgoal.net/NydOBhIDP3af2DDfg/rP7ie0Zx4S75d64ocvp6yXPuQE94g/HUvC1Cgdkpah9IVnfjFOR8/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2017 (Online) 9th April Morning Slot Physics - Circular Motion Question 63 English">',
    '[{"id": "A", "text": "0.4 m/s"}, {"id": "B", "text": "4 m/s"}, {"id": "C", "text": "0.2 m/s"}, {"id": "D", "text": "2 m/s"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'FBD of pendulum is :
<br><br><img src="https://imagex.cdn.examgoal.net/zS19rIHDV4IlD1ZBZ/DsWFTxExM4qRO7u3HarNEvLKKafuA/WqXRJZSMEE2DUvRloVIEMM/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2017 (Online) 9th April Morning Slot Physics - Circular Motion Question 63 English Explanation">
<br><br>$$\therefore\,\,\,$$  T sin $$\theta $$ = $${{m{v^2}} \over r}$$
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T cos $$\theta $$ = mg
<br><br>$$\therefore\,\,\,$$ tan $$\theta $$ = $${{{v^2}} \over {rg}}$$
<br><br>$$ \Rightarrow $$$$\,\,\,$$ tan45<sup>o</sup><sup></sup> = $${{{v^2}} \over {rg}}$$
<br><br>$$ \Rightarrow $$$$\,\,\,$$ v<sup>2</sup> = rg
<br><br>$$ \Rightarrow $$$$\,\,\,$$ v = $$\sqrt {0.4 \times 10} $$ = 2 m/s',
    4,
    -1,
    true,
    2017,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'circular_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '8c414516-9ab6-489c-88d2-33f4faadd4f9',
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
    '3f891bfa-c9c3-45de-8347-5660083c10ef',
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
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '875f0551-d465-4812-ae74-a17e11a0b2c0',
    'physics',
    '12',
    'Current Electricity',
    'Kirchhoffs Circuit Laws',
    'medium',
    'single_correct',
    'In the given circuit the cells have zero internal resistance. The currents (in Amperes) passing through resistance R<sub>1</sub> and R<sub>2</sub> respectively, are -
<br><br><img src="https://imagex.cdn.examgoal.net/FuShiJlqHtJJ0hvUS/DNOFxXjlCATLlfNzMMY3LUJ3QLuwZ/52tvvytE5W5uMoV8Y6i3IA/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 10th January Morning Slot Physics - Current Electricity Question 276 English">',
    '[{"id": "A", "text": "0.5, 0"}, {"id": "B", "text": "0, 1"}, {"id": "C", "text": "1, 2"}, {"id": "D", "text": "2, 2"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'i<sub>1</sub> = $${{10} \over {20}}$$ = 0.5A
<br><br>i<sub>2</sub> = 0',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'current_electricity'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5c034d2c-e737-475a-a42e-230d1ffc21e3',
    'physics',
    '12',
    'Current Electricity',
    'Resistance And Resistivity',
    'easy',
    'single_correct',
    '<p>Given below are two statements: one is labelled as Assertion A and the other is labelled as Reason R.</p>
<p>Assertion A: Alloys such as constantan and manganin are used in making standard resistance coils.</p>
<p>Reason R: Constantan and manganin have very small value of temperature coefficient of resistance.</p>
<p>In the light of the above statements, choose the correct answer from the options given below.</p>',
    '[{"id": "A", "text": "Both A and R are true and R is the correct explanation of A."}, {"id": "B", "text": "Both A and R are true but R is NOT the correct explanation of A."}, {"id": "C", "text": "A is true but R is false."}, {"id": "D", "text": "A is false but R is true."}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>Since they have low temperature coefficient of
resistance, their resistance remains almost
constant.</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'current_electricity'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1612db07-999e-4bed-aa61-742d8be61d7c',
    'physics',
    '12',
    'Dual Nature of Radiation',
    'Matter Waves Davisson And Germer Experiment',
    'easy',
    'single_correct',
    'If the kinetic energy of a free electron doubles, it''s deBroglie wavelength changes by the factor',
    '[{"id": "A", "text": "$$2$$"}, {"id": "B", "text": "$${1 \\over 2}$$"}, {"id": "C", "text": "$${\\sqrt 2 }$$"}, {"id": "D", "text": "$${1 \\over {\\sqrt 2 }}$$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'de-Broglie wavelength, 
<br><br>$$\lambda  = {h \over p} = {h \over {\sqrt {2.m,\left( {K.E} \right)} }}$$
<br><br>$$\therefore$$ $$\lambda  \propto {1 \over {\sqrt {K.E} }}$$
<br><br>If $$K.E$$ is doubled, wavelength becomes $${\lambda  \over {\sqrt 2 }}$$',
    4,
    -1,
    true,
    2005,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'dual_nature_of_radiation'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a7dc1028-9280-4b90-96e4-5e7bdc782186',
    'physics',
    '12',
    'Dual Nature of Radiation',
    'Photoelectric Effect',
    'medium',
    'single_correct',
    'In a photoelectric experiment ultraviolet light of wavelength 280 nm is used with lithium cathode having work function $$\phi$$ = 2.5 eV. If the wavelength of incident light is switched to 400 nm, find out the change in the stopping potential. (h = 6.63 $$\times$$ 10<sup>$$-$$34</sup> Js, c = 3 $$\times$$ 10<sup>8</sup> ms<sup>$$-$$1</sup>)',
    '[{"id": "A", "text": "1.3 V"}, {"id": "B", "text": "1.1 V"}, {"id": "C", "text": "1.9 V"}, {"id": "D", "text": "0.6 V"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '$$K{E_{\max }} = e{V_s} = {{hc} \over \lambda } - \phi $$<br><br>$$ \Rightarrow e{V_s} = {{1240} \over {280}} - 2.5 = $$ 1.93 eV<br><br>$$ \Rightarrow {V_{{s_1}}} = $$ 1.93 V .... (i)<br><br>$$ \Rightarrow e{V_{{s_2}}} = {{1240} \over {400}} - 2.5 = $$ 0.6 eV<br><br>$$ \Rightarrow {V_{{s_2}}} = $$ 0.6 V .... (ii)<br><br>$$\Delta$$V = $${V_{{s_1}}} - {V_{{s_2}}}$$ = 1.93 $$-$$ 0.6 = 1.33 V',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'dual_nature_of_radiation'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '66557156-a001-47f5-8181-b23b58c8df8b',
    'physics',
    '12',
    'Dual Nature of Radiation',
    'Photoelectric Effect',
    'easy',
    'single_correct',
    '<p>Given below are two statements: one is labelled as Assertion (A) and the other is labelled as Reason (R).</p><p><b>Assertion (A) :</b> Emission of electrons in photoelectric effect can be suppressed by applying a sufficiently negative electron potential to the photoemissive substance.</p><p><b>Reason (R) :</b> A negative electric potential, which stops the emission of electrons from the surface of a photoemissive substance, varies linearly with frequency of incident radiation.</p><p>In the light of the above statements, choose the most appropriate answer from the options given below :</p>',
    '[{"id": "A", "text": "<p>Both (A) and (R) are true and (R) is the correct explanation of (A).</p>"}, {"id": "B", "text": "<p>Both (A) and (R) are true but (R) is not the correct explanation of (A).</p>"}, {"id": "C", "text": "<p>(A) is false but (R) is true</p>"}, {"id": "D", "text": "<p>(A) is true but (R) is false</p>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p><strong>Assertion (A)</strong> is <strong>true</strong> because a sufficiently negative potential can repel and stop the emitted electrons from leaving the surface.  </p>
<p><p><strong>Reason (R)</strong> is <strong>also true</strong> because the stopping potential $V_{\text{stop}}$ varies linearly with the frequency $\nu$ of the incident light ($V_{\text{stop}} = \frac{h}{e}\,\nu - \frac{\phi}{e}$).  </p></p>
<p><p>However, (R) does <strong>not</strong> directly explain <strong>why</strong> a negative potential suppresses electron emission; it only shows <strong>how much</strong> potential is needed for different frequencies.</p></p>

<p>Therefore, <strong>both (A) and (R) are true, but (R) is not the correct explanation of (A)</strong>.</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'dual_nature_of_radiation'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'dfdf7c08-c633-4b24-8d14-98ddedb149d7',
    'physics',
    '12',
    'Electromagnetic Induction',
    'Inductance Self And Mutual',
    'medium',
    'single_correct',
    '<p>A small square loop of wire of side $$l$$ is placed inside a large square loop of wire $$\mathrm{L}(\mathrm{L}&gt;&gt;l)$$. Both loops are coplanar and their centres coincide at point $$\mathrm{O}$$ as shown in figure. The mutual inductance of the system is :</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l6eozgfw/9a58986b-6ae5-422b-811e-0c741c90d69b/987183c0-13c3-11ed-aaaa-fbfc70dd81e0/file-1l6eozgfx.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l6eozgfw/9a58986b-6ae5-422b-811e-0c741c90d69b/987183c0-13c3-11ed-aaaa-fbfc70dd81e0/file-1l6eozgfx.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 25th July Morning Shift Physics - Electromagnetic Induction Question 55 English"></p>',
    '[{"id": "A", "text": "$$\\frac{2 \\sqrt{2} \\mu_{0} \\mathrm{~L}^{2}}{\\pi l}$$"}, {"id": "B", "text": "$$\\frac{\\mu_{0} l^{2}}{2 \\sqrt{2} \\pi \\mathrm{L}}$$"}, {"id": "C", "text": "$$\\frac{2 \\sqrt{2} \\mu_{0} l^{2}}{\\pi \\mathrm{L}}$$"}, {"id": "D", "text": "$$\n\\frac{\\mu_{0} \\mathrm{~L}^{2}}{2 \\sqrt{2} \\pi l}\n$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>We know $$\phi  = Mi$$</p>
<p>Let i current be flowing in the larger loop</p>
<p>$$ \Rightarrow \phi  \simeq \left[ {4 \times {{{\mu _0}i} \over {4\pi (L/2)}}[\sin 45^\circ  + \sin 45^\circ ]} \right] \times $$ Area</p>
<p>$$ = {{2\sqrt 2 {\mu _0}i} \over {\pi L}} \times {I^2}$$</p>
<p>$$ \Rightarrow M = {\phi  \over i} = {{2\sqrt 2 {\mu _0}{I^2}} \over {\pi L}}$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electromagnetic_induction'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2772d763-56e2-49e4-9e88-c310134aa4fc',
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
    'def3f556-3acc-4f31-abef-a2827bb4a3f1',
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
    '5b5358a2-a95c-48fb-9535-546c710476de',
    'physics',
    '12',
    'Electronic Devices',
    'Digital Circuits',
    'easy',
    'single_correct',
    'Which of the following gives a reversible operation?',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dmrlc6/34599ddb-ef93-43b5-a571-83c3413258a5/21d35660-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dmrlc7-182w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dms7hv/ea6e1a3a-4d21-4a1f-b47c-2012f77e1717/32f15b40-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dms7hw-179w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dmsz08/3c12f2c8-b123-4f06-963e-e4ac5d01b908/48316b80-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dmsz09-165w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dmtdux/7072e020-3b79-4e06-92d5-1161d0eaa521/53aa9590-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dmtduy-165w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'NOT gate is reversible gate because the input
signal can be recovered. Here It will behave as a NOT gate. Hence gives reversible operation.
<img src="https://imagex.cdn.examgoal.net/7kd4dk6ho1umu/49d6c8fa-78ef-402d-aba0-3ccc3b88b762/82342f60-4cae-11ea-b62d-51ccc5d4afb6/file-7kd4dk6ho1umv-322w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Explanation">',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electronic_devices'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '240e661c-d7fc-44b7-bdf8-a24bddd5475e',
    'physics',
    '12',
    'Electronic Devices',
    'Semiconductor And P N Junction Diode',
    'medium',
    'single_correct',
    '<p>In the given circuit, the breakdown voltage of the Zener diode is $$3.0 \mathrm{~V}$$. What is the value of $$\mathrm{I}_{\mathrm{z}}$$ ?</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/6y3zli1lsfm7q5u/64cb94a9-ecfe-47e7-9a05-53165c4f4a08/4e060120-c7d2-11ee-a6e7-91ff3070e761/file-6y3zli1lsfm7q5v.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/6y3zli1lsfm7q5u/64cb94a9-ecfe-47e7-9a05-53165c4f4a08/4e060120-c7d2-11ee-a6e7-91ff3070e761/file-6y3zli1lsfm7q5v.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline" alt="JEE Main 2024 (Online) 29th January Morning Shift Physics - Semiconductor Question 34 English"></p>',
    '[{"id": "A", "text": "3.3 mA"}, {"id": "B", "text": "10 mA"}, {"id": "C", "text": "5.5 mA"}, {"id": "D", "text": "7 mA"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lt2saq9l/d2272837-507b-46bc-a645-f1cefcdc9fae/1f3e4da0-d490-11ee-9383-19a774a872fb/file-1lt2saq9m.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lt2saq9l/d2272837-507b-46bc-a645-f1cefcdc9fae/1f3e4da0-d490-11ee-9383-19a774a872fb/file-1lt2saq9m.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline" alt="JEE Main 2024 (Online) 29th January Morning Shift Physics - Semiconductor Question 34 English Explanation"></p>
<p>$$\mathrm{V}_{\mathrm{z}}=3 \mathrm{~V}$$</p>
<p>Let potential at $$\mathrm{B}=0 \mathrm{~V}$$</p>
<p>Potential at $$E\left(V_E\right)=10 V$$</p>
<p>$$\begin{aligned}
&amp; V_C=V_A=3 V \\
&amp; I_z+I_1=I \\
&amp; I=\frac{10-3}{1000}=\frac{7}{1000} A \\
&amp; I_1=\frac{3}{2000} A
\end{aligned}$$</p>
<p>Therefore $$I_z=\frac{7-1.5}{1000}=5.5 \mathrm{~mA}$$</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electronic_devices'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '128577d2-c59b-482c-af6d-6a6f8eae283c',
    'physics',
    '12',
    'Electrostatics',
    'Electric Flux And Gauss Law',
    'medium',
    'single_correct',
    'Let a total charge 2Q be distributed in a sphere of radius R, with the charge density given by $$\rho $$(r) = kr, where
r is the distance from the centre. Two charges A and B, of –Q each, are placed on diametrically opposite
points, at equal distance, $$a$$ from the centre. If A and B do not experience any force, then :',
    '[{"id": "A", "text": "$$a = {8^{ - 1/4}}R$$"}, {"id": "B", "text": "$$a = {2^{ - 1/4}}R$$"}, {"id": "C", "text": "$$a = {{3R} \\over {{2^{1/4}}}}$$"}, {"id": "D", "text": "$$a = {R \\over {\\sqrt 3 }}$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Total charge = 2Q
<br>Charging density $$\rho $$ = kr
<br>Radius = R
<img src="https://imagex.cdn.examgoal.net/jf762wkjxyeouqp/3180be3a-3707-447b-b5db-ff17fc9a5305/473c4110-a3b5-11e9-902e-23ffedc9804e/file-jf762wkjxyeouqq.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 12th April Evening Slot Physics - Electrostatics Question 184 English Explanation 1">
Charge enclosed in the sphere,
<br>q<sub>in</sub> = $$\int\limits_0^R {\rho dV} $$
<br><br>$$ \Rightarrow $$ 2Q = $$\int\limits_0^R {kr4\pi {r^2}dr} $$
<br><br>$$ \Rightarrow $$ 2Q = $$k4\pi \int\limits_0^R {{r^3}dr} $$
<br><br>$$ \Rightarrow $$ 2Q = $$k4\pi {{{R^4}} \over 4}$$
<br><br>$$ \Rightarrow $$ k = $${{2Q} \over {\pi {R^4}}}$$ ........... (1)
<br><br>Force on charge at A will be due to charge at B and due to force applied by the charge in sphere.
<img src="https://imagex.cdn.examgoal.net/jf762wkjxyf4pmq/f9935184-dfef-4f7b-8b7e-d82737961f4b/003bea20-a3b7-11e9-902e-23ffedc9804e/file-jf762wkjxyf4pmr.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 12th April Evening Slot Physics - Electrostatics Question 184 English Explanation 2">
<br><br>Here F<sub>sphere</sub> = EQ
<br><br>Using Gauss law, we can find electric field at point A due to sphere,
<br><br>∮ $$\overrightarrow E .d\overrightarrow A $$ = $${{{q_{in}}} \over {{ \in _0}}}$$
<br><br>$$ \Rightarrow $$ $$E\left( {4\pi {a^2}} \right)$$ = $${{\int\limits_0^a {\rho dV} } \over {{ \in _0}}}$$
<br><br>$$ \Rightarrow $$ $$E\left( {4\pi {a^2}} \right)$$ = $${{k4\pi {{{a^4}} \over 4}} \over {{ \in _0}}}$$
<br><br>$$ \Rightarrow $$ E = $${{k{a^2}} \over {4{ \in _0}}}$$
<br><br>As on charge A net force is zero then,
<br><br> F<sub>AB</sub> = F<sub>sphere</sub>
<br><br>$$ \Rightarrow $$ $${{Q \times Q} \over {4\pi { \in _0}{{\left( {2a} \right)}^2}}}$$ = $${{k{a^2}} \over {4{ \in _0}}}$$ $$ \times $$ Q
<br><br>$$ \Rightarrow $$ $${Q \over {4\pi {a^2}}} = k{a^2}$$
<br><br>$$ \Rightarrow $$ $${Q \over {4\pi {a^2}}} = {{2Q} \over {\pi {R^4}}}{a^2}$$ [ from equation (1)]
<br><br>$$ \Rightarrow $$ $$8{a^4} = {R^4}$$
<br><br>$$ \Rightarrow $$ $$a = {8^{ - 1/4}}R$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electrostatics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9507a782-fbe1-4dd2-b48c-cb37c11891ca',
    'physics',
    '12',
    'Electrostatics',
    'Electric Charges And Coulombs Law',
    'easy',
    'single_correct',
    '<p>A charge of $$4 \,\mu \mathrm{C}$$ is to be divided into two. The distance between the two divided charges is constant. The magnitude of the divided charges so that the force between them is maximum, will be :</p>',
    '[{"id": "A", "text": "$$1 \\,\\mu \\mathrm{C}$$ and $$3 \\,\\mu\\mathrm{C}$$"}, {"id": "B", "text": "$$2 \\,\\mu \\mathrm{C}$$ and $$2\\, \\mu \\mathrm{C}$$"}, {"id": "C", "text": "0 and $$4\\, \\mu\\, \\mathrm{C}$$"}, {"id": "D", "text": "$$1.5 \\,\\mu \\mathrm{C}$$ and $$2.5\\, \\mu \\mathrm{C}$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l6yvpl4z/f567a908-d37f-4672-8f56-4c0e1c02e1d8/92df5930-1edd-11ed-8851-99197a0d39b5/file-1l6yvpl50.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l6yvpl4z/f567a908-d37f-4672-8f56-4c0e1c02e1d8/92df5930-1edd-11ed-8851-99197a0d39b5/file-1l6yvpl50.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 27th July Evening Shift Physics - Electrostatics Question 110 English Explanation"></p>
<p>so $$F = {{kq(4 - q) \times {{10}^{ - 12}}} \over {{r^2}}}$$</p>
<p>so F<sub>max</sub> will be at q = 2 $$\mu$$C</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electrostatics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ca9542aa-fe61-4a55-9216-df9c4470e07c',
    'physics',
    '12',
    'Geometrical Optics',
    'Optical Instruments',
    'easy',
    'single_correct',
    'The image formed by an objective of a compound microscope is',
    '[{"id": "A", "text": "virtual and diminished"}, {"id": "B", "text": "real an diminished"}, {"id": "C", "text": "real and enlarged"}, {"id": "D", "text": "virtual and enlarged"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'A real, inverted and enlarged image of the object is formed by the objective lens of a compound microscope.',
    4,
    -1,
    true,
    2003,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'geometrical_optics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '8a83ca6c-45c7-4f4a-8e7d-7d528c6aa02b',
    'physics',
    '12',
    'Geometrical Optics',
    'Refraction Tir And Prism',
    'medium',
    'single_correct',
    'A ray of light passes from a denser medium to a rarer medium at an angle of incidence i. The reflected and refracted rays make an angle of 90$$^\circ$$ with each other. The angle of reflection and refraction are respectively r and r''. The critical angle is given by<br><br><img src="https://imagex.cdn.examgoal.net/1krtmemlb/0a02764b-2546-411d-a371-664dc4a3ad4c/060076f0-f302-11eb-a506-37d290d1d40d/file-1krtmemlc.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 22th July Evening Shift Physics - Geometrical Optics Question 140 English">',
    '[{"id": "A", "text": "sin<sup>$$-$$1</sup> (tan r)"}, {"id": "B", "text": "sin<sup>$$-$$1</sup> (cot r)"}, {"id": "C", "text": "sin<sup>$$-$$1</sup> (tan r'')"}, {"id": "D", "text": "tan<sup>$$-$$1</sup> (sin i)"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1krusoaf8/afccb84b-0631-4873-827c-d9a60ef90ad4/521e0840-f3a7-11eb-a605-b34dacb82f1b/file-1krusoaf9.jpeg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 22th July Evening Shift Physics - Geometrical Optics Question 140 English Explanation"> <br><br>$$n\sin {\theta _c} = 1$$<br><br>$$\sin {\theta _c} = {1 \over n}$$<br><br>$$i = r$$<br><br>$$r'' + r + 90^\circ  = 180^\circ $$<br><br>$$r'' = 90^\circ  - r = 90^\circ  - i$$<br><br>$$\cos r'' = \cos (90^\circ  - i)$$<br><br>$$\cos r'' = \sin i$$ ..... (i)<br><br>$$n\sin i = \sin r''$$ ..... (ii)<br><br>$$n = \tan r''$$<br><br>$${1 \over {\sin {\theta _c}}} = \tan r''$$<br><br>$$\sin {\theta _c} = \cot r''$$<br><br>$$\sin {\theta _c} = \tan r$$<br><br>$${\theta _c} = {\sin ^{ - 1}}(\tan r)$$',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'geometrical_optics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '01855e1c-cbfe-47ea-8fc5-3fe22bfe4ab3',
    'physics',
    '12',
    'Geometrical Optics',
    'Lenses',
    'hard',
    'single_correct',
    '<p>A concave-convex lens of refractive index 1.5 and the radii of curvature of its surfaces are 30 cm and 20 cm, respectively. The concave surface is upwards and is filled with a liquid of refractive index 1.3. The focal length of the liquid-glass combination will be</p>',
    '[{"id": "A", "text": "<p>$ \\frac{700}{11} $ cm</p>"}, {"id": "B", "text": "<p>$ \\frac{600}{11} $ cm</p>"}, {"id": "C", "text": "<p>$ \\frac{800}{11} $ cm</p>"}, {"id": "D", "text": "<p>$ \\frac{500}{11} $ cm</p>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9nqqvxs/c2a01898-0dd5-4525-86f6-5991c2272576/fa033300-1cd9-11f0-9f5f-0b480a650056/file-jaoe38c1m9nqqvxt.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/jaoe38c1m9nqqvxs/c2a01898-0dd5-4525-86f6-5991c2272576/fa033300-1cd9-11f0-9f5f-0b480a650056/file-jaoe38c1m9nqqvxt.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline" alt="JEE Main 2025 (Online) 8th April Evening Shift Physics - Geometrical Optics Question 18 English Explanation"></p>
<p>$$\begin{aligned}
\frac{1}{\mathrm{f}} &amp; =\left(\frac{1.3-1}{1}\right)\left(\frac{1}{\infty}-\frac{1}{-30}\right) \\
&amp; =\left(\frac{1.5-1}{1}\right)\left(\frac{1}{-30}-\frac{1}{-30}\right) \\
&amp; =\frac{0.3}{30}+\frac{0.5}{60}=\frac{1}{100}+\frac{1}{120} \\
&amp; =\frac{6+5}{600}=\frac{11}{600} \\
\mathrm{f} &amp; =\frac{600}{11} \mathrm{~cm}
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'geometrical_optics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e4718588-0a63-4385-83f6-9455e423ef37',
    'physics',
    '11',
    'Gravitation',
    'Keplers Law And Universal Law Of Gravitation',
    'medium',
    'single_correct',
    'A solid sphere of radius R gravitationally attracts a particle placed at 3R from its centre with a force F<sub>1</sub>. Now a spherical cavity of radius $$\left( {{R \over 2}} \right)$$ is made in the sphere (as shown in figure) and the force becomes F<sub>2</sub>. The value of F<sub>1</sub> : F<sub>2</sub> is<br><br><img src="https://imagex.cdn.examgoal.net/1klse24x4/4859a6d7-a609-43ae-b23b-345e599fe470/4caf4e80-7b8b-11eb-a157-49f87e3afb79/file-1klse24x5-307w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Morning Shift Physics - Gravitation Question 133 English">',
    '[{"id": "A", "text": "36 : 25"}, {"id": "B", "text": "41 : 50"}, {"id": "C", "text": "50 : 41"}, {"id": "D", "text": "25 : 36"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$${g_1} = {{GM} \over {{{(3R)}^2}}} = {{GM} \over {9{R^2}}}$$<br><br>$${g^2} = {{GM} \over {9{R^2}}} - {{G\left( {{M \over 8}} \right)} \over {{{\left( {3R - {R \over 2}} \right)}^2}}}$$<br><br>$$ = {{GM} \over {9{R^2}}} - {{GM} \over {{R^2}50}} = {{41} \over {9 \times 50}}{{GM} \over {{R^2}}}$$<br><br>$${{{g_1}} \over {{g_2}}} = {{41} \over {50}}$$<br><br>$$ \therefore $$ $$ {{{F_1}} \over {{F_2}}} = {{m{g_1}} \over {m{g_2}}} = {{41} \over {50}}$$',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'gravitation'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5456abed-8dcc-431f-b3d9-9db6f341f209',
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
<p>where $G$ is the gravitational constant, $M$ is the mass of the Earth, $m$ is the mass of the satellite, and $R$ is the radius of the orbit. The negative sign indicates that work would have to be done to remove the satellite from the Earth&#39;s gravitational influence.</p>
<p>The kinetic energy ($K$) of the satellite is given by the formula:</p>
<p>$K = \frac{GMm}{2R}$</p>
<p>This is obtained from the fact that for a satellite in stable orbit, the gravitational force must be equal to the centripetal force required to keep the satellite moving in a circle. From this, we can derive an expression for the velocity of the satellite, and hence its kinetic energy.</p>
<p>The total mechanical energy ($E$) of the satellite, which is the sum of its kinetic and potential energy, is therefore:</p>
<p>$E = K + U = \frac{GMm}{2R} - \frac{GMm}{R} = -\frac{GMm}{2R}$</p>
<p>So the potential energy $U$ is $-2E$, and the kinetic energy $K$ is $-E$. Thus, the statement &quot;If $E$ be the total energy of a satellite moving around the earth, then its potential energy will be $2E$&quot; is correct, and the statement &quot;The kinetic energy of a satellite revolving in an orbit is equal to the half the magnitude of total energy $E$&quot; is incorrect.</p>',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'gravitation'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '6086f6d5-d6a6-4fee-ad84-5c29a1e714ab',
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
    'b1e91cb3-a7fe-4479-9270-b29578e39e1d',
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
    '846b1b7a-78fc-4c22-ab99-e75bab51d34f',
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
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '6f33e623-f85c-45e0-9c40-17096ad1d8cc',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Degree Of Freedom And Law Of Equipartition Of Energy',
    'medium',
    'single_correct',
    '<p>The rms speed of oxygen molecule in a vessel at particular temperature is $$\left(1+\frac{5}{x}\right)^{\frac{1}{2}} v$$, where $$v$$ is the average speed of the molecule. The value of $$x$$ will be:</p>
<p>$$\left(\right.$$ Take $$\left.\pi=\frac{22}{7}\right)$$</p>',
    '[{"id": "A", "text": "4"}, {"id": "B", "text": "8"}, {"id": "C", "text": "28"}, {"id": "D", "text": "27"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>The relationship between the root-mean-square (rms) speed ($$v_{rms}$$) and the average speed ($$v_{avg}$$) of molecules in a gas can be found using the Maxwell-Boltzmann distribution. The rms speed and average speed are related as follows:</p>

$$v_{rms} = \sqrt{\frac{3RT}{M}}$$

$$v_{avg} = \sqrt{\frac{8RT}{\pi M}}$$

<p>Where:</p>
<ul>
    <li>$$R$$ is the ideal gas constant</li>
    <li>$$T$$ is the temperature in Kelvin</li>
    <li>$$M$$ is the molar mass of the gas</li>
    <li>$$\pi$$ is the mathematical constant pi</li>
</ul>

<p>In this problem, the rms speed of the oxygen molecule is given by:</p>

$$v_{rms} = \left(1+\frac{5}{x}\right)^{\frac{1}{2}} v_{avg}$$

<p>Now, let''s divide the expression for $$v_{rms}$$ by the expression for $$v_{avg}$$:</p>

$$\frac{v_{rms}}{v_{avg}} = \frac{\sqrt{\frac{3RT}{M}}}{\sqrt{\frac{8RT}{\pi M}}} = \left(1+\frac{5}{x}\right)^{\frac{1}{2}}$$

<p>By simplifying the expression, we get:</p>

$$\frac{v_{rms}}{v_{avg}} = \frac{\sqrt{3}}{\sqrt{\frac{8}{\pi}}} = \left(1+\frac{5}{x}\right)^{\frac{1}{2}}$$

<p>Square both sides of the equation:</p>

$$\frac{3}{\frac{8}{\pi}} = 1 + \frac{5}{x}$$

<p>Now we will substitute the provided value of $$\pi = \frac{22}{7}$$:</p>

$$\frac{3}{\frac{8}{\frac{22}{7}}} = 1 + \frac{5}{x}$$

<p>By simplifying the expression, we get:</p>

$$\frac{3 \cdot \frac{22}{7}}{8} = 1 + \frac{5}{x}$$

<p>Now let''s solve for $$x$$:</p>

$$\frac{66}{56} - 1 = \frac{5}{x}$$

$$\frac{10}{56} = \frac{5}{x}$$

<p>Multiplying both sides by $$x$$:</p>

$$\frac{10}{56}x = 5$$

<p>Finally, solving for $$x$$:</p>

$$x = \frac{5 \cdot 56}{10} = 28$$

<p>So, the value of $$x$$ is $$\boxed{28}$$.',
    4,
    -1,
    true,
    2023,
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
    '92ca82b4-ea4b-4e36-8e10-d214ff671f64',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Heat Transfer',
    'medium',
    'single_correct',
    '<p>The temperature of a body in air falls from $40^{\circ} \mathrm{C}$ to $24^{\circ} \mathrm{C}$ in 4 minutes. The temperature of the air is $16^{\circ} \mathrm{C}$. The temperature of the body in the next 4 minutes will be :</p>',
    '[{"id": "A", "text": "$\\frac{28}{3}{ }^{\\circ} \\mathrm{C}$"}, {"id": "B", "text": "$\\frac{56}{3}{ }^{\\circ} \\mathrm{C}$"}, {"id": "C", "text": "$\\frac{42}{3}{ }^{\\circ} \\mathrm{C}$"}, {"id": "D", "text": "$\\frac{14}{3}{ }^{\\circ} \\mathrm{C}$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>$$\begin{aligned}
& \frac{\mathrm{T}_2-\mathrm{T}_1}{\mathrm{t}}=\mathrm{K}\left[\mathrm{~T}_{\text {avg }}-\mathrm{T}_{\mathrm{s}}\right] \\
& \mathrm{T}_1=24^{\circ} \mathrm{C} ; \mathrm{T}_2=40^{\circ} \mathrm{C}, \mathrm{t}=4, \mathrm{~T}_{\mathrm{s}}=16^{\circ} \mathrm{C} \\
& \frac{40-24}{4}=\mathrm{K}[32-16] \\
& \mathrm{K}=\frac{4}{16}=\frac{1}{4} \\
& \text { Now } \frac{24-\mathrm{T}}{4}=\mathrm{K}\left[\frac{\mathrm{~T}+24}{2}-16\right] \\
& 24-\mathrm{T}=\frac{\mathrm{T}-16}{2}+16 \\
& \frac{3 \mathrm{~T}}{2}=28 \\
& \mathrm{~T}=\frac{56}{3} \mathrm{C}
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
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
    'ec3e60d8-ffc6-4bd9-838d-63a4e032c05a',
    'physics',
    '12',
    'Laws of Motion',
    'Friction Force',
    'medium',
    'single_correct',
    '<p>A block of mass 40 kg slides over a surface, when a mass of 4 kg is suspended through an inextensible massless string passing over frictionless pulley as shown below.</p>
<p>The coefficient of kinetic friction between the surface and block is 0.02. The acceleration of block is. (Given g = 10 ms<sup>$$-$$2</sup>.)</p>
<p> <img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l55fktpc/4f8be818-5ada-45af-ac03-4cbb21cbe447/8a2a1ef0-fadf-11ec-830f-2bceee3af987/file-1l55fktpd.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l55fktpc/4f8be818-5ada-45af-ac03-4cbb21cbe447/8a2a1ef0-fadf-11ec-830f-2bceee3af987/file-1l55fktpd.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 29th June Evening Shift Physics - Laws of Motion Question 72 English"></p>',
    '[{"id": "A", "text": "1 ms<sup>$$-$$2</sup>"}, {"id": "B", "text": "1/5 ms<sup>$$-$$2</sup>"}, {"id": "C", "text": "4/5 ms<sup>$$-$$2</sup>"}, {"id": "D", "text": "8/11 ms<sup>$$-$$2</sup>"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l5gh4osf/8fa79ab2-c295-4528-98d8-9100492cb6a4/3ad33800-00f2-11ed-ba34-71a54c393c2b/file-1l5gh4osg.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l5gh4osf/8fa79ab2-c295-4528-98d8-9100492cb6a4/3ad33800-00f2-11ed-ba34-71a54c393c2b/file-1l5gh4osg.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 29th June Evening Shift Physics - Laws of Motion Question 72 English Explanation"></p>
<p>$${f_{{r_{\max }}}} = \mu N$$</p>
<p>$$ = 0.02 \times 400$$</p>
<p>= 8 N</p>
<p>Let the acceleration is a as shown then.</p>
<p>$$40 - T = 4a$$</p>
<p>$$T - 8 = 40a$$</p>
<p>$$ \Rightarrow a = {{32} \over {44}} = {8 \over {11}}$$ m/s<sup>2</sup></p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'laws_of_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '38684185-a416-4e43-bb2d-4aaea4340345',
    'physics',
    '12',
    'Magnetic Properties of Matter',
    'Earth Magnetism',
    'medium',
    'single_correct',
    'A magnetic compass needle oscillates 30 times per minute at a place where the dip is 45<sup>o</sup>, and 40 times per
minute where the dip is 30<sup>o</sup>. If B<sub>1</sub> and B<sub>2</sub> are respectively the total magnetic field due to the earth at the two
places, then the ratio $${{{B_1}} \over {{B_2}}}$$ is best given by :',
    '[{"id": "A", "text": "1.8"}, {"id": "B", "text": "2.2"}, {"id": "C", "text": "0.7"}, {"id": "D", "text": "3.6"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$${f_1} = {1 \over {2\pi }}\sqrt {{{\mu {B_1}\cos {{45}^o}} \over I}} $$<br><br>
$${f_2} = {1 \over {2\pi }}\sqrt {{{\mu {B_2}\cos {{30}^o}} \over I}} $$<br><br>
$${{{f_1}} \over {{f_2}}} = {{{B_1}\cos {{45}^o}} \over {{B_1}\cos {{30}^o}}}$$<br><br>
$$ \therefore $$ $${{{B_1}} \over {{B_2}}} = 0.7$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'magnetic_properties_of_matter'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '696e4de7-fe58-4338-89cd-7c7e6d6105a3',
    'physics',
    '12',
    'Magnetics',
    'Moving Coil Galvanometer',
    'medium',
    'single_correct',
    'To know the resistance G of a galvanometer by half deflection method, a battery of emf V<sub>E</sub> and resistance R is used to deflect the galvanometer by angle $$\theta $$. If a shunt of resistance S is needed to get half deflection then G, R and S are related by the equation :',
    '[{"id": "A", "text": "2S (R + G) = RG"}, {"id": "B", "text": "S (R + G) = RG"}, {"id": "C", "text": "2S = G"}, {"id": "D", "text": "2G = S"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'When only galvanometer G is present with the resistance R, 
<br><br><img src="https://imagex.cdn.examgoal.net/jxZCrvW8MJpAor88S/PIon4ifk5WrCXq4uvtEME9DQ9XtmZ/YI1XNvGWUBzMfWVO7mXyNY/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2016 (Online) 9th April Morning Slot Physics - Magnetic Effect of Current Question 179 English Explanation 1">
<br><br>Here I<sub>G</sub> = $${{{V_E}} \over {R + G}}$$
<br><br>When shunt  of resistance S is connected parallel to galvanometer, 
<br><br><img src="https://imagex.cdn.examgoal.net/VDXDuzuZatvCMkogY/o3fKoHzBVoINrShc1SgQBUkKyL1cG/pxWfhBecslUp4qMlETKB4x/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2016 (Online) 9th April Morning Slot Physics - Magnetic Effect of Current Question 179 English Explanation 2">
<br><br>Here I = $${{{V_E}} \over {R + {{GS} \over {G + S}}}}$$
<br><br>As deflection is half, here current through galvanometer, 
<br><br>I<sub>G</sub>'' = $${{{{\rm I}_G}} \over 2}$$
<br><br>As both Galvanometer and shunt are parallel then potential are parallel then potential difference same. 
<br><br>$$ \therefore $$&nbsp;&nbsp;&nbsp;I<sub>G</sub>'' (G) = (I $$-$$ I<sub>G</sub><sup>''</sup>)S
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;I''<sub>G</sub> (G + S) = IS
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;$${{{{\rm I}_G}} \over 2}$$ = $${{{\rm I}S} \over {G + S}}$$
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;$${{{V_E}} \over {2\left( {R + G} \right)}}$$ = $${{{V_E}} \over {R + {{GS} \over {G + S}}}}$$ $$ \times $$ $${S \over {\left( {G + S} \right)}}$$
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;$${1 \over {2\left( {R + G} \right)}}$$  =  $${{G + S} \over {R(G + S) + GS}}$$  $$ \times $$ $${S \over {\left( {G + S} \right)}}$$
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;RG + RS + GS = 2RS + 2GS
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;RG = RS + GS
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp; S(R + G) = RG',
    4,
    -1,
    true,
    2016,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'magnetics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'f7d89bee-5ac8-48e4-ac11-d02f9f2aa322',
    'physics',
    '12',
    'Magnetics',
    'Amperes Circuital Law',
    'easy',
    'single_correct',
    '<p>A long straight wire with a circular cross-section having radius R, is carrying a steady current I. The current I is uniformly distributed across this cross-section. Then the variation of magnetic field due to current I with distance r (r < R) from its centre will be :</p>',
    '[{"id": "A", "text": "B $$\\propto$$ r<sup>2</sup>"}, {"id": "B", "text": "B $$\\propto$$ r"}, {"id": "C", "text": "B $$\\propto$$ $${1 \\over {{r^2}}}$$"}, {"id": "D", "text": "B $$\\propto$$ $${1 \\over {{r}}}$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>$$\int {\overline B \,.\,\overline {dl}  = {\mu _0}{I_{in}}} $$</p>
<p>$$ \Rightarrow B \times 2\pi r = {{{\mu _0}I} \over {\pi {R^2}}} \times \pi {r^2}$$</p>
<p>$$ \Rightarrow B \propto r$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'magnetics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '61121885-34b8-48fa-810b-81538f4a0e1c',
    'physics',
    '11',
    'Motion In A Plane',
    'Relative Motion In Two Dimension',
    'medium',
    'single_correct',
    'A person standing on an open ground hears the sound of a jet aeroplane, coming from north at an angle 60<sup>o</sup> with ground level. But he finds the aeroplane right vertically above his position. If v is the speed of sound, speed of the plane is :',
    '[{"id": "A", "text": "$${{\\sqrt 3 } \\over 2}$$v"}, {"id": "B", "text": "$${{2v} \\over {\\sqrt 3 }}$$"}, {"id": "C", "text": "v"}, {"id": "D", "text": "$${v \\over 2}$$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/wkj2kZD7A2Ftv74k6/DXRW80CY5Mz7oD2cCMZRKAkM3LlQO/zZmLmwYMaGJAc3ZQ2AQFgp/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 12th January Morning Slot Physics - Motion in a Plane Question 72 English Explanation">
<br>AB = V<sub>P</sub> $$ \times $$ t
<br><br>BC = Vt
<br><br>cos60<sup>o</sup> = $${{AB} \over {BC}}$$
<br><br>$${1 \over 2} = {{{V_P} \times t} \over {Vt}}$$
<br><br>V<sub>P</sub> = $${V \over 2}$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'motion_in_a_plane'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '56f07fd3-9802-47a4-b0b7-bffcc0d4e91c',
    'physics',
    '11',
    'Motion In A Straight Line',
    'Variable Acceleration Motion',
    'medium',
    'single_correct',
    'A particle is moving with speed v = b$$\sqrt x $$ along positive x-axis. Calculate the speed of the particle at
time t = $$\tau $$(assume that the particle is at origin t = 0)',
    '[{"id": "A", "text": "$${{{b^2}\\tau } \\over {\\sqrt 2 }}$$"}, {"id": "B", "text": "$${{b^2}\\tau }$$"}, {"id": "C", "text": "$${{{b^2}\\tau } \\over 2}$$"}, {"id": "D", "text": "$${{{b^2}\\tau } \\over 4}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'v = b$$\sqrt x $$
<br>$$ \Rightarrow $$ $${{dx} \over {dt}}$$ = b$$\sqrt x $$
<br>$$ \Rightarrow $$$$\int\limits_0^x {{{dx} \over {\sqrt x }}}  = \int\limits_0^t  {bdt} $$
<br>$$ \Rightarrow $$$$\left[ {{{{x^{ - {1 \over 2} + 1}}} \over { - {1 \over 2} + 1}}} \right]_0^x$$ = $$b\left[ t \right]_0^t$$
<br>$$ \Rightarrow $$ $${x^{{1 \over 2}}} = {{bt} \over 2}$$
<br>$$ \Rightarrow $$ $$x = {{{b^2}{t^2}} \over 4}$$
<br><br>$$ \therefore $$ v =  $${{dx} \over {dt}}$$ = $${{{b^2}} \over 4}$$ $$ \times $$ 2t = $${{{b^2}t} \over 2}$$
<br>When t = $$\tau $$ then speed v  $$ = {{{b^2}\tau } \over 2}$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'motion_in_a_straight_line'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b9e8a4b1-156e-4043-a068-37acb0de4a09',
    'physics',
    '12',
    'Properties of Matter',
    'Newtons Law Of Cooling',
    'easy',
    'single_correct',
    'A liquid in a beaker has temperature $$\theta \left( t \right)$$ at time $$t$$ and $${\theta _0}$$ is temperature of surroundings, then according to Newton''s law of cooling the correct graph between $${\log _e}\left( {\theta  - {\theta _0}} \right)$$ and $$t$$ is :',
    '[{"id": "A", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/gNUJubNTYxQMCvQ5V/i6wMxOjcHvg2vb2rVcYhGWkB0ByBh/acF0R1KsPTyRxUgPhAgDtl/image.png\" loading=\"lazy\" alt=\"AIEEE 2012 Physics - Properties of Matter Question 257 English Option 1\">"}, {"id": "B", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/n3fN2iWkA22978Rq0/HIn5op9NHQtTnaU5QEW6qf53dRNbq/jhNtNdC8ZpQYTRvRPiTGPj/image.png\" loading=\"lazy\" alt=\"AIEEE 2012 Physics - Properties of Matter Question 257 English Option 2\">"}, {"id": "C", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/N2JQOSmgNAHmWHIra/ZOmhxJWmmT4LaNAFpmtfqytnEx4Oc/Cf8LuzaiQiclzGD0MQ230O/image.png\" loading=\"lazy\" alt=\"AIEEE 2012 Physics - Properties of Matter Question 257 English Option 3\">"}, {"id": "D", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/G2LQb8xYjWGFH0i9R/pTzDGxcNousv27xtFUg1YHe3USE0A/Cdb4FtTfpfrjaobL92GJOu/image.png\" loading=\"lazy\" alt=\"AIEEE 2012 Physics - Properties of Matter Question 257 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Newton''s law of cooling
<br><br/>$${{d\theta } \over {dt}} =  - k\left( {\theta  - {\theta _0}} \right)$$
<br><br/>$$ \Rightarrow {{d\theta } \over {\left( {\theta  - {\theta _0}} \right)}} =  - kdt$$
<p>Intergrating
<br><br/>$$ \Rightarrow \log \left( {\theta  - {\theta _0}} \right) =  - kt + c$$
<br><br/>Which represents an equation of straight line. 
<br><br/>Thus the option $$(a)$$ is correct.</p>',
    4,
    -1,
    true,
    2012,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'properties_of_matter'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '403b3166-2008-4f65-8c4e-680de15588ed',
    'physics',
    '12',
    'Properties of Matter',
    'Mechanical Properties Of Solids',
    'medium',
    'single_correct',
    'A uniform heavy rod of weight 10 kg ms<sup>$$-$$2</sup>, cross-sectional area 100 cm<sup>2</sup> and length 20 cm is hanging from a fixed support. Young modulus of the material of the rod is 2 $$\times$$ 10<sup>11</sup> Nm<sup>$$-$$2</sup>. Neglecting the lateral contraction, find the elongation of rod due to its own weight.',
    '[{"id": "A", "text": "2 $$\\times$$ 10<sup>$$-$$9</sup> m"}, {"id": "B", "text": "5 $$\\times$$ 10<sup>$$-$$8</sup> m"}, {"id": "C", "text": "4 $$\\times$$ 10<sup>$$-$$8</sup> m"}, {"id": "D", "text": "5 $$\\times$$ 10<sup>$$-$$10</sup> m"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1ku8e5d54/9489ac05-83b9-4efe-813e-ec9b0162d08f/ebe2b480-22b9-11ec-92a0-35c33c2a328d/file-1ku8e5d55.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 31st August Morning Shift Physics - Properties of Matter Question 170 English Explanation"><br>We know,<br><br>$$\Delta l = {{WL} \over {2AY}}$$<br><br>$$\Delta l = {{10 \times 1} \over {2 \times 5}} \times 100 \times {10^{ - 4}} \times 2 \times {10^{11}}$$<br><br>$$\Delta l = {1 \over 2} \times {10^{ - 9}} = 5 \times {10^{ - 10}}$$ m<br><br>Option (d)',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'properties_of_matter'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '0d104ee2-abf0-41ef-9cb1-0345f69872d0',
    'physics',
    '12',
    'Properties of Matter',
    'Pressure Density Pascals Law And Archimedes Principle',
    'easy',
    'single_correct',
    '<p>A 400 g solid cube having an edge of length 10 cm floats in water. How much volume of the cube is outside the water?</p><p>(Given: density of water = 1000 kg m<sup>-3</sup>)</p>',
    '[{"id": "A", "text": "<p>400 cm<sup>3</sup></p>"}, {"id": "B", "text": "<p>600 cm<sup>3</sup></p>"}, {"id": "C", "text": "<p>1400 cm<sup>3</sup></p>"}, {"id": "D", "text": "<p>4000 cm<sup>3</sup></p>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>

First, let’s find the weight of the cube and set it equal to the upward buoyant force that keeps the cube floating.

</p>
<p>

<b>Step 1: Set up the equation for floating</b><br>

The weight of the cube (mass × gravity) is balanced by the buoyant force (density of water × volume of cube under water × gravity):<br>

$$\mathrm{Mg} = \mathrm{F}_{\mathrm{B}} \Rightarrow (400 \times 10^{-3}) = 10^3 \times \mathrm{V}_{\mathrm{d}}$$

</p>
<p>

<b>Step 2: Solve for the volume under water</b><br>

We find the volume of the cube under water ($$\mathrm{V}_\mathrm{d}$$):<br>

$$\mathrm{V}_{\mathrm{d}} = 400 \times 10^{-6}~\mathrm{m}^3$$

</p>
<p>

<b>Step 3: Find the total volume of the cube</b><br>

Each edge of the cube is 10 cm, so total volume is:<br>

$$ (10 \times 10^{-2})^3 $$

</p>
<p>

<b>Step 4: Find the volume outside water</b><br>

Subtract the volume under water from the total volume to get the volume outside water:<br>

$$(\text {Vol.})_{\text{outside}} = (10 \times 10^{-2})^3 - 400 \times 10^{-6}$$

</p>
<p>

Calculate the answer:<br>

$$= 600 \times 10^{-6}~\mathrm{m}^3 = 600~\mathrm{cm}^3$$

</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'properties_of_matter'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b4432d39-0273-4bea-a61e-72cdc3da66ff',
    'physics',
    '11',
    'Rotational Motion',
    'Moment Of Inertia',
    'medium',
    'single_correct',
    'A thin circular plate of mass M and radius R
has its density varying as $$\rho $$(r) = $$\rho $$<sub>0</sub>r with $$\rho $$<sub>0</sub> as
constant and r is the distance from its centre.
The moment of Inertia of the circular plate about
an axis perpendicular to the plate and passing
through its edge is I = aMR<sup>2</sup>. The value of the
coefficient a is :',
    '[{"id": "A", "text": "$${1 \\over 2}$$"}, {"id": "B", "text": "$${3 \\over 2}$$"}, {"id": "C", "text": "$${8 \\over 5}$$"}, {"id": "D", "text": "$${3 \\over 5}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$$M = \int\limits_0^R {{\rho _0}r \times 2\pi rdr = {{2\pi {\rho _0}{R^3}} \over 3}} $$<br><br>
$${I_C} = \int\limits_0^R {{\rho _0}r \times 2\pi rdr \times {r^2} = {{2\pi {\rho _0}{R^5}} \over 3}} $$<br><br>
$$ \therefore $$ $$I = {I_C} + M{R^2} = 2\pi {\rho _0}{R^5}\left( {{1 \over 3} + {1 \over 5}} \right)$$<br><br>
$$ \Rightarrow $$$${{16\pi {\rho _0}{R^5}} \over {15}} = {8 \over 5}\left[ {{2 \over 3}\pi {\rho _0}{R^3}} \right]{R^2} = {8 \over 5}M{R^2}$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'rotational_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c0ff48c8-1158-48ef-b531-751fdee78a15',
    'physics',
    '11',
    'Rotational Motion',
    'Combined Translational And Rotational Motion',
    'easy',
    'single_correct',
    '<p>A solid sphere is rolling without slipping on a horizontal plane. The ratio of the linear kinetic energy of the centre of mass of the sphere and rotational kinetic energy is :</p>',
    '[{"id": "A", "text": "$\\frac{3}{4}$"}, {"id": "B", "text": "$\\frac{4}{3}$"}, {"id": "C", "text": "$\\frac{5}{2}$"}, {"id": "D", "text": "$\\frac{2}{5}$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>$$\begin{aligned}
& \frac{\text { Linear KE }}{\text { Rotational K.E }}=\frac{\frac{1}{2} \mathrm{mv}_{\mathrm{cm}}^2}{\frac{1}{2} \mathrm{I} \omega^2} \\
& \frac{\mathrm{mv}_{\mathrm{cm}}^2}{\frac{2}{5} \mathrm{mR}^2 \omega^2}=\frac{5}{2} \quad(\mathrm{~V}=\omega \mathrm{R})
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'rotational_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b815d492-36df-46ca-9724-7dff59722741',
    'physics',
    '11',
    'Simple Harmonic Motion',
    'Simple Harmonic Motion',
    'medium',
    'single_correct',
    'The point A moves with a uniform speed along the circumference of a circle of radius 0.36 m and covers 30$$^\circ$$ in 0.1 s. The perpendicular projection ''P'' from ''A'' on the diameter MN represents the simple harmonic motion of ''P''. The restoration force per unit mass when P touches M will be :<br><br><img src="https://imagex.cdn.examgoal.net/1kltdzp7u/ba0305f2-0d37-4ba0-9074-69eedc9fade2/d1961ca0-7c17-11eb-b0eb-7d97e0807144/file-1kltdzp7v-223w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Evening Shift Physics - Simple Harmonic Motion Question 98 English">',
    '[{"id": "A", "text": "9.87 N"}, {"id": "B", "text": "0.49 N"}, {"id": "C", "text": "50 N"}, {"id": "D", "text": "100 N"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1kqzirbmm/4b2bb45e-817e-4ac1-a5df-c76e08fe597f/3f0d92f0-e274-11eb-9782-3b8945fb98d0/file-1kqzirbmn.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Evening Shift Physics - Simple Harmonic Motion Question 98 English Explanation"><br>The point a covers 30$$^\circ$$ in 0.1 sec.<br><br>Means $${\pi  \over 6}\buildrel {} \over
 \longrightarrow 0.1$$ sec.<br><br>$$1\buildrel {} \over
 \longrightarrow {{0.1} \over {{\pi  \over 6}}}$$<br><br>$$2\pi  \buildrel {} \over
 \longrightarrow {{0.1 \times 6} \over \pi } \times 2\pi $$<br><br>$$T = 1.2$$ sec.<br><br>We know that $$\omega  = {{2\pi } \over T}$$<br><br>$$\omega  = {{2\pi } \over {1.2}}$$<br><br>Restoration force $$(F) = m{\omega ^2}A$$<br><br>Then Restoration force per unit mass $$\left( {{F \over m}} \right) = {\omega ^2}A$$<br><br>$$\left( {{F \over m}} \right) = {\left( {{{2\pi } \over {1.2}}} \right)^2} \times 0.36$$<br><br>$$ \cong 9.87$$ N',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'simple_harmonic_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '932b60ca-ae6d-4d2e-ad00-fd018ca3b978',
    'physics',
    '12',
    'Units and Measurements',
    'General',
    'medium',
    'single_correct',
    'An example of a perfect diamagnet is a superconductor. This implies that when a superconductor is put in a magnetic field of intensity B, the magnetic field B<sub>s</sub> inside the superconductor will be such that :',
    '[{"id": "A", "text": "B<sub>s</sub> = $$-$$ B"}, {"id": "B", "text": "B<sub>s</sub> = 0"}, {"id": "C", "text": "B<sub>s</sub> = B"}, {"id": "D", "text": "B<sub>s</sub> &lt; B &nbsp;but&nbsp; B<sub>s</sub> $$ \\ne $$ 0"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<h3>Key Concept:</h3>
<ul>
<li><p>In a <strong>superconductor below its critical temperature</strong>, the <strong>Meissner effect</strong> occurs → it completely expels magnetic flux from its interior.  </p></li>
<li><p>This means the <strong>magnetic induction inside the superconductor</strong> is:  </p></li>
</ul>
<p>$ B_s = 0 $</p>
<p>regardless of the applied external field (until the critical field strength is exceeded).  </p>
<h3>Correct Option:</h3>
<p><strong>Option B: $ B_s = 0 $</strong> ✅</p>',
    4,
    -1,
    true,
    2014,
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
    '5f92d201-d543-42ba-8504-7899d13bea23',
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
    'c78bebbc-d41b-4647-8a4b-c40b3af2610c',
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
    '1267091e-ce31-4eb0-afb2-a6cb6b204180',
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
    '74e60ede-655c-4607-8324-f22d05698824',
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
    'af085b31-b1f0-4330-8544-973e87288a70',
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
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9e573c68-d9e1-49b6-8f55-1bb996470924',
    'chemistry',
    '12',
    'Alcohols Phenols and Ethers',
    'Properties Preparation And Uses Of Ethers',
    'easy',
    'single_correct',
    'An ethar is more volatile than an alcohol having the same molecular formula. This is due to',
    '[{"id": "A", "text": "alcohols having resonance structures"}, {"id": "B", "text": "inter-molecular hydrogen bonding in ethers"}, {"id": "C", "text": "inter-molecular hydrogen bonding in alcohols"}, {"id": "D", "text": "dipole characters of ethers"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Alcohol and ether are isomer with each other. So, with same molecular formula we can make ether  as well as alcohol. 
<br><br>For ex, 
<br><br>With molecular formula C<sub>2</sub>H<sub>6</sub>O 
<br><br>(1) $$\,\,\,$$  alcohol will be CH<sub>3</sub>CH<sub>2</sub> OH
<br><br>(2) $$\,\,\,$$ ether will be CH<sub>3</sub> $$-$$ O $$-$$ CH<sub>3</sub> 
<br><br>In Alcohol there is hydrogen bond and in Ether there is Van der walls force of attraction. 
<br><br>We know that H bond is stronger bond than van der walls force of attraction as the atoms of alcohol are strongly attached with each other by hydrogen bonding so tendency of vaporization of alcohol is less compared to ether.
<br><br>In alcohol inter-molecular hydrogen bonding look like this -
<br><br><img class="question-image" src="https://imagex.cdn.examgoal.net/hzWiFcmg3sGeMCPeN/GHZPl17wcQPhgE2NvhUdyz9hOQGNq/VIy3cXT94XVCecyegHr1TP/image.png" loading="lazy" alt="AIEEE 2003 Chemistry - Alcohols, Phenols and Ethers Question 170 English Explanation">',
    4,
    -1,
    true,
    2003,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'alcohols_phenols_and_ethers'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '8c2bb9e2-383c-415e-86c2-fed0a9209d2d',
    'chemistry',
    '12',
    'Alcohols Phenols and Ethers',
    'Properties Preparation And Uses Of Alcohols',
    'easy',
    'single_correct',
    'Given below are two statements : one is labelled as Assertion (A) and the other is labelled as Reason (R). <br><br>Assertion (A) : Treatment of bromine water with propene yields 1-bromopropan-2-ol.<br><br>Reason (R) : Attack of water on bromonium ion follows Markovnikov rule and results in 1-bromopropan-2-ol.<br><br>In the light of the above statements, choose the most appropriate answer from the options given below :',
    '[{"id": "A", "text": "Both (A) and (R) are true but (R) is not the correct explanation of (A)"}, {"id": "B", "text": "(A) is false but (R) is true"}, {"id": "C", "text": "Both (A) and (R) are true and (R) is the correct explanation of (A)"}, {"id": "D", "text": "(A) is true but (R) is false"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1ku9k9f80/4c772051-8085-4faf-afb8-ab3b2ea1347b/9c274500-235e-11ec-8f4b-fd0f0135951d/file-1ku9k9f81.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 31st August Morning Shift Chemistry - Alcohols, Phenols and Ethers Question 88 English Explanation"><br><br>Its IUPAC name 1-bromopropan-2-ol<br><br>A and R are true and (R) is the correct explanation of (A).',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'alcohols_phenols_and_ethers'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '363e73b7-e33f-4293-a91c-0949e648fec4',
    'chemistry',
    '12',
    'Aldehydes Ketones and Carboxylic ACids',
    'Preparation Properties And Uses Of Carboxylic Acids',
    'medium',
    'single_correct',
    '<img class="question-image" src="https://imagex.cdn.examgoal.net/kAfpR9KghkRh5XBGL/76c07uEAHu9IM4BbV09QJvJVInfLw/7YTzU3zqioJbsLAIm4tic2/image.png" loading="lazy" alt="AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English">',
    '[{"id": "A", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/GUXPBa838DGlo0K15/JWQwJVIYe1qJgVXeiKY7bbqVjiTz9/Rwlu6tIAGGNWDh0gnZd3gv/image.png\" loading=\"lazy\" alt=\"AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English Option 1\">"}, {"id": "B", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/JpArZ2scMpe2ICk5H/qAk5SpLbHzMfHR5zaWoTXIl4MjQxe/RfegBpiMqr3XMQNgqsTmbE/image.png\" loading=\"lazy\" alt=\"AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English Option 2\">"}, {"id": "C", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/B1GFY3jnQPjCasDLL/XFLUnX3hNCOzs6xdArpLp6uv2PMi9/XaMEfUMUFwwLe3JXKJybLh/image.png\" loading=\"lazy\" alt=\"AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English Option 3\">"}, {"id": "D", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/aTatB6yqPwihCeqLd/xgBW8iB2bsNqXpBAGXPE57ZfYIvF7/RSV8EgRi48P7ypOuTP8Rak/image.png\" loading=\"lazy\" alt=\"AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Aldehydic group gets oxidised to carboxylic group. Double bond breaks and carbon gets oxidised to carboxylic group.',
    4,
    -1,
    true,
    2002,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'aldehydes_ketones_and_carboxylic_acids'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '25668ded-fdee-4b05-9d58-c4b36a5b191d',
    'chemistry',
    '12',
    'Aldehydes Ketones and Carboxylic ACids',
    'Preparation Properties And Uses Of Carboxylic Acids',
    'hard',
    'single_correct',
    'An unsaturated hydrocarbon X absorbs two
hydrogen molecules on catalytic hydrogenation and also gives following reaction :
<img src="https://imagex.cdn.examgoal.net/7k9k2k5hl0695/15e10341-74ed-42fc-9bf6-8fdd74b79842/60cb8990-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl0696-320w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English">
B(3 - oxo - hexanedicarboxylic acid) X will be :-',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hl35hy/7945fd70-3aa0-4d26-a6be-cb23b3371447/b3a39360-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl35hz-262w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hl2xx6/7d118568-b193-471c-820f-46492fe3a5c2/adc929a0-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl2xx7-227w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hl3ess/09b3681a-28fb-4324-8e03-31f4862e52f9/bad2dec0-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl3est-275w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hl2otb/ced87a3d-ab1e-4646-b6c8-bf08468dd3bc/a6c02af0-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl2otc-229w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/7kd4dk67f83fp/d1fc6af7-73b5-43cb-99ad-f31ad58aa888/27338950-470c-11ea-b62d-51ccc5d4afb6/file-7kd4dk67f83fq-320w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Explanation">',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'aldehydes_ketones_and_carboxylic_acids'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'efa1090e-b9f6-434d-83bc-55d457d0a13f',
    'chemistry',
    '12',
    'Aldehydes Ketones and Carboxylic ACids',
    'Preparation Properties And Uses Of Carboxylic Acids',
    'medium',
    'single_correct',
    '<p>Identify the product formed (A and E)</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbh9cj/6362501c-ee92-432c-b16d-938f8990c1e7/9e69ae30-a77d-11ed-a5e3-ff739bca566a/file-1ldvbh9ck.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1ldvbh9cj/6362501c-ee92-432c-b16d-938f8990c1e7/9e69ae30-a77d-11ed-a5e3-ff739bca566a/file-1ldvbh9ck.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English"></p>',
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbkf6h/a6d0eef6-6f0b-442f-abdb-942fa2b91f5a/f6585c90-a77d-11ed-a5e3-ff739bca566a/file-1ldvbkf6i.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldvbkf6h/a6d0eef6-6f0b-442f-abdb-942fa2b91f5a/f6585c90-a77d-11ed-a5e3-ff739bca566a/file-1ldvbkf6i.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbk0a9/a9bec54e-bde9-429a-9c7b-b8a41687a862/ead6ce10-a77d-11ed-a5e3-ff739bca566a/file-1ldvbk0aa.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldvbk0a9/a9bec54e-bde9-429a-9c7b-b8a41687a862/ead6ce10-a77d-11ed-a5e3-ff739bca566a/file-1ldvbk0aa.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbj841/59234794-343b-4757-a9b2-ef1efc78a8a4/d5138410-a77d-11ed-a5e3-ff739bca566a/file-1ldvbj842.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldvbj841/59234794-343b-4757-a9b2-ef1efc78a8a4/d5138410-a77d-11ed-a5e3-ff739bca566a/file-1ldvbj842.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbi0dm/ffc897f8-ad76-48ed-92b5-69f10e6ee0c3/b34afca0-a77d-11ed-a5e3-ff739bca566a/file-1ldvbi0dn.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldvbi0dm/ffc897f8-ad76-48ed-92b5-69f10e6ee0c3/b34afca0-a77d-11ed-a5e3-ff739bca566a/file-1ldvbi0dn.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lebuo774/64fd019e-b02d-405b-b8f8-10372d397fb0/37429700-b095-11ed-b968-032108a3c0d6/file-1lebuo775.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lebuo774/64fd019e-b02d-405b-b8f8-10372d397fb0/37429700-b095-11ed-b968-032108a3c0d6/file-1lebuo775.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 80vh" alt="JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Explanation">',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'aldehydes_ketones_and_carboxylic_acids'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '8b27912f-88bb-4b36-84e4-4ce8bc8f5900',
    'chemistry',
    '12',
    'Basics of Organic Chemistry',
    'Stability Of Intermediate',
    'easy',
    'single_correct',
    'Due to the presence of an unpaired electron, free radicals are:',
    '[{"id": "A", "text": "Chemically reactive"}, {"id": "B", "text": "Chemically inactive"}, {"id": "C", "text": "Anions"}, {"id": "D", "text": "Cations"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Free radicals are electrically neutral, unstable and very reactive on account of the presence of odd electrons.',
    4,
    -1,
    true,
    2005,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'basics_of_organic_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e5f215a1-f99b-4797-924f-531886f5576c',
    'chemistry',
    '12',
    'Basics of Organic Chemistry',
    'Purification Of Organic Compounds',
    'easy',
    'single_correct',
    'Nitrogen can be estimated by Kjeldahl''s method for which of the following compound?',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/1kmlizmkd/cfbc1a0c-e64e-412f-907b-b69366aa5d23/4f5dfad0-8b91-11eb-8bc4-81bde7104d98/file-1kmlizmke.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Basics of Organic Chemistry Question 169 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://imagex.cdn.examgoal.net/1kmlizfxi/70583bd5-5fa4-45d5-b3e2-a18c2eefcb70/4a3de060-8b91-11eb-8bc4-81bde7104d98/file-1kmlizfxj.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Basics of Organic Chemistry Question 169 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://imagex.cdn.examgoal.net/1kmliz8yf/e2396538-237a-43ad-a8cb-c63ac1f90f32/44daa270-8b91-11eb-8bc4-81bde7104d98/file-1kmliz8yg.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Basics of Organic Chemistry Question 169 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://imagex.cdn.examgoal.net/1kmliz2x4/da7554a4-a370-49a9-aa19-54c28a97ac19/40311790-8b91-11eb-8bc4-81bde7104d98/file-1kmliz2x5.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Basics of Organic Chemistry Question 169 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Kjeldahl’s method can’t be used for compounds
containing nitro or azo groups.<br><br>
Also for compounds containing nitrogen in the ring,
Kjeldahl’s method can’t be used.',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'basics_of_organic_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c7263fdc-71f1-4cd0-9cba-b6e83d8a4c19',
    'chemistry',
    '12',
    'Basics of Organic Chemistry',
    'Stability Of Intermediate',
    'easy',
    'single_correct',
    '<p>The correct stability order of carbocations is',
    '[{"id": "A", "text": "$$\\left(\\mathrm{CH}_3\\right)_3 \\mathrm{C}^{+}>\\mathrm{CH}_3-\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_2>\\left(\\mathrm{CH}_3\\right)_2 \\stackrel{+}{\\mathrm{C}} \\mathrm{H}>\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_3$$"}, {"id": "B", "text": "$$\\left(\\mathrm{CH}_3\\right)_3 \\stackrel{+}{\\mathrm{C}}>\\left(\\mathrm{CH}_3\\right)_2 \\stackrel{+}{\\mathrm{C}} \\mathrm{H}>\\mathrm{CH}_3-\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_2>\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_3$$"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/6y3zli1lshjogrd/77382cda-3454-41b8-9f58-dcc3a06d0898/f56d93a0-c8e1-11ee-8501-bb04786aa212/file-6y3zli1lshjogre.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/6y3zli1lshjogrd/77382cda-3454-41b8-9f58-dcc3a06d0898/f56d93a0-c8e1-11ee-8501-bb04786aa212/file-6y3zli1lshjogre.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2024 (Online) 30th January Evening Shift Chemistry - Basics of Organic Chemistry Question 69 English Option 3\">"}, {"id": "D", "text": "$$\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_3>\\left(\\mathrm{CH}_3\\right)_2 \\stackrel{+}{\\mathrm{C}} \\mathrm{H}>\\mathrm{CH}_3-\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_2>\\left(\\mathrm{CH}_3\\right)_3 \\stackrel{+}{\\mathrm{C}}$$</p>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>More no. of hyperconjugable Hydrogens, more stable is the carbocations.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'basics_of_organic_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '580f1b5a-d136-4f73-8bd8-76149641e333',
    'chemistry',
    '12',
    'Biomolecules',
    'Carbohydrates',
    'medium',
    'single_correct',
    'The <b>incorrect</b> statement among the following is :',
    '[{"id": "A", "text": "$$\\alpha $$-D-glucose and $$\\beta $$-D-glucose are anomers."}, {"id": "B", "text": "$$\\alpha $$-D-glucose and $$\\beta $$-D-glucose are enantiomers."}, {"id": "C", "text": "Cellulose is a straight chain polysaccharide made up of only $$\\beta $$-D-glucose units."}, {"id": "D", "text": "The penta acetate of glucose does not react with hydroxyl amine"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '$$\alpha $$-D-glucose and $$\beta $$-D-glucose are anomers not enantiomers.',
    4,
    -1,
    true,
    2017,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'biomolecules'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5f261503-3d6b-4e96-873f-cc1db66a45a0',
    'chemistry',
    '12',
    'Biomolecules',
    'Vitamins And Nucleic Acids',
    'medium',
    'single_correct',
    '<p>All structures given below are of vitamin C. Most stable of them is :</p>',
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldob78i5/a55e3ea3-80d8-4b80-9c79-a8f96a03110f/0b1f97d0-a3a3-11ed-ba58-bbbbd3e496d9/file-1ldob78i6.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldob78i5/a55e3ea3-80d8-4b80-9c79-a8f96a03110f/0b1f97d0-a3a3-11ed-ba58-bbbbd3e496d9/file-1ldob78i6.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldob6n5a/0d434d16-477c-4ec5-886f-2d43eac517d4/faa01ce0-a3a2-11ed-ba58-bbbbd3e496d9/file-1ldob6n5b.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldob6n5a/0d434d16-477c-4ec5-886f-2d43eac517d4/faa01ce0-a3a2-11ed-ba58-bbbbd3e496d9/file-1ldob6n5b.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldob6a25/70f35c95-1556-4a31-9fba-430f3df893c0/f08411d0-a3a2-11ed-810c-6704daa1bcc1/file-1ldob6a26.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldob6a25/70f35c95-1556-4a31-9fba-430f3df893c0/f08411d0-a3a2-11ed-810c-6704daa1bcc1/file-1ldob6a26.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldob5tqb/494d0747-621f-4894-b2eb-05939b9e53aa/e3e70130-a3a2-11ed-810c-6704daa1bcc1/file-1ldob5tqc.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldob5tqb/494d0747-621f-4894-b2eb-05939b9e53aa/e3e70130-a3a2-11ed-810c-6704daa1bcc1/file-1ldob5tqc.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1leu5kppv/fde4ac0d-4491-4256-8569-2153e28fdae3/f670c830-baa5-11ed-905b-c3b697a31028/file-1leu5kppw.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1leu5kppv/fde4ac0d-4491-4256-8569-2153e28fdae3/f670c830-baa5-11ed-905b-c3b697a31028/file-1leu5kppw.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 60vh" alt="JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Explanation">',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'biomolecules'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2ae9a669-0647-48dd-8d97-e02c400ee257',
    'chemistry',
    '12',
    'Chemical Bonding and Molecular Structure',
    'Hybridization And Vsepr Theory',
    'easy',
    'single_correct',
    'The structure of IF<sub>7</sub> is :',
    '[{"id": "A", "text": "trigonal bipyramid"}, {"id": "B", "text": "octahedral"}, {"id": "C", "text": "pentagonal bipyramid"}, {"id": "D", "text": "square pyramid"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'The structure of IF<sub>7</sub> pentagonal bipyramidal having
sp<sup>3</sup>d<sup>3</sup>
 hybridisation.
<br><picture><source media="(max-width: 320px)" srcset="https://imagex.cdn.examgoal.net/3xmhtm2xjkbg0gzc5/56613c99-0646-4663-9713-a319105263ca/981e9150-aec2-11ea-9207-bfdf7589d371/file-3xmhtm2xjkbg0gzc6-320w.jpg"><source media="(max-width: 500px)" srcset="https://imagex.cdn.examgoal.net/3xmhtm2xjkbg0gzc5/56613c99-0646-4663-9713-a319105263ca/981e9150-aec2-11ea-9207-bfdf7589d371/file-3xmhtm2xjkbg0gzc6-500w.jpg"><img src="https://imagex.cdn.examgoal.net/3xmhtm2xjkbg0gzc5/56613c99-0646-4663-9713-a319105263ca/981e9150-aec2-11ea-9207-bfdf7589d371/file-3xmhtm2xjkbg0gzc6-680w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="AIEEE 2011 Chemistry - Chemical Bonding &amp; Molecular Structure Question 219 English Explanation"></picture>',
    4,
    -1,
    true,
    2011,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_bonding_and_molecular_structure'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9dff0c15-0810-4b0f-a121-5b4ae45c074d',
    'chemistry',
    '12',
    'Chemical Bonding and Molecular Structure',
    'Molecular Orbital Theory',
    'medium',
    'single_correct',
    '<p>Consider the ions/molecule</p>
<p>O$$_2^ + $$, O<sub>2</sub>, O$$_2^ - $$, O$$_2^ {2-} $$</p>
<p>For increasing bond order the correct option is :</p>',
    '[{"id": "A", "text": "O$$_2^ {2-} $$ < O$$_2^ - $$ < O<sub>2</sub> < O$$_2^ + $$"}, {"id": "B", "text": "O$$_2^ - $$ < O$$_2^ {2-} $$ < O<sub>2</sub> < O$$_2^ + $$"}, {"id": "C", "text": "O$$_2^ - $$ < O$$_2^ {2-} $$ < O$$_2^ + $$ < O<sub>2</sub>"}, {"id": "D", "text": "O$$_2^ - $$ < O$$_2^ + $$ < O$$_2^ {2-} $$ < O<sub>2</sub>"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<b><u>Note</u> :</b> 
<br><br>(1) $$\,\,\,\,$$ Bond strength $$ \propto $$ Bond order 
<br><br>(2) $$\,\,\,\,$$ Bond length $$ \propto $$ $${1 \over {Bond\,\,order}}$$
<br><br>(3) $$\,$$ Bond order $$ = {1 \over 2}$$ [N<sub>b </sub> $$-$$ N<sub>a</sub>] 
<br><br>N<sub>b</sub> = Number of electrons in bonding molecular orbital 
<br><br>N<sub>a</sub> $$=$$ Number of electrons in anti bonding molecular orbital 
<br><br>(4) $$\,\,\,\,$$ upto 14 electrons, molecular orbital configuration is 
<br><br><img class="question-image" src="https://imagex.cdn.examgoal.net/BCZnqLDgpImUxYpB2/Zg1gK5Q1xLj1n6tAiUJqhAxB3rbvD/vRErIfl3wacw1pMY708M3N/image.png" loading="lazy" alt="JEE Main 2022 (Online) 26th June Morning Shift Chemistry - Chemical Bonding &amp; Molecular Structure Question 124 English Explanation 1">
<br><br>Here N<sub>a</sub> = Anti bonding electron $$=$$ 4 and N<sub>b</sub> = 10
<br><br>(5) $$\,\,\,\,$$ After 14  electrons to 20 electrons molecular orbital configuration is - - -
<br><br><img class="question-image" src="https://imagex.cdn.examgoal.net/3716soaUWwytJgHTQ/oPYd44rDhbA5TN79TWk4x4Gr9ndzq/EsglJdUOMHR8rQaoVR1KAZ/image.png" loading="lazy" alt="JEE Main 2022 (Online) 26th June Morning Shift Chemistry - Chemical Bonding &amp; Molecular Structure Question 124 English Explanation 2">
<br><br>Here N<sub>a</sub> = 10
<br><br>and N<sub>b</sub> = 10
<br><br>In O atom 8 electrons present, so in O<sub>2</sub>,  8 $$ \times $$ 2 = 16 electrons present. 
<br><br>Then in $$O_2^ + $$ no of electrons = 15 
<br><br>in $$O_2^ - $$  no of electrons = 17
<br><br>in $$O_2^{2 - }$$ no of electrons = 18
<br><br>$$\therefore\,\,\,\,$$ Molecular orbital configuration of O<sub>2</sub> (16 electrons) is 
<br><br>$${\sigma _{1{s^2}}}\,\,\sigma _{1{s^2}}^ * \,$$ $${\sigma _{2{s^2}}}\,\,\sigma _{2{s^2}}^ * \,$$ $${\sigma _{2p_z^2}}\,\,{\pi _{2p_x^2}} = {\pi _{2p_y^2}}\,\,\pi _{2p_x^1}^ * \,\, = \pi _{2p_y^1}^ * $$
<br><br>$$\therefore\,\,\,\,$$N<sub>a</sub> = 6
<br><br>N<sub>b</sub> = 10
<br><br>$$\therefore\,\,\,\,$$ BO = $${1 \over 2}\left[ {10 - 6} \right] = 2$$
<br><br>Molecular orbital configuration of O$$_2^ + $$ (15 electrons) is 
<br><br>$${\sigma _{1{s^2}}}\,\sigma _{1{s^2}}^ * \,{\sigma _{2{s^2}}}\,\sigma _{2{s^2}}^ * \,{\sigma _{2p_z^2}}\,{\pi _{2p_x^2}}\, = \,{\pi _{2p_y^2}}\,\pi _{2p_x^1}^ * \, = \,\pi _{2p_y^o}^ * $$
<br><br>$$\therefore\,\,\,\,$$ N<sub>b</sub> = 10
<br><br>N<sub>a</sub> = 5 
<br><br>$$\therefore\,\,\,\,$$  BO = $${1 \over 2}\left[ {10 - 5} \right]$$ = 2.5
<br><br>Molecular orbital configuration of $$O_2^ - $$ (17 electrons) is 
<br><br>$${\sigma _{1{s^2}}}\,\sigma _{1{s^2}}^ * \,{\sigma _{2{s^2}}}\,\sigma _{2{s^2}}^ * \,{\sigma _{2p_z^2}}\,{\pi _{2p_x^2}}\, = \,{\pi _{2p_y^2}}\,\pi _{2p_x^2}^ * \, = \,\pi _{2p_y^1}^ * $$
<br><br>$$\therefore\,\,\,\,$$ N<sub>b</sub> = 10
<br><br>N<sub>a</sub> = 7
<br><br>$$\therefore\,\,\,\,$$ BO = $${1 \over 2}\left[ {10 - 7} \right]$$ = 1.5
<br><br>Molecular orbital configuration of O $$_2^{2 - }$$ (18 electrons) is 
<br><br>$${\sigma _{1{s^2}}}\,\sigma _{1{s^2}}^ * \,{\sigma _{2{s^2}}}\,\sigma _{2{s^2}}^ * \,{\sigma _{2p_z^2}}\,{\pi _{2p_x^2}}\, = \,{\pi _{2p_y^2}}\,\pi _{2p_x^2}^ * \, = \,\pi _{2p_y^2}^ * $$
<br><br>$$\therefore\,\,\,\,$$ N<sub>b</sub> = 10
<br><br>N<sub>a</sub> = 8
<br><br>$$\therefore\,\,\,\,$$ BO = $${1 \over 2}$$ [ 10 $$-$$ 8] = 1
<br><br> So, correct order of Bond order is
<br><br>$$O_2^{2 - } &lt; O_2^ -  &lt; {O_2} &lt; O_2^ + $$',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_bonding_and_molecular_structure'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '54abc62b-d26c-4d4f-af32-21a9c1f0e31e',
    'chemistry',
    '11',
    'Chemical Equilibrium',
    'Le Chateliers Principle And Factors Affecting Chemical Equilibrium',
    'easy',
    'single_correct',
    'Consider the reaction equilibrium<br>
2 SO<sub>2</sub> (g) + O<sub>2</sub> (g) $$\leftrightharpoons$$ 2 SO<sub>3</sub> (g); $$\Delta H^o$$ = -198 kJ<br>
One the basis of Le Chatelier''s principle, the condition favourable for the forward reaction is :',
    '[{"id": "A", "text": "increasing temperature as well as pressure"}, {"id": "B", "text": "lowering the temperature and increasing the pressure"}, {"id": "C", "text": "any value of temperature and pressure"}, {"id": "D", "text": "lowering temperature as well as pressure"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Due to exothermicity of reaction low or optimum temperature will be required. Since $$3$$ moles are changing to $$2$$ moles.
<br><br>$$\therefore$$ High pressure will be required.',
    4,
    -1,
    true,
    2003,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_equilibrium'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'f659d4b0-88d9-4437-82ac-784f09094cbd',
    'chemistry',
    '12',
    'Chemical Kinetics and Nuclear Chemistry',
    'Nuclear Chemistry',
    'easy',
    'single_correct',
    'Hydrogen bomb is based on the principle of',
    '[{"id": "A", "text": "Nuclear fission"}, {"id": "B", "text": "Natural radioactivity"}, {"id": "C", "text": "Nuclear fusion"}, {"id": "D", "text": "Artificial radioactivity"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>Option C</p>
<p>Nuclear fusion</p>
<p>Explanation :</p>
<p>A hydrogen bomb, also known as a thermonuclear bomb, uses the principle of nuclear fusion. In a fusion reaction, two lighter atomic nuclei combine to form a heavier nucleus, and a substantial amount of energy is released in the process. In the case of a hydrogen bomb, isotopes of hydrogen (such as deuterium and tritium) fuse together to form helium, releasing a large amount of energy.</p>
<p>It&#39;s worth noting that a hydrogen bomb usually involves a two-stage process. The first stage is a fission bomb (like those used in Hiroshima and Nagasaki) that creates the conditions necessary for the fusion reaction in the second stage. Despite this, the majority of the energy in a hydrogen bomb comes from fusion, which is why it is categorized as a fusion weapon.</p>',
    4,
    -1,
    true,
    2005,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_kinetics_and_nuclear_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '87cfa9ad-7b3d-4c5e-811b-a5340ec635ca',
    'chemistry',
    '12',
    'Chemical Kinetics and Nuclear Chemistry',
    'Integrated Rate Law Equations',
    'medium',
    'single_correct',
    '<p>Reaction $\mathrm{A}(\mathrm{g}) \rightarrow 2 \mathrm{~B}(\mathrm{~g})+\mathrm{C}(\mathrm{g})$ is a first order reaction. It was started with pure A</p>
<p><style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 432px"><colgroup>
<col style="width: 213px">
<col style="width: 219px">
</colgroup>
<thead>
  <tr>
    <th class="tg-7btt">t/min</th>
    <th class="tg-7btt">Pressure of system at time t/mm Hg</th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-0pky">10</td>
    <td class="tg-0pky">160</td>
  </tr>
  <tr>
    <td class="tg-0pky">$\infty$</td>
    <td class="tg-0pky">240</td>
  </tr>
</tbody>
</table></p>
<p>Which of the following option is incorrect?</p>',
    '[{"id": "A", "text": "Initial pressure of A is 80 mm Hg"}, {"id": "B", "text": "The reaction never goes to completion"}, {"id": "C", "text": "Partial pressure of A after 10 minute is 40 mm Hg"}, {"id": "D", "text": "Rate constant of the reaction is $1.693 \\mathrm{~min}^{-1}$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9p1e1or/f82dc3bb-7f57-4347-95b2-5fb9016a974f/62013db0-1d90-11f0-8528-f36c523d5a7b/file-jaoe38c1m9p1e1os.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/jaoe38c1m9p1e1or/f82dc3bb-7f57-4347-95b2-5fb9016a974f/62013db0-1d90-11f0-8528-f36c523d5a7b/file-jaoe38c1m9p1e1os.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0 auto; max-height: 40vh; vertical-align: baseline" alt="JEE Main 2025 (Online) 7th April Morning Shift Chemistry - Chemical Kinetics and Nuclear Chemistry Question 8 English Explanation"></p>
<p>$$\begin{aligned}
&amp;\begin{aligned}
&amp; \mathrm{P}_{\infty}=3 \mathrm{P}_0=240 \\
&amp; \quad \mathrm{P}_0=80 \mathrm{~mm} \text { of } \mathrm{Hg} \\
&amp; \mathrm{Kt}=\ln \left(\frac{\mathrm{P}_{\infty}-\mathrm{P}_0}{\mathrm{P}_{\infty}-\mathrm{Pt}}\right) \\
&amp; \mathrm{K} \times 10=\ln \left(\frac{240-80}{240-160}\right) \\
&amp; \mathrm{K}=\frac{\ln 2}{10}=0.0693 \mathrm{~min}^{-1}
\end{aligned}\\
&amp;\text { Option (3) is incorrect }
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_kinetics_and_nuclear_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '404dc4dc-cc1c-4185-9fb1-ff1c8a99f2f8',
    'chemistry',
    '12',
    'Chemistry In Everyday Life',
    'Chemicals In Medicines',
    'easy',
    'single_correct',
    '<p>Match List I with List II</p>
<p><style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 690px">
<colgroup>
<col style="width: 75px">
<col style="width: 239px">
<col style="width: 75px">
<col style="width: 301px">
</colgroup>
<thead>
  <tr>
    <th class="tg-7btt"></th>
    <th class="tg-7btt">LIST I<br>(Compound)</th>
    <th class="tg-7btt"></th>
    <th class="tg-7btt">LIST II<br>(Uses)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-c3ow">A.</td>
    <td class="tg-0pky">Idoform</td>
    <td class="tg-c3ow">I.</td>
    <td class="tg-0pky">Fire extinguisher  </td>
  </tr>
  <tr>
    <td class="tg-c3ow">B.	</td>
    <td class="tg-0pky">Carbon tetrachloride</td>
    <td class="tg-c3ow">II.</td>
    <td class="tg-0pky">Insecticide</td>
  </tr>
  <tr>
    <td class="tg-c3ow">C.</td>
    <td class="tg-0pky">CFC</td>
    <td class="tg-c3ow">III.</td>
    <td class="tg-0pky">Antiseptic</td>
  </tr>
  <tr>
    <td class="tg-c3ow">D.</td>
    <td class="tg-0pky">DDT</td>
    <td class="tg-c3ow">IV.</td>
    <td class="tg-0pky">Refrigerants</td>
  </tr>
</tbody>
</table></p>
<p>Choose the correct answer from the options given below:</p>',
    '[{"id": "A", "text": "A-II, B-IV, C-I, D-III"}, {"id": "B", "text": "A-III, B-I, C-IV, D-II"}, {"id": "C", "text": "A-III, B-II, C-IV, D-I"}, {"id": "D", "text": "A-I, B-II, C-III, D-IV"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>The matching for each compound with its respective use is based on their known applications:</p>

<ul>

<li><strong>Iodoform</strong> is a compound known for its application as an <strong>antiseptic</strong>. It has been used historically in medical applications for the treatment of wounds due to its antimicrobial properties. Hence, Iodoform matches with <strong>III. Antiseptic</strong>.</li>

<li><strong>Carbon Tetrachloride</strong> was widely used as a <strong>fire extinguishing agent</strong> due to its property of being a non-flammable liquid that can suffocate fires. However, its use has been significantly reduced in most countries because of its adverse health and environmental impacts. Carbon Tetrachloride matches with <strong>I. Fire extinguisher</strong>.</li>

<li><strong>CFCs (Chlorofluorocarbons)</strong> have been used as <strong>refrigerants</strong> in air conditioning and refrigeration systems. Their capacity to absorb heat makes them suitable for this purpose. Unfortunately, their harmful effects on the ozone layer have led to their phase-out under global agreements like the Montreal Protocol. Therefore, CFC matches with <strong>IV. Refrigerants</strong>.</li>

<li><strong>DDT (Dichlorodiphenyltrichloroethane)</strong> is known for its use as an <strong>insecticide</strong>. It was widely used to control mosquito populations and other agricultural pests. However, due to environmental and health concerns, its use has been banned or severely restricted in many countries. DDT matches with <strong>II. Insecticide</strong>.</li>

</ul>

<p>Thus, the correct option is <strong>Option B</strong>: A-III, B-I, C-IV, D-II.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemistry_in_everyday_life'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7e811fc9-a7bf-4334-8d52-de66ee6ea7b2',
    'chemistry',
    '12',
    'Compounds Containing Nitrogen',
    'Aliphatic Amines',
    'easy',
    'single_correct',
    'Primary, secondary and tertiary amines can be separated using:',
    '[{"id": "A", "text": "Chloroform and KOH"}, {"id": "B", "text": "Acetyl amide"}, {"id": "C", "text": "Benzene sulphonic acid"}, {"id": "D", "text": "para-Toluene sulphonyl chloride"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1kn1sa4pg/a8384e06-ff68-4761-a5ac-a989c74f1b3c/30067140-9482-11eb-a405-cf12956abac3/file-1kn1sa4ph.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Compounds Containing Nitrogen Question 146 English Explanation">',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'compounds_containing_nitrogen'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1fe74d62-fb5b-404a-abe3-454524e2d2c5',
    'chemistry',
    '12',
    'Compounds Containing Nitrogen',
    'Aliphatic Amines',
    'easy',
    'single_correct',
    '<p>In the reaction given below</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz6s7a/3196aa53-65fc-4596-a96a-3331c92ae83a/1110de60-e07f-11ed-baf9-87204e3a7c88/file-1lgqz6s7b.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lgqz6s7a/3196aa53-65fc-4596-a96a-3331c92ae83a/1110de60-e07f-11ed-baf9-87204e3a7c88/file-1lgqz6s7b.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English"></p>
<p>''B'' is</p>',
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz8mft/74dfe0bf-9bf9-4b80-a308-b4a106dd96ed/443b7890-e07f-11ed-baf9-87204e3a7c88/file-1lgqz8mfu.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1lgqz8mft/74dfe0bf-9bf9-4b80-a308-b4a106dd96ed/443b7890-e07f-11ed-baf9-87204e3a7c88/file-1lgqz8mfu.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz8xg9/f504d74c-46ab-4db9-9a5e-dee8c0369752/4cbd3490-e07f-11ed-baf9-87204e3a7c88/file-1lgqz8xga.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1lgqz8xg9/f504d74c-46ab-4db9-9a5e-dee8c0369752/4cbd3490-e07f-11ed-baf9-87204e3a7c88/file-1lgqz8xga.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz98jy/8980d327-1352-488f-825d-6c2b9b4b5cff/5550cae0-e07f-11ed-baf9-87204e3a7c88/file-1lgqz98jz.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1lgqz98jy/8980d327-1352-488f-825d-6c2b9b4b5cff/5550cae0-e07f-11ed-baf9-87204e3a7c88/file-1lgqz98jz.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz9joa/8adf3be4-345b-4f19-af40-b644e63d0f8b/5de7e3a0-e07f-11ed-baf9-87204e3a7c88/file-1lgqz9job.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1lgqz9joa/8adf3be4-345b-4f19-af40-b644e63d0f8b/5de7e3a0-e07f-11ed-baf9-87204e3a7c88/file-1lgqz9job.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lh1pt63p/d7289697-e7c7-4a55-908e-4dc1cbb54058/03751c60-e667-11ed-b7c9-957e12d0338a/file-1lh1pt63q.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lh1pt63p/d7289697-e7c7-4a55-908e-4dc1cbb54058/03751c60-e667-11ed-b7c9-957e12d0338a/file-1lh1pt63q.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 70vh" alt="JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Explanation">',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'compounds_containing_nitrogen'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'f837ac8d-c437-4883-8942-f50f6fcc3baf',
    'chemistry',
    '12',
    'Coordination Compounds',
    'Isomerism Of Coordination Compounds',
    'easy',
    'single_correct',
    'The number of geometric isomers that can exist for square planar [Pt (Cl) (py) (NH<sub>3</sub>) (NH<sub>2</sub>OH)]+ is (py = pyridine) :',
    '[{"id": "A", "text": "3"}, {"id": "B", "text": "4"}, {"id": "C", "text": "6"}, {"id": "D", "text": "2"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Square planar complexes of type $$M\left[ {ABCD} \right]\,$$ form three isomers. Their position may be obtained by fixing the position of one ligand and placing at the <i>trans</i> position any one of the remaining three ligands one by one. 
<br><br><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l91otovx/97be41e5-a979-4a4c-b9f6-f8f3ec15c075/6dce7ed0-4801-11ed-8757-0f869593f41f/file-1l91otovy.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l91otovx/97be41e5-a979-4a4c-b9f6-f8f3ec15c075/6dce7ed0-4801-11ed-8757-0f869593f41f/file-1l91otovy.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 60vh" alt="JEE Main 2015 (Offline) Chemistry - Coordination Compounds Question 284 English Explanation">',
    4,
    -1,
    true,
    2015,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'coordination_compounds'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '45afb2a7-fb57-4630-be28-9b6c9341faf7',
    'chemistry',
    '12',
    'Coordination Compounds',
    'Crystal Field Theory Cft',
    'medium',
    'single_correct',
    'The correct order of intensity of colors of the compounds is :',
    '[{"id": "A", "text": "$${[Ni{(CN)_4}]^{2 - }} &gt; {[NiC{l_4}]^{2 - }} &gt; {[Ni{({H_2}O)_6}]^{2 + }}$$"}, {"id": "B", "text": "$${[Ni{({H_2}O)_6}]^{2 + }} &gt; {[NiC{l_4}]^{2 - }} &gt; {[Ni{(CN)_4}]^{2 - }}$$"}, {"id": "C", "text": "$${[NiC{l_4}]^{2 - }} &gt; {[Ni{({H_2}O)_6}]^{2 + }} &gt; {[Ni{(CN)_4}]^{2 - }}$$"}, {"id": "D", "text": "$${[NiC{l_4}]^{2 - }} &gt; {[Ni{(CN)_4}]^{2 - }} &gt; {[Ni{({H_2}O)_6}]^{2 + }}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Correct order of intensity of colours of the compounds is<br/><br/>[NiCl<sub>4</sub>]<sup>2$$-$$</sup> > [Ni(H<sub>2</sub>O)<sub>6</sub>]<sup>2+</sup> > [Ni(CN)<sub>4</sub>]<sup>2$$-$$</sup><br/><br/>Ni is in +2 oxidation state in all complexes. The intensity of colour depends on the strength of the ligand attached with the central metal atom because more strong ligand more splitting energy, less is intensity of colour. Strength of ligand is in the order CN<sup>$$-$$</sup> > H<sub>2</sub>O > Cl<sup>$$-$$</sup>.<br/><br/>Splitting energy order [NiCl<sub>4</sub>]<sup>2$$-$$</sup> < [Ni(H<sub>2</sub>O)<sub>6</sub>]<sup>2+</sup> < [Ni(CN)<sub>4</sub>]<sup>2$$-$$</sup><br/><br/>$$\therefore$$ Intensity of colour of compound<br/><br/>[NiCl<sub>4</sub>]<sup>2$$-$$</sup> > [Ni(H<sub>2</sub>O)<sub>6</sub>]<sup>2+</sup> > [Ni(CN)<sub>4</sub>]<sup>2$$-$$</sup>',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'coordination_compounds'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7f714442-5351-41cd-abe1-2cbfc23bced6',
    'chemistry',
    '12',
    'Coordination Compounds',
    'Application Of Coordination Compound And Organometallic Compounds',
    'medium',
    'single_correct',
    '<p>Choose the correct statements from the following :</p>
<p>(A) Ethane-1, 2-diamine is a chelating ligand.</p>
<p>(B) Metallic aluminium is produced by electrolysis of aluminium oxide in presence of cryolite.</p>
<p>(C) Cyanide ion is used as ligand for leaching of silver.</p>
<p>(D) Phosphine act as a ligand in Wilkinson catalyst.</p>
<p>(E) The stability constants of $$\mathrm{Ca}^{2+}$$ and $$\mathrm{Mg}^{2+}$$ are similar with EDTA complexes.</p>
<p>Choose the correct answer from the options given below :</p>',
    '[{"id": "A", "text": "(B), (C), (E) only"}, {"id": "B", "text": "(A), (D), (E) only"}, {"id": "C", "text": "(C), (D), (E) only"}, {"id": "D", "text": "(A), (B), (C) only"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p>Let''s examine each statement for correctness:</p>

<p>(A) Ethane-1, 2-diamine is a chelating ligand.</p>
<p>Ethane-1,2-diamine, also known as ethylenediamine (en), has two nitrogen atoms that can coordinate to a metal ion, forming a ring structure in the process. Because it can form these two bonds, it can "chelate" a metal ion, thus it is correctly identified as a chelating ligand.</p>

<p>(B) Metallic aluminium is produced by electrolysis of aluminium oxide in presence of cryolite.</p>
<p>Aluminium is indeed produced industrially by the Hall-Héroult process, which involves the electrolysis of aluminium oxide ($$\mathrm{Al_2O_3}$$) dissolved in molten cryolite ($$\mathrm{Na_3AlF_6}$$). Cryolite acts as a solvent for the aluminium oxide and reduces the melting point of the mixture, thus decreasing energy consumption during electrolysis. This statement is correct.</p>

<p>(C) Cyanide ion is used as a ligand for leaching of silver.</p>
<p>Gold and silver are often extracted from their ores via a leaching process using a cyanide solution. The cyanide ion ($$\mathrm{CN^-}$$) complexes with the metal ions to form soluble complexes like [Ag(CN)$_2$]$^-$, enabling the separation of silver from the ore. So, this statement is correct as well.</p>

<p>(D) Phosphine act as a ligand in Wilkinson''s catalyst.</p>
<p>Wilkinson''s catalyst is $$\mathrm{RhCl(PPh_3)_3}$$, where PPh$_3$ stands for triphenylphosphine, a type of phosphine ligand. Phosphines are indeed ligands in Wilkinson''s catalyst, and they play an important role in its catalytic activity, particularly in hydrogenation reactions. Therefore, this statement is correct.</p>

<p>(E) The stability constants of $$\mathrm{Ca}^{2+}$$ and $$\mathrm{Mg}^{2+}$$ are similar with EDTA complexes.</p>
<p>EDTA (ethylenediaminetetraacetic acid) forms strong complexes with many metal ions including $$\mathrm{Ca}^{2+}$$ and $$\mathrm{Mg}^{2+}$$. However, the stability constants of their complexes with EDTA are not similar; the stability constant for the calcium complex is notably higher than that for the magnesium complex. Thus, this statement is incorrect.</p>

<p>With all the information above, we can conclude:</p>
<p>(A) is correct, (B) is correct, (C) is correct, (D) is correct, and (E) is incorrect.</p>
<p>Therefore, the correct statements are (A), (B), (C), and (D), making Option D—(A), (B), (C) only—the correct choice.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'coordination_compounds'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '14453085-9b8a-46f5-ae9a-864ecccf0f19',
    'chemistry',
    '12',
    'D and F Block Elements',
    'Inner Transition Elements Lanthanoids And Actinoids',
    'easy',
    'single_correct',
    'The actinoids exhibits more number of oxidation states in general than the lanthanoids. This is
because :',
    '[{"id": "A", "text": "the 5f orbitals are more buried than the 4f orbitals"}, {"id": "B", "text": "there is a similarity between 4f and 5f orbitals in their angular part of the wave function"}, {"id": "C", "text": "the actinoids are more reactive than the lanthanoids"}, {"id": "D", "text": "the 5f orbitals extend further from the nucleus than the 4f orbitals"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<b>NOTE :</b> More the distance between nucleus and outer orbitals, lesser will be force of attraction on them. Distance between nucleus and $$5f$$ orbitals is more as compared to distance between $$4f$$ orbital and nucleus. So actinoids exhibit  more number of oxidation states in general than the lanthanoids.',
    4,
    -1,
    true,
    2007,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'd_and_f_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '421c9364-37a3-4553-a504-8d0e320971ef',
    'chemistry',
    '12',
    'D and F Block Elements',
    'Properties Of Transition Elements',
    'easy',
    'single_correct',
    '<p>The metal ion (in gaseous state) with lowest spin-only magnetic moment value is :</p>',
    '[{"id": "A", "text": "V<sup>2+</sup>"}, {"id": "B", "text": "Ni<sup>2+</sup>"}, {"id": "C", "text": "Cr<sup>2+</sup>"}, {"id": "D", "text": "Fe<sup>2+</sup>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<table style="width:100%;text-align:left;min-width:460px">
<thead>
  <tr>
    <th></th>
    <th>Valence shell configuration</th>
    <th>Unpaired electrons</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>V<sup>2+</sup></td>
    <td>3d<sup>3</sup>4s<sup>0</sup></td>
    <td>n = 3</td>
  </tr>
  <tr>
    <td>Ni<sup>2+</sup></td>
    <td>3d<sup>8</sup>4s<sup>0</sup></td>
    <td>n = 2</td>
  </tr>
  <tr>
    <td>Cr<sup>2+</sup></td>
    <td>3d<sup>4</sup>4s<sup>0</sup></td>
    <td>n = 4</td>
  </tr>
  <tr>
    <td>Fe<sup>2+</sup></td>
    <td>3d<sup>6</sup>4s<sup>0</sup></td>
    <td>n = 4</td>
  </tr>
</tbody>
</table><br/><br/>
Since Ni<sup>2+</sup> has least number of unpaired electrons.
Hence Ni<sup>2+</sup> will have lowest spin only magnetic
moment Value.',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'd_and_f_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '971808ce-2ec0-446e-9415-bd186c274d31',
    'chemistry',
    '12',
    'Electrochemistry',
    'Conductance And Electrolysis',
    'easy',
    'single_correct',
    'Conductivity (Seimen’s S) is directly proportional to area of the vessel and the concentration
of the solution in it and is inversely proportional to the length of the vessel then, then constant of proportionality is expressed in :',
    '[{"id": "A", "text": "Sm mol<sup>-1</sup>"}, {"id": "B", "text": "Sm<sup>2 </sup> mol<sup>-1</sup>"}, {"id": "C", "text": "S<sup>-2</sup>m<sup>2</sup> mol"}, {"id": "D", "text": "S<sup>2</sup>m<sup>2</sup> mol<sup>-2</sup>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Given $$S \propto {{area\, \times \,conc} \over \ell } = {{\kappa {m^2}mol} \over {m \times {m^3}}}$$
<br><br>$$\therefore$$ $$\,\,\,\,\kappa  = S{m^2}mo{l^{ - 1}}$$',
    4,
    -1,
    true,
    2002,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'electrochemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'bad8c44a-1799-4606-a74d-da7887601933',
    'chemistry',
    '12',
    'Electrochemistry',
    'Conductance And Electrolysis',
    'medium',
    'single_correct',
    '<p>The molar conductivity of a conductivity cell filled with 10 moles of 20 mL NaCl solution is $${\Lambda _{m1}}$$ and that of 20 moles another identical cell heaving 80 mL NaCl solution is $${\Lambda _{m2}}$$. The conductivities exhibited by these two cells are same. The relationship between $${\Lambda _{m2}}$$ and $${\Lambda _{m1}}$$ is</p>',
    '[{"id": "A", "text": "$${\\Lambda _{m2}}$$ = 2$${\\Lambda _{m1}}$$"}, {"id": "B", "text": "$${\\Lambda _{m2}}$$ = $${\\Lambda _{m1}}$$ / 2"}, {"id": "C", "text": "$${\\Lambda _{m2}}$$ = $${\\Lambda _{m1}}$$"}, {"id": "D", "text": "$${\\Lambda _{m2}}$$ = 4$${\\Lambda _{m1}}$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '$$\Lambda_{\mathrm{m}_{1}}=\frac{\mathrm{k}_{1} \times 1000}{\mathrm{M}_{1}}=\frac{\mathrm{k} \times 1000}{\frac{10}{0.02}}$$
<br/><br/>
$$
\Lambda_{\mathrm{m}_{2}}=\frac{\mathrm{k}_{2} \times 1000}{\frac{20}{0.08}}
$$
<br/><br/>
It is given that $$\mathrm{k}_{1}=\mathrm{k}_{2}$$
<br/><br/>
$$
\mathrm{k}_{1}=\frac{\Lambda_{\mathrm{m}_{1}}}{2} \quad \quad \mathrm{k}_{2}=\frac{\Lambda_{\mathrm{m}_{2}}}{4}
$$
<br/><br/>
Applying the given condition on conductivity.
<br/><br/>
$$
\begin{gathered}
\frac{\Lambda_{\mathrm{m}_{1}}}{2}=\frac{\Lambda_{\mathrm{m}_{2}}}{4} \\
\Lambda_{\mathrm{m}_{2}}=2 \Lambda_{\mathrm{m}_{1}}
\end{gathered}
$$',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'electrochemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a192be19-4f37-4a3b-bd8f-97ca629f244b',
    'chemistry',
    '12',
    'Environmental Chemistry',
    'Environmental Pollution',
    'easy',
    'single_correct',
    'The processes of calcination and roasting in
metallurgical industries, respectively, can Iead
to :',
    '[{"id": "A", "text": "Global warming and photochemical smog"}, {"id": "B", "text": "Photochemical smog and ozone layer\ndepletion"}, {"id": "C", "text": "Photochemical smog and global warming"}, {"id": "D", "text": "Global warming and acid rain"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Calcination Releases $$ \to $$ CO<sub>2</sub> $$ \to $$ Global warming
<br><br>Roasting Releases $$ \to $$ SO<sub>2</sub> $$ \to $$ Acid Rain',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'environmental_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ee8095ff-e9ce-43da-9aa9-211f114c26d6',
    'chemistry',
    '11',
    'Gaseous State',
    'Ideal Gas Equation',
    'medium',
    'single_correct',
    'At 300 K, the density of a certain gaseous molecule at 2 bar is double to that of
dinitrogen (N<sub>2</sub> ) at 4 bar. The molar mass of gaseous molecule is :',
    '[{"id": "A", "text": "28 g mol<sup>$$-$$1</sup>"}, {"id": "B", "text": "56 g mol<sup>$$-$$1</sup>"}, {"id": "C", "text": "112 g mol<sup>$$-$$1</sup>"}, {"id": "D", "text": "224 g mol<sup>$$-$$1</sup>"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Density = $${{Mass} \over {Volume}}$$
<br><br>PV = RT $$ \Rightarrow $$ V = $${{RT} \over P}$$
<br><br>So, Density(d) = $${{MP} \over {RT}}$$
<br><br>Now, d<sub>1</sub>
 = x, P<sub>1</sub>
 = 4, M<sub>1</sub>
 = 28, d<sub>2</sub>
 = 2x, P<sub>2</sub>
 = 2, M<sub>2</sub>
 = ?
<br><br>$$ \therefore $$ $${{{d_1}} \over {{d_2}}} = {{{M_1}{P_1}} \over {R{T_1}}} \times {{R{T_2}} \over {{M_2}{P_2}}} = {{{M_1}{P_1}} \over {{M_2}{P_2}}}$$ [As T<sub>1</sub> = T<sub>2</sub> ]
<br><br>$$ \Rightarrow $$ M<sub>2</sub> = $${{{M_1}{P_1}{d_2}} \over {{d_1}{P_2}}}$$
<br><br>= $${{2x \times 28 \times 4} \over {2 \times x}}$$ = 112 g mol<sup>-1</sup>',
    4,
    -1,
    true,
    2017,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'gaseous_state'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '06c84c14-57e3-4e8b-b197-99470b9c0a5e',
    'chemistry',
    '12',
    'Haloalkanes and Haloarenes',
    'Haloalkanes',
    'medium',
    'single_correct',
    'For the following reactions<br><br>
<img src="https://imagex.cdn.examgoal.net/7k9k2k5epjtbk/45f6cd7c-f0c3-41ad-8b97-848508f65f20/cd8e5300-3741-11ea-92dd-4b9c3519996f/file-7k9k2k5epjtbl-429w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 7th January Evening Slot Chemistry - Haloalkanes and Haloarenes Question 122 English"><br>
K<sub>s</sub> and K<sub>e</sub>, are respectively, the rate constants for substitution and elimination and $$\mu  = {{{k_s}} \over {{k_e}}}$$ the
correct options is',
    '[{"id": "A", "text": "$${\\mu _B} &gt; {\\mu _A}$$ and K<sub>e</sub>(A) &gt; K<sub>e</sub>(B)"}, {"id": "B", "text": "$${\\mu _A} &gt; {\\mu _B}$$ and K<sub>e</sub>(B) &gt; K<sub>e</sub>(A)"}, {"id": "C", "text": "$${\\mu _B} &gt; {\\mu _A}$$ and K<sub>e</sub>(B) &gt; K<sub>e</sub>(A)"}, {"id": "D", "text": "$${\\mu _A} &gt; {\\mu _B}$$ and K<sub>e</sub>(A) &gt; K<sub>e</sub>(B)"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'For 1<sup>o</sup> alkayl halide rate of substitute reaction is more than rate of elimination reaction.
<br><br>When Z = A, then k<sub>s</sub> $$&gt;$$ k<sub>e</sub> and
<br><br>when Z = B, then k<sub>s</sub> $$&lt;$$ k<sub>e</sub>
<br><br>$$ \therefore $$ $$\mu $$<sub>A</sub> $$&gt;$$ $$\mu $$<sub>B</sub>
<br><br>As B is strong base than A so for B more elimination reaction happens.
<br><br>$$ \therefore $$ K<sub>e</sub>(B) $$&gt;$$ K<sub>e</sub>(A)',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'haloalkanes_and_haloarenes'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7fee9146-fe38-4e43-8dc6-16adfe615bad',
    'chemistry',
    '12',
    'Haloalkanes and Haloarenes',
    'Haloalkanes',
    'medium',
    'single_correct',
    '<p>Given below are two statements : one is labelled as Assertion (A) and the other is labelled as Reason (R).</p>
<p>Assertion (A) : $$\mathrm{S}_{\mathrm{N}} 2$$ reaction of $$\mathrm{C}_6 \mathrm{H}_5 \mathrm{CH}_2 \mathrm{Br}$$ occurs more readily than the $$\mathrm{S}_{\mathrm{N}} 2$$ reaction of $$\mathrm{CH}_3 \mathrm{CH}_2 \mathrm{Br}$$.</p>
<p>Reason (R) : The partially bonded unhybridized p-orbital that develops in the trigonal bipyramidal transition state is stabilized by conjugation with the phenyl ring.</p>
<p>In the light of the above statements, choose the most appropriate answer from the options given below :</p>',
    '[{"id": "A", "text": "Both (A) and (R) are correct but (R) is not the correct explanation of (A)"}, {"id": "B", "text": "Both (A) and (R) are correct and (R) is the correct explanation of (A)"}, {"id": "C", "text": "(A) is not correct but (R) is correct"}, {"id": "D", "text": "(A) is correct but (R) is not correct"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>To determine the correct answer, we need to analyze both the Assertion (A) and the Reason (R) independently, as well as see if the Reason (R) provides the correct explanation for the Assertion (A).</p>

<p><strong>Assertion (A) Analysis:</strong><br>

<p>Assertion (A) states that $$\mathrm{S}_{\mathrm{N}} 2$$ reaction of $$\mathrm{C}_6 \mathrm{H}_5 \mathrm{CH}_2 \mathrm{Br}$$ occurs more readily than the $$\mathrm{S}_{\mathrm{N}} 2$$ reaction of $$\mathrm{CH}_3 \mathrm{CH}_2 \mathrm{Br}$$. In an $$\mathrm{S}_{\mathrm{N}} 2$$ reaction, the rate depends on the nucleophile as well as the substrate. Specifically, $$\mathrm{S}_{\mathrm{N}} 2$$ reactions proceed through a backside attack mechanism, leading to the formation of a transition state where the nucleophile and the leaving group are simultaneously bonded to the carbon atom. The benzyl group $$\mathrm{C}_6 \mathrm{H}_5 \mathrm{CH}_2-$$ is more stable for $$\mathrm{S}_{\mathrm{N}} 2$$ reactions compared to the ethyl group $$\mathrm{CH}_3 \mathrm{CH}_2-$$ because the benzyl carbon''s partial positive charge in the transition state is stabilized by the resonance of the phenyl ring.</p></p>

<p><strong>Reason (R) Analysis:</strong><br>

<p>Reason (R) explains that the partially bonded unhybridized p-orbital that develops in the trigonal bipyramidal transition state is stabilized by conjugation with the phenyl ring. This means that the presence of the phenyl ring can delocalize and stabilize the charge in the transition state, facilitating the $$\mathrm{S}_{\mathrm{N}} 2$$ reaction.</p></p>

<p><strong>Combining Assertion (A) and Reason (R):</strong><br>

<p>Given that the phenyl ring in $$\mathrm{C}_6 \mathrm{H}_5 \mathrm{CH}_2 \mathrm{Br}$$ can indeed stabilize the transition state through conjugation more effectively than an ethyl group, both the Assertion (A) and Reason (R) are correct. Furthermore, Reason (R) provides a valid explanation for Assertion (A), reinforcing why the $$\mathrm{S}_{\mathrm{N}} 2$$ reaction occurs more readily for $$\mathrm{C}_6 \mathrm{H}_5 \mathrm{CH}_2 \mathrm{Br}$$.</p></p>

<p>Thus, the most appropriate answer is:</p>

<p><strong>Option B:</strong> Both (A) and (R) are correct and (R) is the correct explanation of (A)</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'haloalkanes_and_haloarenes'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7686e8d2-6d6f-4bd3-8ed9-f4a76447e662',
    'chemistry',
    '12',
    'Hydrocarbons',
    'Reaction Of Alkenes',
    'easy',
    'single_correct',
    'The major product in the following reaction is:
<img src="https://imagex.cdn.examgoal.net/7k9k2k5hlpttz/bb585948-6c51-438b-aa7d-28703054deb7/2a3cd570-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlptu0-271w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English">',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hlrh5e/9a957056-1dc2-446b-bef6-5605523afa8d/580f0720-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlrh5f-203w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hls04t/ea0b2476-c1f1-400c-900e-eabaa60cbc02/66b925d0-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hls04u-223w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hlr8sc/5d509dac-61c7-408a-b5f2-417e7732bfee/519947c0-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlr8sd-184w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hlrove/aecb070a-aa59-4243-9f40-d1ed139fa04d/5e0620a0-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlrovf-184w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/7kd4dk64c6ofx/1cd8d783-8dcf-4209-93d3-0943ac08f001/ea795ed0-4559-11ea-b62d-51ccc5d4afb6/file-7kd4dk64c6ofy-320w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Explanation">',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'hydrocarbons'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '33fe255e-35a3-4f1e-8847-9f25e4d22176',
    'chemistry',
    '12',
    'Hydrocarbons',
    'Reaction Of Alkenes',
    'medium',
    'single_correct',
    '<p>$$ \text { Which compound would give 3-methyl-6-oxoheptanal upon ozonolysis? } $$</p>',
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj2b3g/f55b24e1-1881-42b7-8e3d-fbdcc8d400ec/720aeec0-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2b3h.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj2b3g/f55b24e1-1881-42b7-8e3d-fbdcc8d400ec/720aeec0-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2b3h.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj2hhy/e72344bd-54da-4254-874e-87dcaa5a19c8/76fd1b60-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2hhz.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj2hhy/e72344bd-54da-4254-874e-87dcaa5a19c8/76fd1b60-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2hhz.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj3aic/52d321a1-2084-4f07-8793-2129984538af/8d661b40-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj3aid.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj3aic/52d321a1-2084-4f07-8793-2129984538af/8d661b40-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj3aid.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj3gjo/1715d52a-e488-4cc9-a7fb-212886c23e84/920ff440-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj3gjp.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj3gjo/1715d52a-e488-4cc9-a7fb-212886c23e84/920ff440-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj3gjp.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1ma0nrksr/844e9058-e3e2-4618-bd27-5e175962f4d5/82457db0-23f4-11f0-97d4-0962b8b605df/file-jaoe38c1ma0nrkss.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/jaoe38c1ma0nrksr/844e9058-e3e2-4618-bd27-5e175962f4d5/82457db0-23f4-11f0-97d4-0962b8b605df/file-jaoe38c1ma0nrkss.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0 auto; max-height: 40vh; vertical-align: baseline" alt="JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Explanation"></p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'hydrocarbons'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ff275ce8-b2ee-4e09-b606-c4e156b6eb39',
    'chemistry',
    '12',
    'Hydrogen',
    'Hard And Soft Water',
    'easy',
    'single_correct',
    '<p>Given below are two statements :</p>
<p>Statement I : Permutit process is more efficient compared to the synthetic resin method for the softening of water.</p>
<p>Statement II : Synthetic resin method results in the formation of soluble sodium salts.</p>
<p>In the light of the above statements, choose the most appropriate answer from the options given below:</p>',
    '[{"id": "A", "text": "Statement I is correct but Statement II is incorrect"}, {"id": "B", "text": "Both the Statements I and II are correct"}, {"id": "C", "text": "Both the Statements I and II are incorrect"}, {"id": "D", "text": "Statement I is incorrect but Statement II is correct"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'I. Synthetic resin is more efficient as cations as well as anions responsible for removal of permanent hardness.<br/><br/>
II. In synthetic resin method, cations and anions are removed in the form of ppt.<br/><br/>
Hence, both statements are incorrect.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'hydrogen'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b94c460d-1064-4aba-807c-8f12166cffde',
    'chemistry',
    '11',
    'Ionic Equilibrium',
    'Ph Buffer And Indicators',
    'medium',
    'single_correct',
    'Which of the following statement(s) is/are correct?<br/><br/>
(A) The $\mathrm{pH}$ of $1 \times 10^{-8}~ \mathrm{M} ~\mathrm{HCl}$ solution is 8 .<br/><br/>
(B) The conjugate base of $\mathrm{H}_{2} \mathrm{PO}_{4}^{-}$ is $\mathrm{HPO}_{4}^{2-}$.<br/><br/>
(C) $\mathrm{K}_{\mathrm{w}}$ increases with increase in temperature.<br/><br/>
(D) When a solution of a weak monoprotic acid is titrated against a strong base at half neutralisation point, $\mathrm{pH}=\frac{1}{2} \mathrm{pK}_{\mathrm{a}}$<br/><br/>

Choose the correct answer from the options given below:',
    '[{"id": "A", "text": "$(\\mathrm{A}),(\\mathrm{B}),(\\mathrm{C})$"}, {"id": "B", "text": "(B), (C)"}, {"id": "C", "text": "(B), (C), (D)"}, {"id": "D", "text": "(A), (D)"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '(A) The $\mathrm{pH}$ of $1 \times 10^{-8}~ \mathrm{M} ~\mathrm{HCl}$ solution is 8.
<br/><br/>
This statement is incorrect. For a strong acid like HCl, the concentration of H+ ions will be the same as the concentration of the acid, i.e., $1 \times 10^{-8}~\mathrm{M}$. The pH can be calculated using the formula:
<br/><br/>
$\mathrm{pH} = -\log [\mathrm{H}^+] = -\log (1 \times 10^{-8}) = 8$
<br/><br/>
However, because the concentration is so low, it approaches the range where water auto-ionization becomes significant. In this case, the solution pH will be slightly higher than 7, but not exactly 8.
<br/><br/>
(B) The conjugate base of $\mathrm{H}_{2} \mathrm{PO}_{4}^{-}$ is $\mathrm{HPO}_{4}^{2-}$.
<br/><br/>
This statement is correct. The conjugate base of an acid is formed when it loses one H+ ion:
<br/><br/>
$\mathrm{H}_{2} \mathrm{PO}_{4}^{-} \rightarrow \mathrm{HPO}_{4}^{2-} + \mathrm{H}^{+}$
<br/><br/>
(C) $\mathrm{K}_{\mathrm{w}}$ increases with an increase in temperature.
<br/><br/>
This statement is correct. The ion product of water, $\mathrm{K}_{\mathrm{w}}$, increases with increasing temperature. This is because the auto-ionization of water is an endothermic process, meaning it absorbs heat:
<br/><br/>
$\mathrm{H}_{2} \mathrm{O} \rightleftharpoons \mathrm{H}^{+} + \mathrm{OH}^{-}$
<br/><br/>
As the temperature increases, the equilibrium shifts towards the formation of more $\mathrm{H}^{+}$ and $\mathrm{OH}^{-}$ ions, leading to an increase in $\mathrm{K}_{\mathrm{w}}$.
<br/><br/>
(D) When a solution of a weak monoprotic acid is titrated against a strong base at the half-neutralization point, $\mathrm{pH}=\frac{1}{2} \mathrm{pK}_{\mathrm{a}}$
<br/><br/>
This statement is incorrect. At the half-neutralization point, the concentration of the weak acid ([HA]) is equal to the concentration of its conjugate base ([A-]). According to the Henderson-Hasselbalch equation:
<br/><br/>
$\mathrm{pH} = \mathrm{pK}_{\mathrm{a}} + \log \frac{[\mathrm{A}^{-}]}{[\mathrm{HA}]}$
<br/><br/>
At the half-neutralization point, the ratio of [A-] to [HA] is 1, so the equation becomes:
<br/><br/>
$\mathrm{pH} = \mathrm{pK}_{\mathrm{a}} + \log (1) = \mathrm{pK}_{\mathrm{a}}$
<br/><br/>
Therefore, the correct answer is:
<br/><br/>
(B) and (C) are correct.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'ionic_equilibrium'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '0e6076fb-1328-49cf-91e2-734b6d6af192',
    'chemistry',
    '12',
    'Isolation of Elements',
    'Minerals And Ores',
    'easy',
    'single_correct',
    'Match List-I with List-II :<br><br><table>
<thead>
  <tr>
    <th></th>
    <th>List - I<br>(Name of ore/mineral)</th>
    <th></th>
    <th>List - II<br>(Chemical formula)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>(a)</td>
    <td>Calmine</td>
    <td>(i)</td>
    <td>$$Zns$$</td>
  </tr>
  <tr>
    <td>(b)</td>
    <td>Malachite</td>
    <td>(ii)</td>
    <td>$$FeC{O_3}$$</td>
  </tr>
  <tr>
    <td>(c)</td>
    <td>Siderite</td>
    <td>(iii)</td>
    <td>$$ZnC{O_3}$$</td>
  </tr>
  <tr>
    <td>(d)</td>
    <td>Sphalerite</td>
    <td>(iv)</td>
    <td>$$CuC{O_3}.Cu{(OH)_2}$$</td>
  </tr>
</tbody>
</table><br><br>Choose the most appropriate answer from the options given below :',
    '[{"id": "A", "text": "(a)-(iii), (b)-(iv), (c)-(ii), (d)-(i)"}, {"id": "B", "text": "(a)-(iii), (b)-(iv), (c)-(i), (d)-(ii)"}, {"id": "C", "text": "(a)-(iv), (b)-(iii), (c)-(i), (d)-(ii)"}, {"id": "D", "text": "(a)-(iii), (b)-(ii), (c)-(iv), (d)-(i)"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '(Name of ore/mineral)<br><br>(a) Calamine - ZnCO<sub>3</sub><br><br>(b) Malachite - CuCO<sub>3</sub> . Cu(OH)<sub>2</sub><br><br>(c) Siderite - FeCO<sub>3</sub><br><br>(d) Sphalerite - ZnS
<br><br><b>Note : ( Remember all those ores names. Any one of those can be asked in the exam.)</b>
<br><br><b>Oxides Ores :</b>
<br><br> (1) ZnO - Zincite<br><br>(2) Fe<sub>2</sub>O<sub>3</sub> - Haematite<br><br>(3) Fe<sub>3</sub>O<sub>4</sub> - Magnetite (FeO + Fe<sub>2</sub>O<sub>3</sub> mixture)<br><br>(4) Fe<sub>2</sub>O<sub>3</sub> . 3H<sub>2</sub>O - Limonite<br><br>(5) MnO<sub>2</sub> - Pyrolusite<br><br>(6) Cu<sub>2</sub>O - Cuprite or Ruby Copper<br><br>(7) TiO<sub>2</sub> - Rutile<br><br>(8) FeCr<sub>2</sub>O<sub>4</sub> - Chromite (FeO + Cr<sub>2</sub>O<sub>3</sub>)<br><br>(9) FeTiO<sub>3</sub> - Illmenite (FeO + TiO<sub>2</sub>)<br><br>(10) Na<sub>2</sub>B<sub>4</sub>O<sub>7</sub> . 10H<sub>2</sub>O - Borax or Tincal<br><br>(11) U<sub>3</sub>O<sub>8</sub> - Pitch Blende<br><br>(12) SnO<sub>2</sub> - Tin Stone or Cassiterite<br><br>(13) Ca<sub>2</sub>B<sub>6</sub>O<sub>11</sub> . 5H<sub>2</sub>O - Colemanite (2 Cao + 3 B<sub>2</sub>O<sub>3</sub>)<br><br>(14) Al<sub>2</sub>O<sub>3</sub> . 2H<sub>2</sub>O - Bauxite<br><br>(15) Al<sub>2</sub>O<sub>3</sub> . H<sub>2</sub>O - Diaspore<br><br>(16) Al<sub>2</sub>O<sub>3</sub> - Corundum
<br><br><b>Sulphides Ores :</b>
<br><br>(1) ZnS - Zinc Blende or Sphalerite<br><br>(2) PbS - Galena<br><br>(3) Ag<sub>2</sub>S - Argentite or Silver Glance<br><br>(4) HgS - Cinnabar<br><br>(5) Cu<sub>2</sub>S - Chalcocite or Copper glance<br><br>(6) CuFeS<sub>2</sub> - Copper pyrites or Chalco pyrites (Cu<sub>2</sub>S + Fe<sub>2</sub>S<sub>3</sub> mixture)<br><br>(7) FeS<sub>2</sub> - Iron pyrites or Fool''s Gold<br><br>(8) 3Ag<sub>2</sub>S . Sb<sub>2</sub>S<sub>2</sub> - Pyrargyrite or ruby silver
<br><br> <b>Halides Ores :</b><br><br>(1) NaCl - Rock Salt<br><br>(2) KCl - Sylvine<br><br>(3) Na<sub>3</sub>AlF<sub>6</sub> - Cryolite [3NaF + AlF<sub>6</sub>]<br><br>(4) CaF<sub>2</sub> - Fluorspar<br><br>(5) KCl . MgCl<sub>2</sub> . 6H<sub>2</sub>O - Carnalite<br><br>(6) AgCl - Horn Silver
<br><br><b>Carbonates Ores :</b><br><br>(1) CaCO<sub>3</sub> - Limestone<br><br>(2) MgCO<sub>3</sub> - Magnesite<br><br>(3) CaCO<sub>3</sub> . MgCO<sub>3</sub> - Dolomite<br><br>(4) ZnCO<sub>3</sub> - Calamine<br><br>(5) PbCO<sub>3</sub> - Cerrusite<br><br>(6) FeCO<sub>3</sub> - Siderite<br><br>(7) CuCO<sub>3</sub> . Cu(OH)<sub>2</sub> or Cu<sub>2</sub>CO<sub>3</sub>(OH)<sub>2</sub> - Malachite or Basic Copper Carbonates<br><br>(8) 2 CuCO<sub>3</sub> . Cu(OH)<sub>2</sub> - Azurite
<br><br><b>Sulphates Ores :</b><br><br>(1) CuSO<sub>4</sub> . 2H<sub>2</sub>O - Gypsum<br><br>(2) MgSO<sub>4</sub> . 7H<sub>2</sub>O - Epson Salt<br><br>(3) Na<sub>2</sub>SO<sub>4</sub> . 10 H<sub>2</sub>O - Glauber''s Salt<br><br>(4) PbSO<sub>4</sub> - Anglesite<br><br>(5) ZnSO<sub>4</sub> . 7H<sub>2</sub>O - White Vitriol<br><br>(6) FeSO<sub>4</sub> . 7H<sub>2</sub>O - Green Vitriol<br><br>(7) CuSO<sub>4</sub> . 5H<sub>2</sub>O - Blue Vitriol or Chalcanthite<br><br><b>Nitrate Ores :</b><br><br>(1) KNO<sub>3</sub> - Indian Saltpetre<br><br>(2) NaNO<sub>3</sub> - Chile Saltpetre<br><br><b>Arsenides Ores :</b><br><br>(1) NiAs - Kupfernickel<br><br>(2) NiAsS - Nickel glance',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'isolation_of_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9bbda4f8-ce04-4f48-bc23-390c8d94455b',
    'chemistry',
    '12',
    'P Block Elements',
    'Group 15 Elements Nitrogen Family',
    'medium',
    'single_correct',
    'Which one of the following properties is not shown by NO?',
    '[{"id": "A", "text": "It combines with oxygen to form nitrogen dioxide"}, {"id": "B", "text": "It\u2019s bond order is 2.5"}, {"id": "C", "text": "It is diamagnetic in gaseous state"}, {"id": "D", "text": "It is a neutral oxide"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Nitric oxide is paramagnetic in the gaseous state because of the presence of one unpaired electron in its outermost shell.
<br><br>The electronic configuration of $$NO$$ is 
<br><br>$$\sigma _{1s}^2\,\sigma _{1s}^{ * 2}\,\sigma _{2s}^2\,\sigma _{2s}^{ \circ 2}\,\sigma _{{2_{{p_z}}}}^2\,\pi _{{2_{{p_x}}}}^2$$
<br><br>$$ = \pi _{{2_{Py}}}^2\,\pi _{{2_{Px}}}^{ * 1}$$',
    4,
    -1,
    true,
    2014,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'p_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '0d2c1ecc-d3e3-476f-a298-ca0cd232ba82',
    'chemistry',
    '12',
    'P Block Elements',
    'Group 15 Elements Nitrogen Family',
    'easy',
    'single_correct',
    'Chemical nature of the nitrogen oxide compound obtained from a reaction of concentrated nitric acid and P<sub>4</sub>O<sub>10</sub> (in 4 : 1 ratio) is :',
    '[{"id": "A", "text": "acidic"}, {"id": "B", "text": "basic"}, {"id": "C", "text": "amphoteric"}, {"id": "D", "text": "neutral"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>Chemical nature of the nitrogen pentaoxide compound obtained
from a reaction of concentrated nitric acid and P<sub>4</sub>O<sub>10</sub> (in 4 : 1 ratio) is
acidic.</p>
<p>Chemical reaction is as follows</p>
<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l0ads4jf/5608738b-a31c-4082-89fc-529e5bae6218/594b2cb0-9a9b-11ec-9f52-c900a8226ba7/file-1l0ads4jg.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l0ads4jf/5608738b-a31c-4082-89fc-529e5bae6218/594b2cb0-9a9b-11ec-9f52-c900a8226ba7/file-1l0ads4jg.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2021 (Online) 20th July Morning Shift Chemistry - p-Block Elements Question 143 English Explanation">
<p>$$ \therefore $$ N<sub>2</sub>O<sub>5</sub> is an acidic oxide.</p>',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'p_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4ea2412b-ae08-46df-b5d7-c582f6f97e64',
    'chemistry',
    '12',
    'P Block Elements',
    'Group 13 Elements Boron Family',
    'easy',
    'single_correct',
    '<p>The covalency and oxidation state respectively of boron in $$\left[\mathrm{BF}_{4}\right]^{-}$$, are :</p>',
    '[{"id": "A", "text": "3 and 4"}, {"id": "B", "text": "4 and 3"}, {"id": "C", "text": "4 and 4"}, {"id": "D", "text": "3 and 5"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'In the tetrafluoroborate anion ($$\left[\mathrm{BF}_{4}\right]^{-}$$), boron is bonded to four fluorine atoms through covalent bonds. Therefore, the covalency of boron in this ion is 4.
<br/><br/>
The oxidation state of boron can be calculated by considering the charges on the atoms involved in the anion. Fluorine has an oxidation state of -1, and there are four fluorine atoms in the anion, which contributes a total of -4. Since the overall charge on the tetrafluoroborate anion is -1, the oxidation state of boron must be +3 in order to balance the charges.
<br/><br/>
So, the covalency and oxidation state of boron in $$\left[\mathrm{BF}_{4}\right]^{-}$$ are 4 and 3, respectively.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'p_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c86d861a-50a4-4369-80a3-a57b24169295',
    'chemistry',
    '12',
    'Periodic Table and Periodicity',
    'Periodic Table And Its Features',
    'easy',
    'single_correct',
    'The lathanide ion that would show colour is :',
    '[{"id": "A", "text": "Sm<sup>3+</sup>"}, {"id": "B", "text": "Gd<sup>3+</sup>"}, {"id": "C", "text": "Lu<sup>3+</sup>"}, {"id": "D", "text": "La<sup>3+</sup>"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Electronic configuration of 
<br><br>Sm = [Xe] 4f<sup>6</sup> 6s<sup>2</sup>
<br><br>$$ \therefore $$ Electronic configuration of 
<br><br>Sm<sup>+3</sup> = [Xe] 4f<sup>5</sup>
<br><br>Sm<sup>+3</sup> shows yellow colour due to partially filled f orbital and f-f transition.
<br><br>Electronic configuration of 
<br><br>La<sup>+3</sup> = [Xe] 4f<sup>0</sup>
<br><br>Lu<sup>+3</sup> = [Xe] 4f<sup>14</sup>
<br><br>Gd<sup>+3</sup> = [Xe] 4f<sup>7</sup>
<br><br>La<sup>+3</sup>, Lu<sup>+3</sup> and Gd<sup>+3</sup> are colourless due to absence of f-f transition.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'periodic_table_and_periodicity'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '33845c0e-e262-41d3-8170-f7f0fde31d62',
    'chemistry',
    '12',
    'Periodic Table and Periodicity',
    'Electron Gain Enthalpy',
    'easy',
    'single_correct',
    '<p>Given below are two statements:</p>
<p>Statement I : Fluorine has most negative electron gain enthalpy in its group.</p>
<p>Statement II : Oxygen has least negative electron gain enthalpy in its group.</p>
<p>In the light of the above statements, choose the most appropriate from the options given below</p>',
    '[{"id": "A", "text": "Both Statement I and Statement II are true"}, {"id": "B", "text": "Both Statement I and Statement II are false"}, {"id": "C", "text": "Statement I is false but Statement II is true"}, {"id": "D", "text": "Statement I is true but Statement II is false"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>Statement- 1 is false because chlorine has most negative electron gain enthalpy in its group.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'periodic_table_and_periodicity'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ee4da7b0-ed43-41e2-a98a-d13f2d99fb0f',
    'chemistry',
    '12',
    'Polymers',
    'Classification Preparations And Properties Of Polymers',
    'easy',
    'single_correct',
    'Preparation of Bakelite proceeds via reactions.',
    '[{"id": "A", "text": "Electrophilic substitution and dehydration"}, {"id": "B", "text": "Condensation and elimination"}, {"id": "C", "text": "Nucleophilic addition and dehydration"}, {"id": "D", "text": "Electrophilic addition and dehydration"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Formation of Bakelite follows electrophillic substitution of phenol and formaldehyde followed by
dehydration.',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'polymers'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '8424ffaa-5e64-4184-8713-5802c921c675',
    'chemistry',
    '12',
    'Practical Organic Chemistry',
    'Detection Of Extra Elements And Functional Groups',
    'medium',
    'single_correct',
    '<p>Compound that will give positive Lassaigne''s test for both nitrogen and halogen is :</p>',
    '[{"id": "A", "text": "$$\\mathrm{NH_2OH.HCl}$$"}, {"id": "B", "text": "$$\\mathrm{N_2H_4.HCl}$$"}, {"id": "C", "text": "$$\\mathrm{CH_3NH_2.HCl}$$"}, {"id": "D", "text": "$$\\mathrm{NH_4Cl}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$\mathrm{CH}_{3} \mathrm{NH}_{2} \cdot \mathrm{HCl}$ will give positive Lassaigne''s test for both nitrogen and halogen.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'practical_organic_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e2582eca-ea62-4976-9555-355879dc972a',
    'chemistry',
    '11',
    'S Block Elements',
    'Physiochemical Trends In Alkali Metals',
    'easy',
    'single_correct',
    'The main oxides formed on combustion of Li, Na and K in excess of air are, respectively :',
    '[{"id": "A", "text": "LiO<sub>2</sub>, Na<sub>2</sub>O<sub>2</sub> and K<sub>2</sub>O"}, {"id": "B", "text": "Li<sub>2</sub>O<sub>2</sub>, Na<sub>2</sub>O<sub>2</sub> and KO<sub>2</sub>"}, {"id": "C", "text": "Li<sub>2</sub>O, Na<sub>2</sub>O<sub>2</sub> and KO<sub>2</sub>"}, {"id": "D", "text": "Li<sub>2</sub>O, Na<sub>2</sub>O and KO<sub>2</sub>"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'On heating with excess of air $$Li,$$ $$Na$$ and $$K$$ forms following oxides 
<br><br>$$4Li + {O_2}\,\,\buildrel \, \over
 \longrightarrow \,\,\mathop {2L{i_2}O\,\,\,\,\,\,\,\,\,\,}\limits_{Lithium\,\,\,\,monoxide} \,$$ 
<br><br>$$2Na + {O_2}\,\,\buildrel {575\,\,K} \over
 \longrightarrow \,\,\mathop {N{a_2}{O_2}\,\,\,\,\,\,\,\,\,\,\,}\limits_{Sodium\,\,\,peroxide} $$ 
<br><br>$$K + {O_2}\,\,\buildrel \, \over
 \longrightarrow \,\,\mathop {K{O_2}\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,}\limits_{Potassium\,\,\,\sup eroxise} $$',
    4,
    -1,
    true,
    2016,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 's_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3c066db4-967a-4424-a0dc-e7aa89083dea',
    'chemistry',
    '11',
    'S Block Elements',
    'Physiochemical Trends In Alkaline Earth Metals',
    'medium',
    'single_correct',
    '<p>The correct order of hydration enthalpies is</p>
<p>(A) K$$^+$$</p>
<p>(B) Rb$$^+$$</p>
<p>(C) Mg$$^{2+}$$</p>
<p>(D) Cs$$^+$$</p>
<p>(E) Ca$$^{2+}$$</p>
<p>Choose the correct answer from the options given below :</p>',
    '[{"id": "A", "text": "E > C > A > B > D"}, {"id": "B", "text": "C > A > E > B > D"}, {"id": "C", "text": "C > E > A > D > B"}, {"id": "D", "text": "C > E > A > B > D"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Hydration enthalpy $\propto$ charge density
<br/><br/>Charge density means $${{Magnitude\,of\,Charge} \over {Ionic\,Radius}}$$.
<br/><br/>
$\therefore$ The correct order of charge density is
<br/><br/>
$$
\mathrm{Mg}^{2+}>\mathrm{Ca}^{2+}>\mathrm{K}^{+}>\mathrm{Rb}^{+}>\mathrm{Cs}^{+}
$$
<br/><br/>
$\therefore$ The order of hydration enthalpy
<br/><br/>
$$
C>E>A>B>D
$$',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 's_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '395fdc1e-9b1a-46b2-9f58-9a4d921df86f',
    'chemistry',
    '12',
    'Solid State',
    'Crystal Structure Of Solids',
    'medium',
    'single_correct',
    'An element has a face-centred cubic (fcc) structure with a cell edge of $$a$$. The distance between the centres of
two nearest tetrahedral voids in the lattice is :',
    '[{"id": "A", "text": "$$a$$"}, {"id": "B", "text": "$${3 \\over 2}a$$"}, {"id": "C", "text": "$${a \\over 2}$$"}, {"id": "D", "text": "$$\\sqrt 2 a$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'In FCC, tetrahedral voids are located on the
body diagonal at a <br><br>distance of $${{\sqrt 3 a} \over 4}$$ from the
corner. Together they form a smaller cube of
edge length $${a \over 2}$$.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'solid_state'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '87a42067-feb4-475c-a8ea-b98d4a4a8b2f',
    'chemistry',
    '12',
    'Solutions',
    'Relative Lowering Of Vapour Pressure And Roults Law',
    'medium',
    'single_correct',
    'A set of solutions is prepared using 180 g of
water as a solvent and 10 g of different nonvolatile solutes A, B and C. The relative
lowering of vapour pressure in the presence of
these solutes are in the order :<br><br>[Given, molar
mass of A = 100 g mol<sup>–1</sup>; B = 200 g mol<sup>–1</sup>;
C = 10,000 g mol<sup>–1</sup>]',
    '[{"id": "A", "text": "A &gt; C &gt; B"}, {"id": "B", "text": "C &gt; B &gt; A"}, {"id": "C", "text": "A &gt; B &gt; C"}, {"id": "D", "text": "B &gt; C &gt; A"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Relative lowering in vapour pressure (RLVP)
<br><br>= $${{P - {P_s}} \over P} = {n \over {n + N}}$$
<br><br>n $$ \to $$ moles of solute
<br>N $$ \to $$ moles of solvent
<br><br>$$ \therefore $$ (RLVP)<sub>A</sub> = $${{{{10} \over {100}}} \over {{{10} \over {100}} + {{180} \over {18}}}}$$
<br><br>(RLVP)<sub>B</sub> = $${{{{10} \over {200}}} \over {{{10} \over {200}} + {{180} \over {18}}}}$$
<br><br>and (RLVP)<sub>C</sub> = $${{{{10} \over {10000}}} \over {{{10} \over {10000}} + {{180} \over {18}}}}$$
<br><br>$$ \therefore $$ (RLVP)<sub>A</sub> &gt; (RLVP)<sub>B</sub> &gt; (RLVP)<sub>C</sub>
<br><br>So, A &gt; B &gt; C',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'solutions'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4ed0e338-73b4-4701-be97-b947726ee808',
    'chemistry',
    '12',
    'Some Basic Concepts of Chemistry',
    'Concentration Terms',
    'easy',
    'single_correct',
    '8 g of NaOH is dissolved in 18g of H<sub>2</sub>O. Mole fraction of NaOH in solution and molality (in mol kg<sup>–1</sup>) of the solution respectively are -',
    '[{"id": "A", "text": "0.2, 11.11"}, {"id": "B", "text": "0.167, 22.20"}, {"id": "C", "text": "0.167, 11.11"}, {"id": "D", "text": "0.2, 22.20"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '8 gm of NaOH &nbsp;&nbsp;=&nbsp;&nbsp; $${8 \over {40}}$$ &nbsp;&nbsp;=&nbsp;&nbsp; 0.2 mol of NaOH
<br><br>18 gm of H<sub>2</sub>O &nbsp;&nbsp;=&nbsp;&nbsp; $${18 \over {18}}$$ &nbsp;&nbsp;=&nbsp;&nbsp; 1 mol of H<sub>2</sub>O
<br><br>$$ \therefore $$&nbsp;&nbsp;Total mole &nbsp;&nbsp;=&nbsp;&nbsp; 1 + 0.2 &nbsp;&nbsp;=&nbsp;&nbsp; 1.2 mol
<br><br>$$ \therefore $$&nbsp;&nbsp;Mole fraction of NaOH &nbsp;&nbsp;=&nbsp;&nbsp; $${{0.2} \over {1.2}}$$ &nbsp;&nbsp;=&nbsp;&nbsp; 0.167
<br><br>We know, 
<br><br>Molality &nbsp;&nbsp;= &nbsp;&nbsp;$${{Moles\,\,of\,\,solute} \over {Weight\,of\,solvent}} \times $$ 1000
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;$${{0.2} \over {18}} \times $$ 1000
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;11.11',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'some_basic_concepts_of_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2c89aef0-d06c-474b-ab05-a1c48369e8d1',
    'chemistry',
    '12',
    'Structure of Atom',
    'Hydrogen Spectrum',
    'easy',
    'single_correct',
    'The ionization enthalpy of hydrogen atom is 1.312 × 10<sup>6</sup> J mol<sup>−1</sup>. The energy required to excite the
electron in the atom from n = 1 to n = 2 is',
    '[{"id": "A", "text": "8.51 \u00d7 10<sup>5</sup> J mol<sup>\u22121</sup>"}, {"id": "B", "text": "6.56 \u00d7 10<sup>5</sup> J mol<sup>\u22121</sup>"}, {"id": "C", "text": "7.56 \u00d7 10<sup>5</sup> J mol<sup>\u22121</sup>"}, {"id": "D", "text": "9.84 \u00d7 10<sup>5</sup> J mol<sup>\u22121</sup>"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<b>Note :</b>
<br><br>1 eV/atom = 96.485 $$ \times $$ 10<sup>3</sup> J/mol
<br><br>$$\therefore$$ 13.6 eV/atom = 13.6$$ \times $$ 96.485 $$ \times $$ 10<sup>3</sup> J/mol = 1.312 × 10<sup>6</sup> J mol<sup>−1</sup>
<br><br>Energy required to excite the electron from n<sub>1</sub> to n<sub>2</sub> is
<br><br>$$\Delta E = 13.6 \times {Z^2}\left( {{1 \over {n_1^2}} - {1 \over {n_2^2}}} \right)$$
<br><br>= 1.312 × 10<sup>6</sup> × 1$$\left( {{1 \over {{1^2}}} - {1 \over {{2^2}}}} \right)$$
<br><br>= 1.312 × $${3 \over 4}$$ × 10<sup>6</sup>
<br><br>= 9.84 × 10<sup>5</sup> J mol<sup>−1</sup>',
    4,
    -1,
    true,
    2008,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'structure_of_atom'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9446c4e2-d8be-4bbc-9acc-d62053c65719',
    'chemistry',
    '12',
    'Structure of Atom',
    'Hydrogen Spectrum',
    'easy',
    'single_correct',
    '<p>Which transition in the hydrogen spectrum would have the same wavelength as the Balmer type transition from $$\mathrm{n=4}$$ to $$\mathrm{n}=2$$ of $$\mathrm{He}^{+}$$ spectrum</p>',
    '[{"id": "A", "text": "$$\\mathrm{n}=3$$ to $$\\mathrm{n}=4$$"}, {"id": "B", "text": "$$\\mathrm{n}=2$$ to $$\\mathrm{n}=1$$"}, {"id": "C", "text": "$$\\mathrm{n}=1$$ to $$\\mathrm{n}=2$$"}, {"id": "D", "text": "$$\\mathrm{n}=1$$ to $$\\mathrm{n}=3$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '$\mathrm{He}^{+}$ion :
<br/><br/>$$
\begin{aligned}
& \frac{1}{\lambda(\mathrm{H})}=\mathrm{R}(1)^2\left[\frac{1}{\mathrm{n}_1^2}-\frac{1}{\mathrm{n}_2^2}\right] \\\\
& \frac{1}{\lambda\left(\mathrm{He}^{+}\right)}=\mathrm{R}(2)^2\left[\frac{1}{2^2}-\frac{1}{4^2}\right] \\\\
& \text { Given } \lambda(\mathrm{H})=\lambda\left(\mathrm{He}^{+}\right) \\\\
& \mathrm{R}(1)^2\left[\frac{1}{\mathrm{n}_1^2}-\frac{1}{\mathrm{n}_2^2}\right]=\mathrm{R}(4)\left[\frac{1}{2^2}-\frac{1}{4^2}\right] \\\\
& \frac{1}{\mathrm{n}_1^2}-\frac{1}{\mathrm{n}_2^2}=\frac{1}{1^2}-\frac{1}{2^2}
\end{aligned}
$$
<br/><br/>On comparing $\mathrm{n}_1=1 $ and $ \mathrm{n}_2=2$.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'structure_of_atom'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '85919591-78ae-4e03-bee2-4b67c583a8c9',
    'chemistry',
    '12',
    'Surface Chemistry',
    'Colloids',
    'medium',
    'single_correct',
    'Among the following the false statement is -',
    '[{"id": "A", "text": "Lyophilic sol can be coagulated by adding an electrote"}, {"id": "B", "text": "Tyndall effect can be used to distinguish between a colloidal solution and a true solution"}, {"id": "C", "text": "It is possible to cause artificial rain by throwing electrified sand carrying charge opposite to the one on clouds from an aeroplane"}, {"id": "D", "text": "Latex is a colloidal solution of rubber particles which are positively charged"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Latex is a colloidal solution of rubber particles which are negatively charged.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'surface_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4365e8dd-0fce-411a-8e51-bfd51ebf49dc',
    'chemistry',
    '12',
    'Thermodynamics',
    'Reactions Related To Enthalpies And Hesss Law',
    'medium',
    'single_correct',
    'The standard enthalpy of formation $$\Delta _fH^o$$ at 298 K for methane, CH<sub>4</sub>(g), is –74.8 kJ mol<sup>–1</sup>. The additional information required to determine the average energy for C – H bond formation would be :',
    '[{"id": "A", "text": "the dissociation energy of H<sub>2</sub> and enthalpy of sublimation of carbon"}, {"id": "B", "text": "latent heat of vapourization of methane"}, {"id": "C", "text": "the first four ionization energies of carbon and electron gain enthalpy of hydrogen"}, {"id": "D", "text": "the dissociation energy of hydrogen molecule, H<sub>2</sub>"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'The standard enthalpy of formation of $$C{H_4}$$ is given by the equation : 
<br><br>$$\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,$$ $$\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,$$ $$C\left( s \right) + 2{H_2}\left( g \right) \to C{H_4}\left( g \right)$$ 
<br><br>In order to calculate average energy for C – H bond formation
we should know the following data.
<br><br>C<sub>(graphite)</sub> $$ \to $$ C<sub>(g)</sub> ; $$\Delta H_f^o$$ = enthalpy of sublimation of carbon
<br><br>H<sub>2(g)</sub> $$ \to $$ 2H(g)
 ; $$\Delta $$H = bond dissociation energy of H<sub>2</sub>',
    4,
    -1,
    true,
    2006,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'thermodynamics'],
    true,
    now()
);
COMMIT;