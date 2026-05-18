-- JEE Test Series Massive Question Seed Batch 3 of 5
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
<br><br><img src="https://imagex.cdn.examgoal.net/FuShiJlqHtJJ0hvUS/DNOFxXjlCATLlfNzMMY3LUJ3QLuwZ/52tvvytE5W5uMoV8Y6i3IA/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 10th January Morning Slot Physics - Current Electricity Question 276 English">',
    '[{"id": "A", "text": "0.5, 0"}, {"id": "B", "text": "0, 1"}, {"id": "C", "text": "1, 2"}, {"id": "D", "text": "2, 2"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'i<sub>1</sub> = $${{10} \over {20}}$$ = 0.5A
<br><br>i<sub>2</sub> = 0',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
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
<p><p>However, (R) does <strong>not</strong> directly explain <strong>why</strong> a negative potential suppresses electron emission; it only shows <strong>how much</strong> potential is needed for different frequencies.</p></p>

<p>Therefore, <strong>both (A) and (R) are true, but (R) is not the correct explanation of (A)</strong>.</p>',
    4,
    -1,
    true,
    2025,
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
    '60d1706b-0f9e-4e44-859e-eac637e5a297',
    'physics',
    '12',
    'Electromagnetic Induction',
    'Inductance Self And Mutual',
    'medium',
    'single_correct',
    '<p>A small square loop of wire of side $$l$$ is placed inside a large square loop of wire $$\mathrm{L}(\mathrm{L}&gt;&gt;l)$$. Both loops are coplanar and their centres coincide at point $$\mathrm{O}$$ as shown in figure. The mutual inductance of the system is :</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l6eozgfw/9a58986b-6ae5-422b-811e-0c741c90d69b/987183c0-13c3-11ed-aaaa-fbfc70dd81e0/file-1l6eozgfx.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l6eozgfw/9a58986b-6ae5-422b-811e-0c741c90d69b/987183c0-13c3-11ed-aaaa-fbfc70dd81e0/file-1l6eozgfx.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 25th July Morning Shift Physics - Electromagnetic Induction Question 55 English"></p>',
    '[{"id": "A", "text": "$$\\frac{2 \\sqrt{2} \\mu_{0} \\mathrm{~L}^{2}}{\\pi l}$$"}, {"id": "B", "text": "$$\\frac{\\mu_{0} l^{2}}{2 \\sqrt{2} \\pi \\mathrm{L}}$$"}, {"id": "C", "text": "$$\\frac{2 \\sqrt{2} \\mu_{0} l^{2}}{\\pi \\mathrm{L}}$$"}, {"id": "D", "text": "$$\n\\frac{\\mu_{0} \\mathrm{~L}^{2}}{2 \\sqrt{2} \\pi l}\n$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>We know $$\phi  = Mi$$</p>
<p>Let i current be flowing in the larger loop</p>
<p>$$ \Rightarrow \phi  \simeq \left[ {4 \times {{{\mu _0}i} \over {4\pi (L/2)}}[\sin 45^\circ  + \sin 45^\circ ]} \right] \times $$ Area</p>
<p>$$ = {{2\sqrt 2 {\mu _0}i} \over {\pi L}} \times {I^2}$$</p>
<p>$$ \Rightarrow M = {\phi  \over i} = {{2\sqrt 2 {\mu _0}{I^2}} \over {\pi L}}$$</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electromagnetic_induction'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3ab9571a-8ac6-4a90-89a8-395be19ff7e1',
    'physics',
    '12',
    'Electromagnetic Waves',
    'Displacement Current And Properties Of Em Waves',
    'easy',
    'single_correct',
    'A plane electromagnetic wave of frequency
25 GHz is propagating in vacuum along the
z-direction. At a particular point in space and
time, the magnetic field is given by $$\overrightarrow B  = 5 \times {10^{ - 8}}\widehat jT$$. The corresponding electric field $$\overrightarrow E $$ is (speed of light c = 3 × 10<sup>8</sup> ms<sup>–1</sup>)',
    '[{"id": "A", "text": "15 $$\\widehat i$$V / m"}, {"id": "B", "text": "-15 $$\\widehat i$$V / m"}, {"id": "C", "text": "1.66 \u00d7 10<sup>\u201316</sup> $$\\widehat i$$V / m"}, {"id": "D", "text": "-1.66 \u00d7 10<sup>\u201316</sup> $$\\widehat i$$V / m"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '$$\overrightarrow E  = \overrightarrow B  \times \overrightarrow V $$
<br><br>= $$\left( {5 \times {0^{ - 8}}\widehat j} \right) \times \left( {3 \times {{10}^8}\widehat k} \right)$$
<br><br>= $${15\,\widehat i}$$ V/m',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electromagnetic_waves'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3386237b-4460-4af9-b6a0-aa7fdf73b625',
    'physics',
    '12',
    'Electromagnetic Waves',
    'Displacement Current And Properties Of Em Waves',
    'medium',
    'single_correct',
    '<p>Due to presence of an em-wave whose electric component is given by $E=100 \sin (\omega t-k x) \mathrm{NC}^{-1}$ a cylinder of length 200 cm holds certain amount of em-energy inside it. If another cylinder of same length but half diameter than previous one holds same amount of em-energy, the magnitude of the electric field of the corresponding em-wave should be modified as</p>',
    '[{"id": "A", "text": "$50 \\sin (\\omega \\mathrm{t}-\\mathrm{kx}) \\mathrm{NC}^{-1}$"}, {"id": "B", "text": "$400 \\sin (\\omega \\mathrm{t}-\\mathrm{kx}) \\mathrm{NC}^{-1}$"}, {"id": "C", "text": "$200 \\sin (\\omega t-k x) \\mathrm{NC}^{-1}$"}, {"id": "D", "text": "$25 \\sin (\\omega \\mathrm{t}-\\mathrm{kx}) \\mathrm{NC}^{-1}$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>We know,</p>
