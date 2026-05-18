-- Batch 1 - Chunk 5 of 6

BEGIN TRANSACTION;

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
    'Number of elements in A = 3<br><br>Number of elements in B = 5<br><br>Number of elements in A $$\times$$ B = 15<br><br><img src="https://imagex.cdn.examgoal.net/1kr002q13/6ac8f5dd-779d-48d0-b474-0d133af0fbd9/f7461570-e2b7-11eb-bdd2-7fe09049309d/file-1kr002q14.png" style="max-width: 100%;

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
&amp;

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
    'Consider a hyperbola H : x<sup>2</sup> $$-$$ 2y<sup>2</sup> = 4. Let the tangent at a <br>point P(4, $${\sqrt 6 }$$) meet the x-axis at Q and latus rectum at R(x<sub>1</sub>, y<sub>1</sub>), x<sub>1</sub> &gt;

COMMIT;