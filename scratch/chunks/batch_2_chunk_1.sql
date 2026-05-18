-- Batch 2 - Chunk 1 of 6

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
    '[{"id": "A", "text": "statement - 1 is true, statement - 2 is true;

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
where a, b, c $$ \in $$ R are non-zero distinct;

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

COMMIT;