<p>Energy density $$ = {1 \over 2}{\varepsilon _0}{E^2}C$$</p>
<p>$$ \Rightarrow {\text{Energy} \over \text{Volume}} = {1 \over 2}{\varepsilon _0}{E^2}C$$</p>
<p>$$ \Rightarrow \text{Energy}= {1 \over 2}{\varepsilon _0}E_c^2x\,vol$$</p>
<p>Given that, $${\left( {\text{Energy}} \right)_1} = {\left( {\text{Energy}} \right)_2}$$</p>
<p>$$ \Rightarrow {1 \over 2}{\varepsilon _0}E_1^2cx\pi R_1^2{L_1} = {1 \over 2}{\varepsilon _0}E_2^2cx\pi R_2^2{L_2}$$</p>
<p>$$ \Rightarrow E_1^2R_1^2{L_1} = E_2^2R_2^2{L_1}\,(as\,{L_1} = {L_2})$$</p>
<p>$$ \Rightarrow E_1^2R_1^2 = E_2^2R_2^2$$</p>
<p>$$ \Rightarrow {E_1}{R_1} = {E_2}{R_2}$$</p>
<p>$$ \Rightarrow {E_1}{R_1} = {E_2}\left( {{{{R_1}} \over 2}} \right)\,\left( {As\,{R_2} = {{{R_1}} \over 2}} \right)$$</p>
<p>$$ \Rightarrow {E_2} = 2{E_1} = 2 \times 100$$</p>
<p>$$ \Rightarrow {E_2} = 200\,N/C$$</p>
<p>Hence, option (3) is correct.</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electromagnetic_waves'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'cc3c20b7-3219-4c3b-8f92-134bb05aec9b',
    'physics',
    '12',
    'Electronic Devices',
    'Digital Circuits',
    'easy',
    'single_correct',
    'Which of the following gives a reversible operation?',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dmrlc6/34599ddb-ef93-43b5-a571-83c3413258a5/21d35660-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dmrlc7-182w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dms7hv/ea6e1a3a-4d21-4a1f-b47c-2012f77e1717/32f15b40-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dms7hw-179w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dmsz08/3c12f2c8-b123-4f06-963e-e4ac5d01b908/48316b80-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dmsz09-165w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5dmtdux/7072e020-3b79-4e06-92d5-1161d0eaa521/53aa9590-36aa-11ea-92dd-4b9c3519996f/file-7k9k2k5dmtduy-165w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'NOT gate is reversible gate because the input
signal can be recovered. Here It will behave as a NOT gate. Hence gives reversible operation.
<img src="https://imagex.cdn.examgoal.net/7kd4dk6ho1umu/49d6c8fa-78ef-402d-aba0-3ccc3b88b762/82342f60-4cae-11ea-b62d-51ccc5d4afb6/file-7kd4dk6ho1umv-322w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 7th January Morning Slot Physics - Semiconductor Question 156 English Explanation">',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electronic_devices'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '0f0e83b1-0ab6-4ce7-b4c6-b159abb8b1de',
    'physics',
    '12',
    'Electronic Devices',
    'Semiconductor And P N Junction Diode',
    'medium',
    'single_correct',
    '<p>In the given circuit, the breakdown voltage of the Zener diode is $$3.0 \mathrm{~V}$$. What is the value of $$\mathrm{I}_{\mathrm{z}}$$ ?</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/6y3zli1lsfm7q5u/64cb94a9-ecfe-47e7-9a05-53165c4f4a08/4e060120-c7d2-11ee-a6e7-91ff3070e761/file-6y3zli1lsfm7q5v.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/6y3zli1lsfm7q5u/64cb94a9-ecfe-47e7-9a05-53165c4f4a08/4e060120-c7d2-11ee-a6e7-91ff3070e761/file-6y3zli1lsfm7q5v.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline" alt="JEE Main 2024 (Online) 29th January Morning Shift Physics - Semiconductor Question 34 English"></p>',
    '[{"id": "A", "text": "3.3 mA"}, {"id": "B", "text": "10 mA"}, {"id": "C", "text": "5.5 mA"}, {"id": "D", "text": "7 mA"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lt2saq9l/d2272837-507b-46bc-a645-f1cefcdc9fae/1f3e4da0-d490-11ee-9383-19a774a872fb/file-1lt2saq9m.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lt2saq9l/d2272837-507b-46bc-a645-f1cefcdc9fae/1f3e4da0-d490-11ee-9383-19a774a872fb/file-1lt2saq9m.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline" alt="JEE Main 2024 (Online) 29th January Morning Shift Physics - Semiconductor Question 34 English Explanation"></p>
