-- Batch 3 - Chunk 1 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a16e610e-104f-402a-b0cd-c68230b77878',
    'physics',
    '12',
    'Current Electricity',
    'Kirchhoffs Circuit Laws',
    'medium',
    'single_correct',
    'In the given circuit the cells have zero internal resistance. The currents (in Amperes) passing through resistance R<sub>1</sub> and R<sub>2</sub> respectively, are -
<br><br><img src="https://imagex.cdn.examgoal.net/FuShiJlqHtJJ0hvUS/DNOFxXjlCATLlfNzMMY3LUJ3QLuwZ/52tvvytE5W5uMoV8Y6i3IA/image.png" style="max-width: 100%;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e7bc2e57-4ffd-454b-940f-50da5345b6b4',
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
    '5b277133-7698-4e65-a089-d5f0d8124332',
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
    '01b789dd-e458-4259-89c1-3a30d3058253',
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
    '37b15774-4237-4451-9736-f892cba5a86d',
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
<p><p>However, (R) does <strong>not</strong> directly explain <strong>why</strong> a negative potential suppresses electron emission;

COMMIT;