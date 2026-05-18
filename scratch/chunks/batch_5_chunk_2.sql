-- Batch 5 - Chunk 2 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b7c0263c-42d7-48f7-a3f9-e33854c0241f',
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
    '35ebedca-d59a-4b00-9ef7-bfc6bfba0833',
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
    'cbeb13dc-05c4-44cf-9077-1c7256ad95cb',
    'chemistry',
    '12',
    'Haloalkanes and Haloarenes',
    'Haloalkanes',
    'medium',
    'single_correct',
    'For the following reactions<br><br>
<img src="https://imagex.cdn.examgoal.net/7k9k2k5epjtbk/45f6cd7c-f0c3-41ad-8b97-848508f65f20/cd8e5300-3741-11ea-92dd-4b9c3519996f/file-7k9k2k5epjtbl-429w.jpg" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4e318ba9-e86f-46b4-9af4-56f6efb368c9',
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
    'b131d2c3-e4fb-4271-b892-45696dd8a4a6',
    'chemistry',
    '12',
    'Hydrocarbons',
    'Reaction Of Alkenes',
    'easy',
    'single_correct',
    'The major product in the following reaction is:
<img src="https://imagex.cdn.examgoal.net/7k9k2k5hlpttz/bb585948-6c51-438b-aa7d-28703054deb7/2a3cd570-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlptu0-271w.jpg" style="max-width: 100%;

COMMIT;