<p>$$\mathrm{V}_{\mathrm{z}}=3 \mathrm{~V}$$</p>
<p>Let potential at $$\mathrm{B}=0 \mathrm{~V}$$</p>
<p>Potential at $$E\left(V_E\right)=10 V$$</p>
<p>$$\begin{aligned}
&amp; V_C=V_A=3 V \\
&amp; I_z+I_1=I \\
&amp; I=\frac{10-3}{1000}=\frac{7}{1000} A \\
&amp; I_1=\frac{3}{2000} A
\end{aligned}$$</p>
<p>Therefore $$I_z=\frac{7-1.5}{1000}=5.5 \mathrm{~mA}$$</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electronic_devices'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c385483c-1d65-460f-bbb7-9a42a4d72c12',
    'physics',
    '12',
    'Electrostatics',
    'Electric Flux And Gauss Law',
    'medium',
    'single_correct',
    'Let a total charge 2Q be distributed in a sphere of radius R, with the charge density given by $$\rho $$(r) = kr, where
r is the distance from the centre. Two charges A and B, of –Q each, are placed on diametrically opposite
points, at equal distance, $$a$$ from the centre. If A and B do not experience any force, then :',
    '[{"id": "A", "text": "$$a = {8^{ - 1/4}}R$$"}, {"id": "B", "text": "$$a = {2^{ - 1/4}}R$$"}, {"id": "C", "text": "$$a = {{3R} \\over {{2^{1/4}}}}$$"}, {"id": "D", "text": "$$a = {R \\over {\\sqrt 3 }}$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Total charge = 2Q
<br>Charging density $$\rho $$ = kr
<br>Radius = R
<img src="https://imagex.cdn.examgoal.net/jf762wkjxyeouqp/3180be3a-3707-447b-b5db-ff17fc9a5305/473c4110-a3b5-11e9-902e-23ffedc9804e/file-jf762wkjxyeouqq.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 12th April Evening Slot Physics - Electrostatics Question 184 English Explanation 1">
Charge enclosed in the sphere,
<br>q<sub>in</sub> = $$\int\limits_0^R {\rho dV} $$
<br><br>$$ \Rightarrow $$ 2Q = $$\int\limits_0^R {kr4\pi {r^2}dr} $$
<br><br>$$ \Rightarrow $$ 2Q = $$k4\pi \int\limits_0^R {{r^3}dr} $$
<br><br>$$ \Rightarrow $$ 2Q = $$k4\pi {{{R^4}} \over 4}$$
<br><br>$$ \Rightarrow $$ k = $${{2Q} \over {\pi {R^4}}}$$ ........... (1)
<br><br>Force on charge at A will be due to charge at B and due to force applied by the charge in sphere.
<img src="https://imagex.cdn.examgoal.net/jf762wkjxyf4pmq/f9935184-dfef-4f7b-8b7e-d82737961f4b/003bea20-a3b7-11e9-902e-23ffedc9804e/file-jf762wkjxyf4pmr.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 12th April Evening Slot Physics - Electrostatics Question 184 English Explanation 2">
<br><br>Here F<sub>sphere</sub> = EQ
<br><br>Using Gauss law, we can find electric field at point A due to sphere,
<br><br>∮ $$\overrightarrow E .d\overrightarrow A $$ = $${{{q_{in}}} \over {{ \in _0}}}$$
<br><br>$$ \Rightarrow $$ $$E\left( {4\pi {a^2}} \right)$$ = $${{\int\limits_0^a {\rho dV} } \over {{ \in _0}}}$$
<br><br>$$ \Rightarrow $$ $$E\left( {4\pi {a^2}} \right)$$ = $${{k4\pi {{{a^4}} \over 4}} \over {{ \in _0}}}$$
<br><br>$$ \Rightarrow $$ E = $${{k{a^2}} \over {4{ \in _0}}}$$
<br><br>As on charge A net force is zero then,
<br><br> F<sub>AB</sub> = F<sub>sphere</sub>
<br><br>$$ \Rightarrow $$ $${{Q \times Q} \over {4\pi { \in _0}{{\left( {2a} \right)}^2}}}$$ = $${{k{a^2}} \over {4{ \in _0}}}$$ $$ \times $$ Q
<br><br>$$ \Rightarrow $$ $${Q \over {4\pi {a^2}}} = k{a^2}$$
<br><br>$$ \Rightarrow $$ $${Q \over {4\pi {a^2}}} = {{2Q} \over {\pi {R^4}}}{a^2}$$ [ from equation (1)]
<br><br>$$ \Rightarrow $$ $$8{a^4} = {R^4}$$
<br><br>$$ \Rightarrow $$ $$a = {8^{ - 1/4}}R$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electrostatics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2632fde6-3f52-469b-a2b4-a47df049d22d',
    'physics',
    '12',
    'Electrostatics',
    'Electric Charges And Coulombs Law',
    'easy',
    'single_correct',
    '<p>A charge of $$4 \,\mu \mathrm{C}$$ is to be divided into two. The distance between the two divided charges is constant. The magnitude of the divided charges so that the force between them is maximum, will be :</p>',
    '[{"id": "A", "text": "$$1 \\,\\mu \\mathrm{C}$$ and $$3 \\,\\mu\\mathrm{C}$$"}, {"id": "B", "text": "$$2 \\,\\mu \\mathrm{C}$$ and $$2\\, \\mu \\mathrm{C}$$"}, {"id": "C", "text": "0 and $$4\\, \\mu\\, \\mathrm{C}$$"}, {"id": "D", "text": "$$1.5 \\,\\mu \\mathrm{C}$$ and $$2.5\\, \\mu \\mathrm{C}$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l6yvpl4z/f567a908-d37f-4672-8f56-4c0e1c02e1d8/92df5930-1edd-11ed-8851-99197a0d39b5/file-1l6yvpl50.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l6yvpl4z/f567a908-d37f-4672-8f56-4c0e1c02e1d8/92df5930-1edd-11ed-8851-99197a0d39b5/file-1l6yvpl50.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 27th July Evening Shift Physics - Electrostatics Question 110 English Explanation"></p>
