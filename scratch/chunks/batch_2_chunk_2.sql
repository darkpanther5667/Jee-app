-- Batch 2 - Chunk 2 of 6

BEGIN TRANSACTION;

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
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lwk6ko9r/1d69134a-fee4-473a-84cb-efe47fa9ec3c/ecc716f0-1985-11ef-a7bd-376696e028ce/file-1lwk6ko9s.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lwk6ko9r/1d69134a-fee4-473a-84cb-efe47fa9ec3c/ecc716f0-1985-11ef-a7bd-376696e028ce/file-1lwk6ko9s.png" loading="lazy" style="max-width: 100%;

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
    '<img src="https://imagex.cdn.examgoal.net/bI7E4RshlKcIu2wdV/xIqwrYt1hS4IELTl3VCkgmR4vmaYU/DfHML9XD7Sf69KWebbyL46/image.png" style="max-width: 100%;

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

COMMIT;