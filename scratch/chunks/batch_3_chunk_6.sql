-- Batch 3 - Chunk 6 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9721e418-2fbb-47e2-9d90-50bb94244e3c',
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
    '022c4e6f-3ee3-4587-9b0e-b0876325047e',
    'physics',
    '11',
    'Motion In A Plane',
    'Relative Motion In Two Dimension',
    'medium',
    'single_correct',
    'A person standing on an open ground hears the sound of a jet aeroplane, coming from north at an angle 60<sup>o</sup> with ground level. But he finds the aeroplane right vertically above his position. If v is the speed of sound, speed of the plane is :',
    '[{"id": "A", "text": "$${{\\sqrt 3 } \\over 2}$$v"}, {"id": "B", "text": "$${{2v} \\over {\\sqrt 3 }}$$"}, {"id": "C", "text": "v"}, {"id": "D", "text": "$${v \\over 2}$$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/wkj2kZD7A2Ftv74k6/DXRW80CY5Mz7oD2cCMZRKAkM3LlQO/zZmLmwYMaGJAc3ZQ2AQFgp/image.png" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '259e104a-79f0-4260-b411-7e87c80efbdb',
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
    '27e6983b-cac0-4462-8ae9-09f199cdb5c7',
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
    '6c5d0bb7-2630-45e7-a360-c6a63704becd',
    'physics',
    '12',
    'Properties of Matter',
    'Mechanical Properties Of Solids',
    'medium',
    'single_correct',
    'A uniform heavy rod of weight 10 kg ms<sup>$$-$$2</sup>, cross-sectional area 100 cm<sup>2</sup> and length 20 cm is hanging from a fixed support. Young modulus of the material of the rod is 2 $$\times$$ 10<sup>11</sup> Nm<sup>$$-$$2</sup>. Neglecting the lateral contraction, find the elongation of rod due to its own weight.',
    '[{"id": "A", "text": "2 $$\\times$$ 10<sup>$$-$$9</sup> m"}, {"id": "B", "text": "5 $$\\times$$ 10<sup>$$-$$8</sup> m"}, {"id": "C", "text": "4 $$\\times$$ 10<sup>$$-$$8</sup> m"}, {"id": "D", "text": "5 $$\\times$$ 10<sup>$$-$$10</sup> m"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1ku8e5d54/9489ac05-83b9-4efe-813e-ec9b0162d08f/ebe2b480-22b9-11ec-92a0-35c33c2a328d/file-1ku8e5d55.png" style="max-width: 100%;

COMMIT;