<p>so $$F = {{kq(4 - q) \times {{10}^{ - 12}}} \over {{r^2}}}$$</p>
<p>so F<sub>max</sub> will be at q = 2 $$\mu$$C</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'electrostatics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'adaa11f2-220f-49be-af5e-f63047373383',
    'physics',
    '12',
    'Geometrical Optics',
    'Optical Instruments',
    'easy',
    'single_correct',
    'The image formed by an objective of a compound microscope is',
    '[{"id": "A", "text": "virtual and diminished"}, {"id": "B", "text": "real an diminished"}, {"id": "C", "text": "real and enlarged"}, {"id": "D", "text": "virtual and enlarged"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'A real, inverted and enlarged image of the object is formed by the objective lens of a compound microscope.',
    4,
    -1,
    true,
    2003,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'geometrical_optics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b68dfda6-3f2b-43cc-9d87-02e9591b80a7',
    'physics',
    '12',
    'Geometrical Optics',
    'Refraction Tir And Prism',
    'medium',
    'single_correct',
    'A ray of light passes from a denser medium to a rarer medium at an angle of incidence i. The reflected and refracted rays make an angle of 90$$^\circ$$ with each other. The angle of reflection and refraction are respectively r and r''. The critical angle is given by<br><br><img src="https://imagex.cdn.examgoal.net/1krtmemlb/0a02764b-2546-411d-a371-664dc4a3ad4c/060076f0-f302-11eb-a506-37d290d1d40d/file-1krtmemlc.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 22th July Evening Shift Physics - Geometrical Optics Question 140 English">',
    '[{"id": "A", "text": "sin<sup>$$-$$1</sup> (tan r)"}, {"id": "B", "text": "sin<sup>$$-$$1</sup> (cot r)"}, {"id": "C", "text": "sin<sup>$$-$$1</sup> (tan r'')"}, {"id": "D", "text": "tan<sup>$$-$$1</sup> (sin i)"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1krusoaf8/afccb84b-0631-4873-827c-d9a60ef90ad4/521e0840-f3a7-11eb-a605-b34dacb82f1b/file-1krusoaf9.jpeg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 22th July Evening Shift Physics - Geometrical Optics Question 140 English Explanation"> <br><br>$$n\sin {\theta _c} = 1$$<br><br>$$\sin {\theta _c} = {1 \over n}$$<br><br>$$i = r$$<br><br>$$r'' + r + 90^\circ  = 180^\circ $$<br><br>$$r'' = 90^\circ  - r = 90^\circ  - i$$<br><br>$$\cos r'' = \cos (90^\circ  - i)$$<br><br>$$\cos r'' = \sin i$$ ..... (i)<br><br>$$n\sin i = \sin r''$$ ..... (ii)<br><br>$$n = \tan r''$$<br><br>$${1 \over {\sin {\theta _c}}} = \tan r''$$<br><br>$$\sin {\theta _c} = \cot r''$$<br><br>$$\sin {\theta _c} = \tan r$$<br><br>$${\theta _c} = {\sin ^{ - 1}}(\tan r)$$',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'geometrical_optics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'aa14d2ed-6110-4812-bb5a-c70605a35730',
    'physics',
    '12',
    'Geometrical Optics',
    'Lenses',
    'hard',
    'single_correct',
    '<p>A concave-convex lens of refractive index 1.5 and the radii of curvature of its surfaces are 30 cm and 20 cm, respectively. The concave surface is upwards and is filled with a liquid of refractive index 1.3. The focal length of the liquid-glass combination will be</p>',
    '[{"id": "A", "text": "<p>$ \\frac{700}{11} $ cm</p>"}, {"id": "B", "text": "<p>$ \\frac{600}{11} $ cm</p>"}, {"id": "C", "text": "<p>$ \\frac{800}{11} $ cm</p>"}, {"id": "D", "text": "<p>$ \\frac{500}{11} $ cm</p>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9nqqvxs/c2a01898-0dd5-4525-86f6-5991c2272576/fa033300-1cd9-11f0-9f5f-0b480a650056/file-jaoe38c1m9nqqvxt.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/jaoe38c1m9nqqvxs/c2a01898-0dd5-4525-86f6-5991c2272576/fa033300-1cd9-11f0-9f5f-0b480a650056/file-jaoe38c1m9nqqvxt.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline" alt="JEE Main 2025 (Online) 8th April Evening Shift Physics - Geometrical Optics Question 18 English Explanation"></p>
