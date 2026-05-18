-- Batch 2 - Chunk 4 of 6

BEGIN TRANSACTION;

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
    'Let the centroid of $$\Delta $$PQR is (h, k) &amp;

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

COMMIT;