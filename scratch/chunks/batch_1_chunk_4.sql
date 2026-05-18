-- Batch 1 - Chunk 4 of 6

BEGIN TRANSACTION;

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
    '$$(x - 2)Q(x) + 5 = {x^2} + bx + c$$<br><br>Put x = 2<br><br>5 = 2b + c + 4 .... (1)<br><br>$$\int_0^1 {({x^2} + bx + c)dx}  = 1$$<br><br>$$ \Rightarrow {1 \over 3} + {b \over 2} + c = 1$$<br><br>$${b \over 2} + c = {2 \over 3}$$ .... (2)<br><br>Solve (1) &amp;

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

COMMIT;