<p>$$\begin{aligned}
\frac{1}{\mathrm{f}} &amp; =\left(\frac{1.3-1}{1}\right)\left(\frac{1}{\infty}-\frac{1}{-30}\right) \\
&amp; =\left(\frac{1.5-1}{1}\right)\left(\frac{1}{-30}-\frac{1}{-30}\right) \\
&amp; =\frac{0.3}{30}+\frac{0.5}{60}=\frac{1}{100}+\frac{1}{120} \\
&amp; =\frac{6+5}{600}=\frac{11}{600} \\
\mathrm{f} &amp; =\frac{600}{11} \mathrm{~cm}
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'geometrical_optics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9913dd8b-ac8d-4ceb-9767-1a45b1d6dde5',
    'physics',
    '11',
    'Gravitation',
    'Keplers Law And Universal Law Of Gravitation',
    'medium',
    'single_correct',
    'A solid sphere of radius R gravitationally attracts a particle placed at 3R from its centre with a force F<sub>1</sub>. Now a spherical cavity of radius $$\left( {{R \over 2}} \right)$$ is made in the sphere (as shown in figure) and the force becomes F<sub>2</sub>. The value of F<sub>1</sub> : F<sub>2</sub> is<br><br><img src="https://imagex.cdn.examgoal.net/1klse24x4/4859a6d7-a609-43ae-b23b-345e599fe470/4caf4e80-7b8b-11eb-a157-49f87e3afb79/file-1klse24x5-307w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Morning Shift Physics - Gravitation Question 133 English">',
    '[{"id": "A", "text": "36 : 25"}, {"id": "B", "text": "41 : 50"}, {"id": "C", "text": "50 : 41"}, {"id": "D", "text": "25 : 36"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$${g_1} = {{GM} \over {{{(3R)}^2}}} = {{GM} \over {9{R^2}}}$$<br><br>$${g^2} = {{GM} \over {9{R^2}}} - {{G\left( {{M \over 8}} \right)} \over {{{\left( {3R - {R \over 2}} \right)}^2}}}$$<br><br>$$ = {{GM} \over {9{R^2}}} - {{GM} \over {{R^2}50}} = {{41} \over {9 \times 50}}{{GM} \over {{R^2}}}$$<br><br>$${{{g_1}} \over {{g_2}}} = {{41} \over {50}}$$<br><br>$$ \therefore $$ $$ {{{F_1}} \over {{F_2}}} = {{m{g_1}} \over {m{g_2}}} = {{41} \over {50}}$$',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'gravitation'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1185691a-03af-472a-9131-6a21d18744b4',
    'physics',
    '11',
    'Gravitation',
    'Escape Speed And Motion Of Satellites',
    'medium',
    'single_correct',
    '<p>Given below are two statements:</p>
<p>Statement I: If $$\mathrm{E}$$ be the total energy of a satellite moving around the earth, then its potential energy will be $$\frac{E}{2}$$.</p>
<p>Statement II: The kinetic energy of a satellite revolving in an orbit is equal to the half the magnitude of total energy $$\mathrm{E}$$.</p>
<p>In the light of the above statements, choose the most appropriate answer from the options given below</p>',
    '[{"id": "A", "text": "Both Statement I and Statement II are incorrect"}, {"id": "B", "text": "Statement I is incorrect but Statement II is correct"}, {"id": "C", "text": "Statement I is correct but Statement II is incorrect"}, {"id": "D", "text": "Both Statement I and Statement II are correct"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>A satellite in orbit around a planet is subject to two main forces: gravitational force, which is trying to pull it towards the planet, and its own kinetic energy or inertia, which is trying to keep it moving in a straight line. The balance of these two forces results in the satellite moving in a circular or elliptical orbit.</p>
<p>The gravitational potential energy ($U$) of the satellite is given by the formula:</p>
<p>$U = -\frac{GMm}{R}$</p>
<p>where $G$ is the gravitational constant, $M$ is the mass of the Earth, $m$ is the mass of the satellite, and $R$ is the radius of the orbit. The negative sign indicates that work would have to be done to remove the satellite from the Earth&#39;s gravitational influence.</p>
<p>The kinetic energy ($K$) of the satellite is given by the formula:</p>
<p>$K = \frac{GMm}{2R}$</p>
<p>This is obtained from the fact that for a satellite in stable orbit, the gravitational force must be equal to the centripetal force required to keep the satellite moving in a circle. From this, we can derive an expression for the velocity of the satellite, and hence its kinetic energy.</p>
<p>The total mechanical energy ($E$) of the satellite, which is the sum of its kinetic and potential energy, is therefore:</p>
<p>$E = K + U = \frac{GMm}{2R} - \frac{GMm}{R} = -\frac{GMm}{2R}$</p>
<p>So the potential energy $U$ is $-2E$, and the kinetic energy $K$ is $-E$. Thus, the statement &quot;If $E$ be the total energy of a satellite moving around the earth, then its potential energy will be $2E$&quot; is correct, and the statement &quot;The kinetic energy of a satellite revolving in an orbit is equal to the half the magnitude of total energy $E$&quot; is incorrect.</p>',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'gravitation'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a1462d8d-73ca-4b33-97dc-c49cd6f527f7',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Zeroth And First Law Of Thermodynamics',
    'easy',
    'single_correct',
    'A thermally insulated vessel contains an ideal gas of molecular mass $$M$$ and ratio of specific heats $$\gamma .$$ It is moving with speed $$v$$ and it''s suddenly brought to rest. Assuming no heat is lost to the surroundings, Its temperature increases by:',
    '[{"id": "A", "text": "$${{\\left( {\\gamma  - 1} \\right)} \\over {2\\gamma R}}M{v^2}K$$"}, {"id": "B", "text": "$${{\\gamma {M^2}v} \\over {2R}}K$$"}, {"id": "C", "text": "$${{\\left( {\\gamma  - 1} \\right)} \\over {2R}}M{v^2}K$$"}, {"id": "D", "text": "$${{\\left( {\\gamma  - 1} \\right)} \\over {2\\left( {\\gamma  + 1} \\right)R}}M{v^2}K$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Here, work done is zero.
