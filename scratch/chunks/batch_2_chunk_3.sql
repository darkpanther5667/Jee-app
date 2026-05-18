-- Batch 2 - Chunk 3 of 6

BEGIN TRANSACTION;

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
<br><br>If &nbsp;

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
(x &gt;

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
    'If the set of all $a \in \mathbf{R}$, for which the equation $2 x^2+(a-5) x+15=3 a$ has no real root, is the interval ( $\alpha, \beta$ ), and $X=|x \in Z ;

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
    'If &nbsp;

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
<p>$${t_n} = $$&nbsp;

COMMIT;