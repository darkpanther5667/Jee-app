-- JEE Test Series Massive Question Seed Batch 2 of 5
BEGIN TRANSACTION;
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '227017a9-0b26-4644-8168-c9202b42846c',
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
    'cc7ae47b-294a-47eb-9635-8a0af65a9efc',
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
    '49eed845-2add-4990-a799-374f02942e67',
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
    'f8a64f34-ebef-477c-9b68-92c915aa99d8',
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
    'a0d73fb5-7d5d-4125-86e7-1a5351c8bafa',
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
    'ca8405d7-7fc3-46f6-ab8e-047937fc2353',
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
    'e942ddc5-9eb9-447d-b14f-2e290cb14eec',
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
    'e1375fa4-daeb-4a86-9f7c-9d2fde91aa65',
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
    'b689990d-34be-495e-b255-38eae11178e9',
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
    '1cdfa4b2-90e8-48dc-b13e-a962b7ab6f24',
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
    '437e5070-f3c7-4ff5-b980-1fd8e8e4ba2f',
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
    'cf4e3250-125c-41c7-a8ce-7c8d934365c7',
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
    'ba8686e1-a392-43e6-983e-d611daf413b4',
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
    '20ccf1bb-3c2c-4de1-90b1-0382f6747f39',
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
    '204170d6-05fc-4c6e-a173-231c73049805',
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
    'e9284a46-2b6c-44e5-b3a6-4aebb83307e4',
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
    'af59f739-a347-40c9-a2eb-ea90cdc3f2bd',
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
    '4557469d-7eb5-4827-a172-ab6bb9928780',
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
    'e16267a3-ef35-49ec-a20e-316a7b264681',
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
    '8e9069ae-f325-465b-a53c-22a5bc614ac0',
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
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a4142701-ceea-46de-866c-0ff3d476a0a1',
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
    '70c65b0a-88a3-4ef3-828f-23eb475116b7',
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
    'ac310699-875a-4b81-9dd0-700691b7548f',
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
    '7a8d09db-c2b5-460e-8d89-5d38e33cfe37',
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
    'ac722478-9069-4ed8-9fe4-733a038e97b4',
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
COMMIT;