<br>So, loss in kinetic energy $$=$$ change in internal energy of gas
<br>$${1 \over 2}m{v^2} = n{C_v}\Delta T = n{R \over {\gamma  - 1}}\Delta T$$
<br>$${1 \over 2}m{v^2} = {m \over M}{R \over {\gamma  - 1}}\Delta T$$
<br>$$\therefore$$ $$\Delta T = {{M{v^2}\left( {\gamma  - 1} \right)} \over {2R}}K$$',
    4,
    -1,
    true,
    2011,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'heat_and_thermodynamics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c91cf960-2f7b-4ed9-aae0-f7415ec63c91',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Degree Of Freedom And Law Of Equipartition Of Energy',
    'medium',
    'single_correct',
    'A gas mixture consists of 3 moles of oxygen and 5 moles of argon at temperature T. considering only translational and rotational modes, the total internal energy of the system is :',
    '[{"id": "A", "text": "12 RT"}, {"id": "B", "text": "20 RT"}, {"id": "C", "text": "4 RT"}, {"id": "D", "text": "15 RT"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'U $$ = {{{f_1}} \over 2}{n_1}RT + {{{f_2}} \over 2}{n_2}RT$$
<br><br>$$ = {5 \over 2}\left( {3RT} \right) + {3 \over 2} \times 5RT$$
<br><br>U $$ = 15RT$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'heat_and_thermodynamics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '876b1576-3d7e-41da-8105-35c924c87535',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Kinetic Theory Of Gases And Gas Laws',
    'medium',
    'single_correct',
    'A balloon carries a total load of 185 kg at normal pressure and temperature of 27$$^\circ$$C. What load will the balloon carry on rising to a height at which the barometric pressure is 45 cm of Hg and the temperature is $$-$$7$$^\circ$$C. Assuming the volume constant?',
    '[{"id": "A", "text": "181.46 kg"}, {"id": "B", "text": "214.15 kg"}, {"id": "C", "text": "219.07 kg"}, {"id": "D", "text": "123.54 kg"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'P<sub>m</sub> = $$\rho$$RT<br><br>$$\therefore$$ $${{{P_1}} \over {{P_2}}} = {{{\rho _1}{T_1}} \over {{\rho _1}{T_2}}}$$<br><br>$${{{\rho _1}} \over {{\rho _2}}} \Rightarrow {{{P_1}{T_2}} \over {{P_2}{T_1}}} = \left( {{{76} \over {45}}} \right) \times {{266} \over {300}}$$<br><br>$${{{\rho _1}} \over {{\rho _2}}} \Rightarrow {{{M_1}} \over {{M_2}}} = {{76 \times 266} \over {45 \times 300}}$$<br><br>$$\therefore$$ $${M_2} \Rightarrow {{45 \times 300 \times 185} \over {76 \times 266}} = 123.54$$ kg',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'heat_and_thermodynamics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'd7d6e938-80d6-4865-ad4c-f3f0e0596e57',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Degree Of Freedom And Law Of Equipartition Of Energy',
    'medium',
    'single_correct',
    '<p>The rms speed of oxygen molecule in a vessel at particular temperature is $$\left(1+\frac{5}{x}\right)^{\frac{1}{2}} v$$, where $$v$$ is the average speed of the molecule. The value of $$x$$ will be:</p>
<p>$$\left(\right.$$ Take $$\left.\pi=\frac{22}{7}\right)$$</p>',
    '[{"id": "A", "text": "4"}, {"id": "B", "text": "8"}, {"id": "C", "text": "28"}, {"id": "D", "text": "27"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>The relationship between the root-mean-square (rms) speed ($$v_{rms}$$) and the average speed ($$v_{avg}$$) of molecules in a gas can be found using the Maxwell-Boltzmann distribution. The rms speed and average speed are related as follows:</p>

$$v_{rms} = \sqrt{\frac{3RT}{M}}$$

$$v_{avg} = \sqrt{\frac{8RT}{\pi M}}$$

<p>Where:</p>
<ul>
    <li>$$R$$ is the ideal gas constant</li>
    <li>$$T$$ is the temperature in Kelvin</li>
    <li>$$M$$ is the molar mass of the gas</li>
    <li>$$\pi$$ is the mathematical constant pi</li>
</ul>

<p>In this problem, the rms speed of the oxygen molecule is given by:</p>

$$v_{rms} = \left(1+\frac{5}{x}\right)^{\frac{1}{2}} v_{avg}$$

<p>Now, let''s divide the expression for $$v_{rms}$$ by the expression for $$v_{avg}$$:</p>

$$\frac{v_{rms}}{v_{avg}} = \frac{\sqrt{\frac{3RT}{M}}}{\sqrt{\frac{8RT}{\pi M}}} = \left(1+\frac{5}{x}\right)^{\frac{1}{2}}$$

<p>By simplifying the expression, we get:</p>

$$\frac{v_{rms}}{v_{avg}} = \frac{\sqrt{3}}{\sqrt{\frac{8}{\pi}}} = \left(1+\frac{5}{x}\right)^{\frac{1}{2}}$$

<p>Square both sides of the equation:</p>

$$\frac{3}{\frac{8}{\pi}} = 1 + \frac{5}{x}$$

<p>Now we will substitute the provided value of $$\pi = \frac{22}{7}$$:</p>

$$\frac{3}{\frac{8}{\frac{22}{7}}} = 1 + \frac{5}{x}$$

<p>By simplifying the expression, we get:</p>

$$\frac{3 \cdot \frac{22}{7}}{8} = 1 + \frac{5}{x}$$

<p>Now let''s solve for $$x$$:</p>

$$\frac{66}{56} - 1 = \frac{5}{x}$$

$$\frac{10}{56} = \frac{5}{x}$$

<p>Multiplying both sides by $$x$$:</p>

$$\frac{10}{56}x = 5$$

<p>Finally, solving for $$x$$:</p>

$$x = \frac{5 \cdot 56}{10} = 28$$

<p>So, the value of $$x$$ is $$\boxed{28}$$.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'heat_and_thermodynamics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b943b26b-f89b-46b9-be7f-d36a708feb79',
    'physics',
    '12',
    'Heat and Thermodynamics',
    'Heat Transfer',
    'medium',
    'single_correct',
    '<p>The temperature of a body in air falls from $40^{\circ} \mathrm{C}$ to $24^{\circ} \mathrm{C}$ in 4 minutes. The temperature of the air is $16^{\circ} \mathrm{C}$. The temperature of the body in the next 4 minutes will be :</p>',
    '[{"id": "A", "text": "$\\frac{28}{3}{ }^{\\circ} \\mathrm{C}$"}, {"id": "B", "text": "$\\frac{56}{3}{ }^{\\circ} \\mathrm{C}$"}, {"id": "C", "text": "$\\frac{42}{3}{ }^{\\circ} \\mathrm{C}$"}, {"id": "D", "text": "$\\frac{14}{3}{ }^{\\circ} \\mathrm{C}$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>$$\begin{aligned}
& \frac{\mathrm{T}_2-\mathrm{T}_1}{\mathrm{t}}=\mathrm{K}\left[\mathrm{~T}_{\text {avg }}-\mathrm{T}_{\mathrm{s}}\right] \\
& \mathrm{T}_1=24^{\circ} \mathrm{C} ; \mathrm{T}_2=40^{\circ} \mathrm{C}, \mathrm{t}=4, \mathrm{~T}_{\mathrm{s}}=16^{\circ} \mathrm{C} \\
& \frac{40-24}{4}=\mathrm{K}[32-16] \\
& \mathrm{K}=\frac{4}{16}=\frac{1}{4} \\
& \text { Now } \frac{24-\mathrm{T}}{4}=\mathrm{K}\left[\frac{\mathrm{~T}+24}{2}-16\right] \\
& 24-\mathrm{T}=\frac{\mathrm{T}-16}{2}+16 \\
& \frac{3 \mathrm{~T}}{2}=28 \\
& \mathrm{~T}=\frac{56}{3} \mathrm{C}
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'heat_and_thermodynamics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ad6961c9-fd03-48ca-bac5-68227e633b9a',
    'physics',
    '12',
    'Laws of Motion',
    'Friction Force',
    'medium',
    'single_correct',
    '<p>A block of mass 40 kg slides over a surface, when a mass of 4 kg is suspended through an inextensible massless string passing over frictionless pulley as shown below.</p>
<p>The coefficient of kinetic friction between the surface and block is 0.02. The acceleration of block is. (Given g = 10 ms<sup>$$-$$2</sup>.)</p>
<p> <img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l55fktpc/4f8be818-5ada-45af-ac03-4cbb21cbe447/8a2a1ef0-fadf-11ec-830f-2bceee3af987/file-1l55fktpd.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l55fktpc/4f8be818-5ada-45af-ac03-4cbb21cbe447/8a2a1ef0-fadf-11ec-830f-2bceee3af987/file-1l55fktpd.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 29th June Evening Shift Physics - Laws of Motion Question 72 English"></p>',
    '[{"id": "A", "text": "1 ms<sup>$$-$$2</sup>"}, {"id": "B", "text": "1/5 ms<sup>$$-$$2</sup>"}, {"id": "C", "text": "4/5 ms<sup>$$-$$2</sup>"}, {"id": "D", "text": "8/11 ms<sup>$$-$$2</sup>"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l5gh4osf/8fa79ab2-c295-4528-98d8-9100492cb6a4/3ad33800-00f2-11ed-ba34-71a54c393c2b/file-1l5gh4osg.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l5gh4osf/8fa79ab2-c295-4528-98d8-9100492cb6a4/3ad33800-00f2-11ed-ba34-71a54c393c2b/file-1l5gh4osg.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2022 (Online) 29th June Evening Shift Physics - Laws of Motion Question 72 English Explanation"></p>
<p>$${f_{{r_{\max }}}} = \mu N$$</p>
<p>$$ = 0.02 \times 400$$</p>
<p>= 8 N</p>
<p>Let the acceleration is a as shown then.</p>
<p>$$40 - T = 4a$$</p>
<p>$$T - 8 = 40a$$</p>
<p>$$ \Rightarrow a = {{32} \over {44}} = {8 \over {11}}$$ m/s<sup>2</sup></p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'laws_of_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a8a926bd-8a46-4fa9-a93f-c0f451edc7e0',
    'physics',
    '12',
    'Magnetic Properties of Matter',
    'Earth Magnetism',
    'medium',
    'single_correct',
    'A magnetic compass needle oscillates 30 times per minute at a place where the dip is 45<sup>o</sup>, and 40 times per
minute where the dip is 30<sup>o</sup>. If B<sub>1</sub> and B<sub>2</sub> are respectively the total magnetic field due to the earth at the two
places, then the ratio $${{{B_1}} \over {{B_2}}}$$ is best given by :',
    '[{"id": "A", "text": "1.8"}, {"id": "B", "text": "2.2"}, {"id": "C", "text": "0.7"}, {"id": "D", "text": "3.6"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$${f_1} = {1 \over {2\pi }}\sqrt {{{\mu {B_1}\cos {{45}^o}} \over I}} $$<br><br>
$${f_2} = {1 \over {2\pi }}\sqrt {{{\mu {B_2}\cos {{30}^o}} \over I}} $$<br><br>
$${{{f_1}} \over {{f_2}}} = {{{B_1}\cos {{45}^o}} \over {{B_1}\cos {{30}^o}}}$$<br><br>
$$ \therefore $$ $${{{B_1}} \over {{B_2}}} = 0.7$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'magnetic_properties_of_matter'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b5c0fd55-d222-4278-8591-2da7cd1e8f48',
    'physics',
    '12',
    'Magnetics',
    'Moving Coil Galvanometer',
    'medium',
    'single_correct',
    'To know the resistance G of a galvanometer by half deflection method, a battery of emf V<sub>E</sub> and resistance R is used to deflect the galvanometer by angle $$\theta $$. If a shunt of resistance S is needed to get half deflection then G, R and S are related by the equation :',
    '[{"id": "A", "text": "2S (R + G) = RG"}, {"id": "B", "text": "S (R + G) = RG"}, {"id": "C", "text": "2S = G"}, {"id": "D", "text": "2G = S"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'When only galvanometer G is present with the resistance R, 
<br><br><img src="https://imagex.cdn.examgoal.net/jxZCrvW8MJpAor88S/PIon4ifk5WrCXq4uvtEME9DQ9XtmZ/YI1XNvGWUBzMfWVO7mXyNY/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2016 (Online) 9th April Morning Slot Physics - Magnetic Effect of Current Question 179 English Explanation 1">
<br><br>Here I<sub>G</sub> = $${{{V_E}} \over {R + G}}$$
<br><br>When shunt  of resistance S is connected parallel to galvanometer, 
<br><br><img src="https://imagex.cdn.examgoal.net/VDXDuzuZatvCMkogY/o3fKoHzBVoINrShc1SgQBUkKyL1cG/pxWfhBecslUp4qMlETKB4x/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2016 (Online) 9th April Morning Slot Physics - Magnetic Effect of Current Question 179 English Explanation 2">
<br><br>Here I = $${{{V_E}} \over {R + {{GS} \over {G + S}}}}$$
<br><br>As deflection is half, here current through galvanometer, 
<br><br>I<sub>G</sub>'' = $${{{{\rm I}_G}} \over 2}$$
<br><br>As both Galvanometer and shunt are parallel then potential are parallel then potential difference same. 
<br><br>$$ \therefore $$&nbsp;&nbsp;&nbsp;I<sub>G</sub>'' (G) = (I $$-$$ I<sub>G</sub><sup>''</sup>)S
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;I''<sub>G</sub> (G + S) = IS
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;$${{{{\rm I}_G}} \over 2}$$ = $${{{\rm I}S} \over {G + S}}$$
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;$${{{V_E}} \over {2\left( {R + G} \right)}}$$ = $${{{V_E}} \over {R + {{GS} \over {G + S}}}}$$ $$ \times $$ $${S \over {\left( {G + S} \right)}}$$
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;$${1 \over {2\left( {R + G} \right)}}$$  =  $${{G + S} \over {R(G + S) + GS}}$$  $$ \times $$ $${S \over {\left( {G + S} \right)}}$$
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;RG + RS + GS = 2RS + 2GS
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp;RG = RS + GS
<br><br>$$ \Rightarrow $$&nbsp;&nbsp;&nbsp; S(R + G) = RG',
    4,
    -1,
    true,
    2016,
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
    '<img src="https://imagex.cdn.examgoal.net/wkj2kZD7A2Ftv74k6/DXRW80CY5Mz7oD2cCMZRKAkM3LlQO/zZmLmwYMaGJAc3ZQ2AQFgp/image.png" style="max-width: 100%;  height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2019 (Online) 12th January Morning Slot Physics - Motion in a Plane Question 72 English Explanation">
<br>AB = V<sub>P</sub> $$ \times $$ t
<br><br>BC = Vt
<br><br>cos60<sup>o</sup> = $${{AB} \over {BC}}$$
<br><br>$${1 \over 2} = {{{V_P} \times t} \over {Vt}}$$
<br><br>V<sub>P</sub> = $${V \over 2}$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'motion_in_a_plane'],
    true,
    now()
);
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
    '<img src="https://imagex.cdn.examgoal.net/1ku8e5d54/9489ac05-83b9-4efe-813e-ec9b0162d08f/ebe2b480-22b9-11ec-92a0-35c33c2a328d/file-1ku8e5d55.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 31st August Morning Shift Physics - Properties of Matter Question 170 English Explanation"><br>We know,<br><br>$$\Delta l = {{WL} \over {2AY}}$$<br><br>$$\Delta l = {{10 \times 1} \over {2 \times 5}} \times 100 \times {10^{ - 4}} \times 2 \times {10^{11}}$$<br><br>$$\Delta l = {1 \over 2} \times {10^{ - 9}} = 5 \times {10^{ - 10}}$$ m<br><br>Option (d)',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'properties_of_matter'],
    true,
    now()
);
COMMIT;