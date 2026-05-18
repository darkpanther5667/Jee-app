-- JEE Test Series Massive Question Seed Batch 4 of 5
BEGIN TRANSACTION;
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5a2fb2b9-b9af-439d-8f51-ef1a3277390d',
    'physics',
    '12',
    'Properties of Matter',
    'Pressure Density Pascals Law And Archimedes Principle',
    'easy',
    'single_correct',
    '<p>A 400 g solid cube having an edge of length 10 cm floats in water. How much volume of the cube is outside the water?</p><p>(Given: density of water = 1000 kg m<sup>-3</sup>)</p>',
    '[{"id": "A", "text": "<p>400 cm<sup>3</sup></p>"}, {"id": "B", "text": "<p>600 cm<sup>3</sup></p>"}, {"id": "C", "text": "<p>1400 cm<sup>3</sup></p>"}, {"id": "D", "text": "<p>4000 cm<sup>3</sup></p>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>

First, let’s find the weight of the cube and set it equal to the upward buoyant force that keeps the cube floating.

</p>
<p>

<b>Step 1: Set up the equation for floating</b><br>

The weight of the cube (mass × gravity) is balanced by the buoyant force (density of water × volume of cube under water × gravity):<br>

$$\mathrm{Mg} = \mathrm{F}_{\mathrm{B}} \Rightarrow (400 \times 10^{-3}) = 10^3 \times \mathrm{V}_{\mathrm{d}}$$

</p>
<p>

<b>Step 2: Solve for the volume under water</b><br>

We find the volume of the cube under water ($$\mathrm{V}_\mathrm{d}$$):<br>

$$\mathrm{V}_{\mathrm{d}} = 400 \times 10^{-6}~\mathrm{m}^3$$

</p>
<p>

<b>Step 3: Find the total volume of the cube</b><br>

Each edge of the cube is 10 cm, so total volume is:<br>

$$ (10 \times 10^{-2})^3 $$

</p>
<p>

<b>Step 4: Find the volume outside water</b><br>

Subtract the volume under water from the total volume to get the volume outside water:<br>

$$(\text {Vol.})_{\text{outside}} = (10 \times 10^{-2})^3 - 400 \times 10^{-6}$$

</p>
<p>

Calculate the answer:<br>

$$= 600 \times 10^{-6}~\mathrm{m}^3 = 600~\mathrm{cm}^3$$

</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
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
    'dfc869b6-32e6-4093-bafe-4aaf885febe6',
    'physics',
    '11',
    'Rotational Motion',
    'Moment Of Inertia',
    'medium',
    'single_correct',
    'A thin circular plate of mass M and radius R
has its density varying as $$\rho $$(r) = $$\rho $$<sub>0</sub>r with $$\rho $$<sub>0</sub> as
constant and r is the distance from its centre.
The moment of Inertia of the circular plate about
an axis perpendicular to the plate and passing
through its edge is I = aMR<sup>2</sup>. The value of the
coefficient a is :',
    '[{"id": "A", "text": "$${1 \\over 2}$$"}, {"id": "B", "text": "$${3 \\over 2}$$"}, {"id": "C", "text": "$${8 \\over 5}$$"}, {"id": "D", "text": "$${3 \\over 5}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$$M = \int\limits_0^R {{\rho _0}r \times 2\pi rdr = {{2\pi {\rho _0}{R^3}} \over 3}} $$<br><br>
$${I_C} = \int\limits_0^R {{\rho _0}r \times 2\pi rdr \times {r^2} = {{2\pi {\rho _0}{R^5}} \over 3}} $$<br><br>
$$ \therefore $$ $$I = {I_C} + M{R^2} = 2\pi {\rho _0}{R^5}\left( {{1 \over 3} + {1 \over 5}} \right)$$<br><br>
$$ \Rightarrow $$$${{16\pi {\rho _0}{R^5}} \over {15}} = {8 \over 5}\left[ {{2 \over 3}\pi {\rho _0}{R^3}} \right]{R^2} = {8 \over 5}M{R^2}$$',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'rotational_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '133e0f0c-5eb9-4168-b316-89421b256b97',
    'physics',
    '11',
    'Rotational Motion',
    'Combined Translational And Rotational Motion',
    'easy',
    'single_correct',
    '<p>A solid sphere is rolling without slipping on a horizontal plane. The ratio of the linear kinetic energy of the centre of mass of the sphere and rotational kinetic energy is :</p>',
    '[{"id": "A", "text": "$\\frac{3}{4}$"}, {"id": "B", "text": "$\\frac{4}{3}$"}, {"id": "C", "text": "$\\frac{5}{2}$"}, {"id": "D", "text": "$\\frac{2}{5}$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>$$\begin{aligned}
& \frac{\text { Linear KE }}{\text { Rotational K.E }}=\frac{\frac{1}{2} \mathrm{mv}_{\mathrm{cm}}^2}{\frac{1}{2} \mathrm{I} \omega^2} \\
& \frac{\mathrm{mv}_{\mathrm{cm}}^2}{\frac{2}{5} \mathrm{mR}^2 \omega^2}=\frac{5}{2} \quad(\mathrm{~V}=\omega \mathrm{R})
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'rotational_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a7ab0dce-6bf4-4784-9489-9df8da4cfb0f',
    'physics',
    '11',
    'Simple Harmonic Motion',
    'Simple Harmonic Motion',
    'medium',
    'single_correct',
    'The point A moves with a uniform speed along the circumference of a circle of radius 0.36 m and covers 30$$^\circ$$ in 0.1 s. The perpendicular projection ''P'' from ''A'' on the diameter MN represents the simple harmonic motion of ''P''. The restoration force per unit mass when P touches M will be :<br><br><img src="https://imagex.cdn.examgoal.net/1kltdzp7u/ba0305f2-0d37-4ba0-9074-69eedc9fade2/d1961ca0-7c17-11eb-b0eb-7d97e0807144/file-1kltdzp7v-223w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Evening Shift Physics - Simple Harmonic Motion Question 98 English">',
    '[{"id": "A", "text": "9.87 N"}, {"id": "B", "text": "0.49 N"}, {"id": "C", "text": "50 N"}, {"id": "D", "text": "100 N"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1kqzirbmm/4b2bb45e-817e-4ac1-a5df-c76e08fe597f/3f0d92f0-e274-11eb-9782-3b8945fb98d0/file-1kqzirbmn.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 25th February Evening Shift Physics - Simple Harmonic Motion Question 98 English Explanation"><br>The point a covers 30$$^\circ$$ in 0.1 sec.<br><br>Means $${\pi  \over 6}\buildrel {} \over
 \longrightarrow 0.1$$ sec.<br><br>$$1\buildrel {} \over
 \longrightarrow {{0.1} \over {{\pi  \over 6}}}$$<br><br>$$2\pi  \buildrel {} \over
 \longrightarrow {{0.1 \times 6} \over \pi } \times 2\pi $$<br><br>$$T = 1.2$$ sec.<br><br>We know that $$\omega  = {{2\pi } \over T}$$<br><br>$$\omega  = {{2\pi } \over {1.2}}$$<br><br>Restoration force $$(F) = m{\omega ^2}A$$<br><br>Then Restoration force per unit mass $$\left( {{F \over m}} \right) = {\omega ^2}A$$<br><br>$$\left( {{F \over m}} \right) = {\left( {{{2\pi } \over {1.2}}} \right)^2} \times 0.36$$<br><br>$$ \cong 9.87$$ N',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'simple_harmonic_motion'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3f36066b-f166-4ea0-880a-1bf875ede366',
    'physics',
    '12',
    'Units and Measurements',
    'General',
    'medium',
    'single_correct',
    'An example of a perfect diamagnet is a superconductor. This implies that when a superconductor is put in a magnetic field of intensity B, the magnetic field B<sub>s</sub> inside the superconductor will be such that :',
    '[{"id": "A", "text": "B<sub>s</sub> = $$-$$ B"}, {"id": "B", "text": "B<sub>s</sub> = 0"}, {"id": "C", "text": "B<sub>s</sub> = B"}, {"id": "D", "text": "B<sub>s</sub> &lt; B &nbsp;but&nbsp; B<sub>s</sub> $$ \\ne $$ 0"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<h3>Key Concept:</h3>
<ul>
<li><p>In a <strong>superconductor below its critical temperature</strong>, the <strong>Meissner effect</strong> occurs → it completely expels magnetic flux from its interior.  </p></li>
<li><p>This means the <strong>magnetic induction inside the superconductor</strong> is:  </p></li>
</ul>
<p>$ B_s = 0 $</p>
<p>regardless of the applied external field (until the critical field strength is exceeded).  </p>
<h3>Correct Option:</h3>
<p><strong>Option B: $ B_s = 0 $</strong> ✅</p>',
    4,
    -1,
    true,
    2014,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'units_and_measurements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b2dd4b12-b5eb-439c-8e78-56ad92c85be6',
    'physics',
    '12',
    'Units and Measurements',
    'Vernier Calipers',
    'medium',
    'single_correct',
    '<p>If n main scale divisions coincide with (n + 1) vernier scale divisions. The least count of vernier callipers, when each centimetre on the main scale is divided into five equal parts, will be :</p>',
    '[{"id": "A", "text": "$${2 \\over {n + 1}}$$ mm"}, {"id": "B", "text": "$${5 \\over {n + 1}}$$ mm"}, {"id": "C", "text": "$${1 \\over {2n}}$$ mm"}, {"id": "D", "text": "$${1 \\over {5n}}$$ mm"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>5 parts of main scale division = 1 cm</p>
<p>$$\therefore$$ 1 part of main scale division = $${1 \over 5}$$ cm</p>
<p>$$\therefore$$ 1 M.S.D. = $${1 \over 5}$$ cm</p>
<p>(n + 1) vernier scale division = n main scale division.</p>
<p>$$\therefore$$ 1 V.S.D. = $${n \over n+1}$$ M.S.D.</p>
<p>= $${n \over n+1}$$ $$\times$$ 1 M.S.D.</p>
<p>= $${n \over n + 1}$$ $$\times$$ $${1 \over 5}$$ cm</p>
<p>We know,</p>
<p>L.C. = 1 M.S.D. $$-$$ 1 V,S.D.</p>
<p>= $${1 \over 5}$$ cm $$-$$ $${n \over {5(n + 1)}}$$ cm</p>
<p>= $${{n + 1 - n} \over {5(n + 1)}}$$ cm</p>
<p>= $${1 \over {5(n + 1)}}$$ cm</p>',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'units_and_measurements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'b549e74c-ef3c-4853-b26c-d192d42a6a39',
    'physics',
    '12',
    'Units and Measurements',
    'Dimensions Of Physical Quantities',
    'easy',
    'single_correct',
    'If $\mu_0$ and $\epsilon_0$ are the permeability and permittivity of free space, respectively, then the dimension of $\left(\frac{1}{\mu_0 \epsilon_0}\right)$ is :',
    '[{"id": "A", "text": "$\\mathrm{T}^2 / \\mathrm{L}$"}, {"id": "B", "text": "$\\mathrm{L}^2 / \\mathrm{T}^2$"}, {"id": "C", "text": "$\\mathrm{T}^2 / \\mathrm{L}^2$"}, {"id": "D", "text": "$\\mathrm{L} / \\mathrm{T}^2$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>The expression $\frac{1}{\mu_0 \epsilon_0}$ is related to the speed of light $ c $, given by the equation:</p>
<p>$ c = \frac{1}{\sqrt{\mu_0 \epsilon_0}} $</p>
<p>Therefore, we have:</p>
<p>$ \frac{1}{\mu_0 \epsilon_0} = c^2 $</p>
<p>The speed of light $ c $ has the dimensions of $\text{L T}^{-1}$, where $\text{L}$ is the dimension of length and $\text{T}$ is the dimension of time. Thus, when squared, the dimensions become:</p>
<p>$ c^2 = (\text{L T}^{-1})^2 = \text{L}^2 \text{T}^{-2} $</p>
<p>Hence, the dimensions of $\frac{1}{\mu_0 \epsilon_0}$ are $\text{L}^2 \text{T}^{-2}$.</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'units_and_measurements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'db91bed4-3d15-40b1-9d66-35e79fb646dc',
    'physics',
    '12',
    'Wave Optics',
    'Huygens Principle And Interference Of Light',
    'easy',
    'single_correct',
    'In a Young’s double slit experiment, light of
500 nm is used to produce an interference
pattern. When the distance between the slits
is 0.05 mm, the angular width (in degree) of
the fringes formed on the distance screen is
close to',
    '[{"id": "A", "text": "0.17<sup>o</sup>"}, {"id": "B", "text": "1.7<sup>o</sup>"}, {"id": "C", "text": "0.57<sup>o</sup>"}, {"id": "D", "text": "0.07<sup>o</sup>"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$$\beta $$ = $${{\lambda D} \over d}$$
<br><br>and $$\theta $$ = $${\beta  \over D}$$
<br><br>$$ \Rightarrow $$ $$\theta $$ = $${\lambda  \over d}$$
<br><br>= $${{500 \times {{10}^{ - 9}}} \over {0.05 \times {{10}^{ - 3}}}}$$
<br><br>= 0.01 rad
<br><br>= 0.57<sup>o</sup>',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'wave_optics'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '332c4ac3-9f69-4827-850e-38db73b42e63',
    'physics',
    '11',
    'Waves',
    'Superposition And Reflection Of Waves',
    'easy',
    'single_correct',
    'Three sound waves of equal amplitudes have frequencies $$\left( {v - 1} \right),\,v,\,\left( {v + 1} \right).$$ They superpose to give beats. The number of beats produced per second will be :',
    '[{"id": "A", "text": "$$3$$"}, {"id": "B", "text": "$$2$$"}, {"id": "C", "text": "$$1$$"}, {"id": "D", "text": "$$4$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Maximum number of beats $$ = \left( {v + 1} \right) - \left( {v - 1} \right) = 2$$',
    4,
    -1,
    true,
    2009,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'physics', 'waves'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ba5e82d2-8e40-43d9-b0fc-05f7a4b384dd',
    'physics',
    '11',
    'Waves',
    'Basic Of Waves And Progressive Waves',
    'easy',
    'single_correct',
    '<p>Two strings with circular cross section and made of same material, are stretched to have same amount of tension. A transverse wave is then made to pass through both the strings. The velocity of the wave in the first string having the radius of cross section R is $v_1$, and that in the other string having radius of cross section R/2 is $v_2$. Then $\frac{v_2}{v_1}$ = </p>',
    '[{"id": "A", "text": "<p>8</p>"}, {"id": "B", "text": "<p>4</p>"}, {"id": "C", "text": "<p>2</p>"}, {"id": "D", "text": "<p>$\\sqrt{2}$</p>"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>To find the ratio of the velocities of transverse waves in two strings with different radii but identical materials and tension, consider the following:</p>
<p>The wave velocity $ v $ in a string is given by the formula:</p>
<p>$ v = \sqrt{\frac{T}{\mu}} $</p>
<p>where $ T $ is the tension and $ \mu $ is the linear mass density of the string, defined as:</p>
<p>$ \mu = \rho \pi R^2 $</p>
<p>Here, $ \rho $ is the density of the material, and $ R $ is the radius of the string. Given that both strings have the same tension $ T $ and material, we compare their wave velocities $ v_1 $ and $ v_2 $ for radii $ R_1 = R $ and $ R_2 = \frac{R}{2} $.</p>
<p>The velocity ratio is expressed as:</p>
<p>$ \frac{v_2}{v_1} = \frac{\sqrt{\frac{T}{\rho \pi R_2^2}}}{\sqrt{\frac{T}{\rho \pi R_1^2}}} $</p>
<p>Simplifying this expression:</p>
<p>$ \frac{v_2}{v_1} = \frac{\sqrt{R_1^2}}{\sqrt{R_2^2}} = \frac{R_1}{R_2} = \frac{R}{\frac{R}{2}} = 2 $</p>
<p>Thus, the ratio $ \frac{v_2}{v_1} $ is 2.</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'physics', 'waves'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'ab0ee0e8-77be-40ef-aa52-e5189497041a',
    'chemistry',
    '12',
    'Alcohols Phenols and Ethers',
    'Properties Preparation And Uses Of Ethers',
    'easy',
    'single_correct',
    'An ethar is more volatile than an alcohol having the same molecular formula. This is due to',
    '[{"id": "A", "text": "alcohols having resonance structures"}, {"id": "B", "text": "inter-molecular hydrogen bonding in ethers"}, {"id": "C", "text": "inter-molecular hydrogen bonding in alcohols"}, {"id": "D", "text": "dipole characters of ethers"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Alcohol and ether are isomer with each other. So, with same molecular formula we can make ether  as well as alcohol. 
<br><br>For ex, 
<br><br>With molecular formula C<sub>2</sub>H<sub>6</sub>O 
<br><br>(1) $$\,\,\,$$  alcohol will be CH<sub>3</sub>CH<sub>2</sub> OH
<br><br>(2) $$\,\,\,$$ ether will be CH<sub>3</sub> $$-$$ O $$-$$ CH<sub>3</sub> 
<br><br>In Alcohol there is hydrogen bond and in Ether there is Van der walls force of attraction. 
<br><br>We know that H bond is stronger bond than van der walls force of attraction as the atoms of alcohol are strongly attached with each other by hydrogen bonding so tendency of vaporization of alcohol is less compared to ether.
<br><br>In alcohol inter-molecular hydrogen bonding look like this -
<br><br><img class="question-image" src="https://imagex.cdn.examgoal.net/hzWiFcmg3sGeMCPeN/GHZPl17wcQPhgE2NvhUdyz9hOQGNq/VIy3cXT94XVCecyegHr1TP/image.png" loading="lazy" alt="AIEEE 2003 Chemistry - Alcohols, Phenols and Ethers Question 170 English Explanation">',
    4,
    -1,
    true,
    2003,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'alcohols_phenols_and_ethers'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3b21211c-aa71-471b-bc6c-b046a85fea03',
    'chemistry',
    '12',
    'Alcohols Phenols and Ethers',
    'Properties Preparation And Uses Of Alcohols',
    'easy',
    'single_correct',
    'Given below are two statements : one is labelled as Assertion (A) and the other is labelled as Reason (R). <br><br>Assertion (A) : Treatment of bromine water with propene yields 1-bromopropan-2-ol.<br><br>Reason (R) : Attack of water on bromonium ion follows Markovnikov rule and results in 1-bromopropan-2-ol.<br><br>In the light of the above statements, choose the most appropriate answer from the options given below :',
    '[{"id": "A", "text": "Both (A) and (R) are true but (R) is not the correct explanation of (A)"}, {"id": "B", "text": "(A) is false but (R) is true"}, {"id": "C", "text": "Both (A) and (R) are true and (R) is the correct explanation of (A)"}, {"id": "D", "text": "(A) is true but (R) is false"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1ku9k9f80/4c772051-8085-4faf-afb8-ab3b2ea1347b/9c274500-235e-11ec-8f4b-fd0f0135951d/file-1ku9k9f81.png" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 31st August Morning Shift Chemistry - Alcohols, Phenols and Ethers Question 88 English Explanation"><br><br>Its IUPAC name 1-bromopropan-2-ol<br><br>A and R are true and (R) is the correct explanation of (A).',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'alcohols_phenols_and_ethers'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a291832e-c893-4dcb-bd50-753afbcd0594',
    'chemistry',
    '12',
    'Aldehydes Ketones and Carboxylic ACids',
    'Preparation Properties And Uses Of Carboxylic Acids',
    'medium',
    'single_correct',
    '<img class="question-image" src="https://imagex.cdn.examgoal.net/kAfpR9KghkRh5XBGL/76c07uEAHu9IM4BbV09QJvJVInfLw/7YTzU3zqioJbsLAIm4tic2/image.png" loading="lazy" alt="AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English">',
    '[{"id": "A", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/GUXPBa838DGlo0K15/JWQwJVIYe1qJgVXeiKY7bbqVjiTz9/Rwlu6tIAGGNWDh0gnZd3gv/image.png\" loading=\"lazy\" alt=\"AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English Option 1\">"}, {"id": "B", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/JpArZ2scMpe2ICk5H/qAk5SpLbHzMfHR5zaWoTXIl4MjQxe/RfegBpiMqr3XMQNgqsTmbE/image.png\" loading=\"lazy\" alt=\"AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English Option 2\">"}, {"id": "C", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/B1GFY3jnQPjCasDLL/XFLUnX3hNCOzs6xdArpLp6uv2PMi9/XaMEfUMUFwwLe3JXKJybLh/image.png\" loading=\"lazy\" alt=\"AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English Option 3\">"}, {"id": "D", "text": "<img class=\"question-image\" src=\"https://imagex.cdn.examgoal.net/aTatB6yqPwihCeqLd/xgBW8iB2bsNqXpBAGXPE57ZfYIvF7/RSV8EgRi48P7ypOuTP8Rak/image.png\" loading=\"lazy\" alt=\"AIEEE 2002 Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 226 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Aldehydic group gets oxidised to carboxylic group. Double bond breaks and carbon gets oxidised to carboxylic group.',
    4,
    -1,
    true,
    2002,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'aldehydes_ketones_and_carboxylic_acids'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '6719e816-bf80-48d4-93a4-ca9737da3557',
    'chemistry',
    '12',
    'Aldehydes Ketones and Carboxylic ACids',
    'Preparation Properties And Uses Of Carboxylic Acids',
    'hard',
    'single_correct',
    'An unsaturated hydrocarbon X absorbs two
hydrogen molecules on catalytic hydrogenation and also gives following reaction :
<img src="https://imagex.cdn.examgoal.net/7k9k2k5hl0695/15e10341-74ed-42fc-9bf6-8fdd74b79842/60cb8990-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl0696-320w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English">
B(3 - oxo - hexanedicarboxylic acid) X will be :-',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hl35hy/7945fd70-3aa0-4d26-a6be-cb23b3371447/b3a39360-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl35hz-262w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hl2xx6/7d118568-b193-471c-820f-46492fe3a5c2/adc929a0-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl2xx7-227w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hl3ess/09b3681a-28fb-4324-8e03-31f4862e52f9/bad2dec0-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl3est-275w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hl2otb/ced87a3d-ab1e-4646-b6c8-bf08468dd3bc/a6c02af0-38d6-11ea-92dd-4b9c3519996f/file-7k9k2k5hl2otc-229w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/7kd4dk67f83fp/d1fc6af7-73b5-43cb-99ad-f31ad58aa888/27338950-470c-11ea-b62d-51ccc5d4afb6/file-7kd4dk67f83fq-320w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 180 English Explanation">',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'aldehydes_ketones_and_carboxylic_acids'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5ea65125-e6aa-4aa0-adb0-6a0bffbe5ab4',
    'chemistry',
    '12',
    'Aldehydes Ketones and Carboxylic ACids',
    'Preparation Properties And Uses Of Carboxylic Acids',
    'medium',
    'single_correct',
    '<p>Identify the product formed (A and E)</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbh9cj/6362501c-ee92-432c-b16d-938f8990c1e7/9e69ae30-a77d-11ed-a5e3-ff739bca566a/file-1ldvbh9ck.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1ldvbh9cj/6362501c-ee92-432c-b16d-938f8990c1e7/9e69ae30-a77d-11ed-a5e3-ff739bca566a/file-1ldvbh9ck.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English"></p>',
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbkf6h/a6d0eef6-6f0b-442f-abdb-942fa2b91f5a/f6585c90-a77d-11ed-a5e3-ff739bca566a/file-1ldvbkf6i.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldvbkf6h/a6d0eef6-6f0b-442f-abdb-942fa2b91f5a/f6585c90-a77d-11ed-a5e3-ff739bca566a/file-1ldvbkf6i.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbk0a9/a9bec54e-bde9-429a-9c7b-b8a41687a862/ead6ce10-a77d-11ed-a5e3-ff739bca566a/file-1ldvbk0aa.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldvbk0a9/a9bec54e-bde9-429a-9c7b-b8a41687a862/ead6ce10-a77d-11ed-a5e3-ff739bca566a/file-1ldvbk0aa.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbj841/59234794-343b-4757-a9b2-ef1efc78a8a4/d5138410-a77d-11ed-a5e3-ff739bca566a/file-1ldvbj842.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldvbj841/59234794-343b-4757-a9b2-ef1efc78a8a4/d5138410-a77d-11ed-a5e3-ff739bca566a/file-1ldvbj842.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldvbi0dm/ffc897f8-ad76-48ed-92b5-69f10e6ee0c3/b34afca0-a77d-11ed-a5e3-ff739bca566a/file-1ldvbi0dn.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldvbi0dm/ffc897f8-ad76-48ed-92b5-69f10e6ee0c3/b34afca0-a77d-11ed-a5e3-ff739bca566a/file-1ldvbi0dn.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lebuo774/64fd019e-b02d-405b-b8f8-10372d397fb0/37429700-b095-11ed-b968-032108a3c0d6/file-1lebuo775.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lebuo774/64fd019e-b02d-405b-b8f8-10372d397fb0/37429700-b095-11ed-b968-032108a3c0d6/file-1lebuo775.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 80vh" alt="JEE Main 2023 (Online) 25th January Morning Shift Chemistry - Aldehydes, Ketones and Carboxylic Acids Question 73 English Explanation">',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'aldehydes_ketones_and_carboxylic_acids'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '369fab0a-b3ed-44ff-8c63-74dbcce9e1e2',
    'chemistry',
    '12',
    'Basics of Organic Chemistry',
    'Stability Of Intermediate',
    'easy',
    'single_correct',
    'Due to the presence of an unpaired electron, free radicals are:',
    '[{"id": "A", "text": "Chemically reactive"}, {"id": "B", "text": "Chemically inactive"}, {"id": "C", "text": "Anions"}, {"id": "D", "text": "Cations"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Free radicals are electrically neutral, unstable and very reactive on account of the presence of odd electrons.',
    4,
    -1,
    true,
    2005,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'basics_of_organic_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e509dbd1-351b-4c93-a1b4-84d55c2d70ac',
    'chemistry',
    '12',
    'Basics of Organic Chemistry',
    'Purification Of Organic Compounds',
    'easy',
    'single_correct',
    'Nitrogen can be estimated by Kjeldahl''s method for which of the following compound?',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/1kmlizmkd/cfbc1a0c-e64e-412f-907b-b69366aa5d23/4f5dfad0-8b91-11eb-8bc4-81bde7104d98/file-1kmlizmke.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Basics of Organic Chemistry Question 169 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://imagex.cdn.examgoal.net/1kmlizfxi/70583bd5-5fa4-45d5-b3e2-a18c2eefcb70/4a3de060-8b91-11eb-8bc4-81bde7104d98/file-1kmlizfxj.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Basics of Organic Chemistry Question 169 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://imagex.cdn.examgoal.net/1kmliz8yf/e2396538-237a-43ad-a8cb-c63ac1f90f32/44daa270-8b91-11eb-8bc4-81bde7104d98/file-1kmliz8yg.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Basics of Organic Chemistry Question 169 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://imagex.cdn.examgoal.net/1kmliz2x4/da7554a4-a370-49a9-aa19-54c28a97ac19/40311790-8b91-11eb-8bc4-81bde7104d98/file-1kmliz2x5.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Basics of Organic Chemistry Question 169 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Kjeldahl’s method can’t be used for compounds
containing nitro or azo groups.<br><br>
Also for compounds containing nitrogen in the ring,
Kjeldahl’s method can’t be used.',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'basics_of_organic_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2098094f-e9e9-47b0-b3da-e835e75c1832',
    'chemistry',
    '12',
    'Basics of Organic Chemistry',
    'Stability Of Intermediate',
    'easy',
    'single_correct',
    '<p>The correct stability order of carbocations is',
    '[{"id": "A", "text": "$$\\left(\\mathrm{CH}_3\\right)_3 \\mathrm{C}^{+}>\\mathrm{CH}_3-\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_2>\\left(\\mathrm{CH}_3\\right)_2 \\stackrel{+}{\\mathrm{C}} \\mathrm{H}>\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_3$$"}, {"id": "B", "text": "$$\\left(\\mathrm{CH}_3\\right)_3 \\stackrel{+}{\\mathrm{C}}>\\left(\\mathrm{CH}_3\\right)_2 \\stackrel{+}{\\mathrm{C}} \\mathrm{H}>\\mathrm{CH}_3-\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_2>\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_3$$"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/6y3zli1lshjogrd/77382cda-3454-41b8-9f58-dcc3a06d0898/f56d93a0-c8e1-11ee-8501-bb04786aa212/file-6y3zli1lshjogre.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/6y3zli1lshjogrd/77382cda-3454-41b8-9f58-dcc3a06d0898/f56d93a0-c8e1-11ee-8501-bb04786aa212/file-6y3zli1lshjogre.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2024 (Online) 30th January Evening Shift Chemistry - Basics of Organic Chemistry Question 69 English Option 3\">"}, {"id": "D", "text": "$$\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_3>\\left(\\mathrm{CH}_3\\right)_2 \\stackrel{+}{\\mathrm{C}} \\mathrm{H}>\\mathrm{CH}_3-\\stackrel{+}{\\mathrm{C}} \\mathrm{H}_2>\\left(\\mathrm{CH}_3\\right)_3 \\stackrel{+}{\\mathrm{C}}$$</p>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>More no. of hyperconjugable Hydrogens, more stable is the carbocations.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'basics_of_organic_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'fdecd555-6cf6-4bf3-86a8-93afddadf908',
    'chemistry',
    '12',
    'Biomolecules',
    'Carbohydrates',
    'medium',
    'single_correct',
    'The <b>incorrect</b> statement among the following is :',
    '[{"id": "A", "text": "$$\\alpha $$-D-glucose and $$\\beta $$-D-glucose are anomers."}, {"id": "B", "text": "$$\\alpha $$-D-glucose and $$\\beta $$-D-glucose are enantiomers."}, {"id": "C", "text": "Cellulose is a straight chain polysaccharide made up of only $$\\beta $$-D-glucose units."}, {"id": "D", "text": "The penta acetate of glucose does not react with hydroxyl amine"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '$$\alpha $$-D-glucose and $$\beta $$-D-glucose are anomers not enantiomers.',
    4,
    -1,
    true,
    2017,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'biomolecules'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '9e9ab3ba-9542-4989-9130-8cae479608ee',
    'chemistry',
    '12',
    'Biomolecules',
    'Vitamins And Nucleic Acids',
    'medium',
    'single_correct',
    '<p>All structures given below are of vitamin C. Most stable of them is :</p>',
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldob78i5/a55e3ea3-80d8-4b80-9c79-a8f96a03110f/0b1f97d0-a3a3-11ed-ba58-bbbbd3e496d9/file-1ldob78i6.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldob78i5/a55e3ea3-80d8-4b80-9c79-a8f96a03110f/0b1f97d0-a3a3-11ed-ba58-bbbbd3e496d9/file-1ldob78i6.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldob6n5a/0d434d16-477c-4ec5-886f-2d43eac517d4/faa01ce0-a3a2-11ed-ba58-bbbbd3e496d9/file-1ldob6n5b.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldob6n5a/0d434d16-477c-4ec5-886f-2d43eac517d4/faa01ce0-a3a2-11ed-ba58-bbbbd3e496d9/file-1ldob6n5b.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldob6a25/70f35c95-1556-4a31-9fba-430f3df893c0/f08411d0-a3a2-11ed-810c-6704daa1bcc1/file-1ldob6a26.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldob6a25/70f35c95-1556-4a31-9fba-430f3df893c0/f08411d0-a3a2-11ed-810c-6704daa1bcc1/file-1ldob6a26.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1ldob5tqb/494d0747-621f-4894-b2eb-05939b9e53aa/e3e70130-a3a2-11ed-810c-6704daa1bcc1/file-1ldob5tqc.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1ldob5tqb/494d0747-621f-4894-b2eb-05939b9e53aa/e3e70130-a3a2-11ed-810c-6704daa1bcc1/file-1ldob5tqc.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1leu5kppv/fde4ac0d-4491-4256-8569-2153e28fdae3/f670c830-baa5-11ed-905b-c3b697a31028/file-1leu5kppw.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1leu5kppv/fde4ac0d-4491-4256-8569-2153e28fdae3/f670c830-baa5-11ed-905b-c3b697a31028/file-1leu5kppw.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 60vh" alt="JEE Main 2023 (Online) 1st February Evening Shift Chemistry - Biomolecules Question 65 English Explanation">',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'biomolecules'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5109667a-300e-46a5-b0ec-204817099d8a',
    'chemistry',
    '12',
    'Chemical Bonding and Molecular Structure',
    'Hybridization And Vsepr Theory',
    'easy',
    'single_correct',
    'The structure of IF<sub>7</sub> is :',
    '[{"id": "A", "text": "trigonal bipyramid"}, {"id": "B", "text": "octahedral"}, {"id": "C", "text": "pentagonal bipyramid"}, {"id": "D", "text": "square pyramid"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'The structure of IF<sub>7</sub> pentagonal bipyramidal having
sp<sup>3</sup>d<sup>3</sup>
 hybridisation.
<br><picture><source media="(max-width: 320px)" srcset="https://imagex.cdn.examgoal.net/3xmhtm2xjkbg0gzc5/56613c99-0646-4663-9713-a319105263ca/981e9150-aec2-11ea-9207-bfdf7589d371/file-3xmhtm2xjkbg0gzc6-320w.jpg"><source media="(max-width: 500px)" srcset="https://imagex.cdn.examgoal.net/3xmhtm2xjkbg0gzc5/56613c99-0646-4663-9713-a319105263ca/981e9150-aec2-11ea-9207-bfdf7589d371/file-3xmhtm2xjkbg0gzc6-500w.jpg"><img src="https://imagex.cdn.examgoal.net/3xmhtm2xjkbg0gzc5/56613c99-0646-4663-9713-a319105263ca/981e9150-aec2-11ea-9207-bfdf7589d371/file-3xmhtm2xjkbg0gzc6-680w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="AIEEE 2011 Chemistry - Chemical Bonding &amp; Molecular Structure Question 219 English Explanation"></picture>',
    4,
    -1,
    true,
    2011,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_bonding_and_molecular_structure'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'f0963f60-b9ed-419e-8dd6-44ff4eed5c81',
    'chemistry',
    '12',
    'Chemical Bonding and Molecular Structure',
    'Molecular Orbital Theory',
    'medium',
    'single_correct',
    '<p>Consider the ions/molecule</p>
<p>O$$_2^ + $$, O<sub>2</sub>, O$$_2^ - $$, O$$_2^ {2-} $$</p>
<p>For increasing bond order the correct option is :</p>',
    '[{"id": "A", "text": "O$$_2^ {2-} $$ < O$$_2^ - $$ < O<sub>2</sub> < O$$_2^ + $$"}, {"id": "B", "text": "O$$_2^ - $$ < O$$_2^ {2-} $$ < O<sub>2</sub> < O$$_2^ + $$"}, {"id": "C", "text": "O$$_2^ - $$ < O$$_2^ {2-} $$ < O$$_2^ + $$ < O<sub>2</sub>"}, {"id": "D", "text": "O$$_2^ - $$ < O$$_2^ + $$ < O$$_2^ {2-} $$ < O<sub>2</sub>"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<b><u>Note</u> :</b> 
<br><br>(1) $$\,\,\,\,$$ Bond strength $$ \propto $$ Bond order 
<br><br>(2) $$\,\,\,\,$$ Bond length $$ \propto $$ $${1 \over {Bond\,\,order}}$$
<br><br>(3) $$\,$$ Bond order $$ = {1 \over 2}$$ [N<sub>b </sub> $$-$$ N<sub>a</sub>] 
<br><br>N<sub>b</sub> = Number of electrons in bonding molecular orbital 
<br><br>N<sub>a</sub> $$=$$ Number of electrons in anti bonding molecular orbital 
<br><br>(4) $$\,\,\,\,$$ upto 14 electrons, molecular orbital configuration is 
<br><br><img class="question-image" src="https://imagex.cdn.examgoal.net/BCZnqLDgpImUxYpB2/Zg1gK5Q1xLj1n6tAiUJqhAxB3rbvD/vRErIfl3wacw1pMY708M3N/image.png" loading="lazy" alt="JEE Main 2022 (Online) 26th June Morning Shift Chemistry - Chemical Bonding &amp; Molecular Structure Question 124 English Explanation 1">
<br><br>Here N<sub>a</sub> = Anti bonding electron $$=$$ 4 and N<sub>b</sub> = 10
<br><br>(5) $$\,\,\,\,$$ After 14  electrons to 20 electrons molecular orbital configuration is - - -
<br><br><img class="question-image" src="https://imagex.cdn.examgoal.net/3716soaUWwytJgHTQ/oPYd44rDhbA5TN79TWk4x4Gr9ndzq/EsglJdUOMHR8rQaoVR1KAZ/image.png" loading="lazy" alt="JEE Main 2022 (Online) 26th June Morning Shift Chemistry - Chemical Bonding &amp; Molecular Structure Question 124 English Explanation 2">
<br><br>Here N<sub>a</sub> = 10
<br><br>and N<sub>b</sub> = 10
<br><br>In O atom 8 electrons present, so in O<sub>2</sub>,  8 $$ \times $$ 2 = 16 electrons present. 
<br><br>Then in $$O_2^ + $$ no of electrons = 15 
<br><br>in $$O_2^ - $$  no of electrons = 17
<br><br>in $$O_2^{2 - }$$ no of electrons = 18
<br><br>$$\therefore\,\,\,\,$$ Molecular orbital configuration of O<sub>2</sub> (16 electrons) is 
<br><br>$${\sigma _{1{s^2}}}\,\,\sigma _{1{s^2}}^ * \,$$ $${\sigma _{2{s^2}}}\,\,\sigma _{2{s^2}}^ * \,$$ $${\sigma _{2p_z^2}}\,\,{\pi _{2p_x^2}} = {\pi _{2p_y^2}}\,\,\pi _{2p_x^1}^ * \,\, = \pi _{2p_y^1}^ * $$
<br><br>$$\therefore\,\,\,\,$$N<sub>a</sub> = 6
<br><br>N<sub>b</sub> = 10
<br><br>$$\therefore\,\,\,\,$$ BO = $${1 \over 2}\left[ {10 - 6} \right] = 2$$
<br><br>Molecular orbital configuration of O$$_2^ + $$ (15 electrons) is 
<br><br>$${\sigma _{1{s^2}}}\,\sigma _{1{s^2}}^ * \,{\sigma _{2{s^2}}}\,\sigma _{2{s^2}}^ * \,{\sigma _{2p_z^2}}\,{\pi _{2p_x^2}}\, = \,{\pi _{2p_y^2}}\,\pi _{2p_x^1}^ * \, = \,\pi _{2p_y^o}^ * $$
<br><br>$$\therefore\,\,\,\,$$ N<sub>b</sub> = 10
<br><br>N<sub>a</sub> = 5 
<br><br>$$\therefore\,\,\,\,$$  BO = $${1 \over 2}\left[ {10 - 5} \right]$$ = 2.5
<br><br>Molecular orbital configuration of $$O_2^ - $$ (17 electrons) is 
<br><br>$${\sigma _{1{s^2}}}\,\sigma _{1{s^2}}^ * \,{\sigma _{2{s^2}}}\,\sigma _{2{s^2}}^ * \,{\sigma _{2p_z^2}}\,{\pi _{2p_x^2}}\, = \,{\pi _{2p_y^2}}\,\pi _{2p_x^2}^ * \, = \,\pi _{2p_y^1}^ * $$
<br><br>$$\therefore\,\,\,\,$$ N<sub>b</sub> = 10
<br><br>N<sub>a</sub> = 7
<br><br>$$\therefore\,\,\,\,$$ BO = $${1 \over 2}\left[ {10 - 7} \right]$$ = 1.5
<br><br>Molecular orbital configuration of O $$_2^{2 - }$$ (18 electrons) is 
<br><br>$${\sigma _{1{s^2}}}\,\sigma _{1{s^2}}^ * \,{\sigma _{2{s^2}}}\,\sigma _{2{s^2}}^ * \,{\sigma _{2p_z^2}}\,{\pi _{2p_x^2}}\, = \,{\pi _{2p_y^2}}\,\pi _{2p_x^2}^ * \, = \,\pi _{2p_y^2}^ * $$
<br><br>$$\therefore\,\,\,\,$$ N<sub>b</sub> = 10
<br><br>N<sub>a</sub> = 8
<br><br>$$\therefore\,\,\,\,$$ BO = $${1 \over 2}$$ [ 10 $$-$$ 8] = 1
<br><br> So, correct order of Bond order is
<br><br>$$O_2^{2 - } &lt; O_2^ -  &lt; {O_2} &lt; O_2^ + $$',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_bonding_and_molecular_structure'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '6b1c5dbc-4c49-4305-8a03-6f3c0e0de9cb',
    'chemistry',
    '11',
    'Chemical Equilibrium',
    'Le Chateliers Principle And Factors Affecting Chemical Equilibrium',
    'easy',
    'single_correct',
    'Consider the reaction equilibrium<br>
2 SO<sub>2</sub> (g) + O<sub>2</sub> (g) $$\leftrightharpoons$$ 2 SO<sub>3</sub> (g); $$\Delta H^o$$ = -198 kJ<br>
One the basis of Le Chatelier''s principle, the condition favourable for the forward reaction is :',
    '[{"id": "A", "text": "increasing temperature as well as pressure"}, {"id": "B", "text": "lowering the temperature and increasing the pressure"}, {"id": "C", "text": "any value of temperature and pressure"}, {"id": "D", "text": "lowering temperature as well as pressure"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Due to exothermicity of reaction low or optimum temperature will be required. Since $$3$$ moles are changing to $$2$$ moles.
<br><br>$$\therefore$$ High pressure will be required.',
    4,
    -1,
    true,
    2003,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_equilibrium'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '53923c00-b42b-413d-bce6-d17ee0cf0828',
    'chemistry',
    '12',
    'Chemical Kinetics and Nuclear Chemistry',
    'Nuclear Chemistry',
    'easy',
    'single_correct',
    'Hydrogen bomb is based on the principle of',
    '[{"id": "A", "text": "Nuclear fission"}, {"id": "B", "text": "Natural radioactivity"}, {"id": "C", "text": "Nuclear fusion"}, {"id": "D", "text": "Artificial radioactivity"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>Option C</p>
<p>Nuclear fusion</p>
<p>Explanation :</p>
<p>A hydrogen bomb, also known as a thermonuclear bomb, uses the principle of nuclear fusion. In a fusion reaction, two lighter atomic nuclei combine to form a heavier nucleus, and a substantial amount of energy is released in the process. In the case of a hydrogen bomb, isotopes of hydrogen (such as deuterium and tritium) fuse together to form helium, releasing a large amount of energy.</p>
<p>It&#39;s worth noting that a hydrogen bomb usually involves a two-stage process. The first stage is a fission bomb (like those used in Hiroshima and Nagasaki) that creates the conditions necessary for the fusion reaction in the second stage. Despite this, the majority of the energy in a hydrogen bomb comes from fusion, which is why it is categorized as a fusion weapon.</p>',
    4,
    -1,
    true,
    2005,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_kinetics_and_nuclear_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '10516b4f-0d65-442a-a8e2-881734919ff9',
    'chemistry',
    '12',
    'Chemical Kinetics and Nuclear Chemistry',
    'Integrated Rate Law Equations',
    'medium',
    'single_correct',
    '<p>Reaction $\mathrm{A}(\mathrm{g}) \rightarrow 2 \mathrm{~B}(\mathrm{~g})+\mathrm{C}(\mathrm{g})$ is a first order reaction. It was started with pure A</p>
<p><style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 432px"><colgroup>
<col style="width: 213px">
<col style="width: 219px">
</colgroup>
<thead>
  <tr>
    <th class="tg-7btt">t/min</th>
    <th class="tg-7btt">Pressure of system at time t/mm Hg</th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-0pky">10</td>
    <td class="tg-0pky">160</td>
  </tr>
  <tr>
    <td class="tg-0pky">$\infty$</td>
    <td class="tg-0pky">240</td>
  </tr>
</tbody>
</table></p>
<p>Which of the following option is incorrect?</p>',
    '[{"id": "A", "text": "Initial pressure of A is 80 mm Hg"}, {"id": "B", "text": "The reaction never goes to completion"}, {"id": "C", "text": "Partial pressure of A after 10 minute is 40 mm Hg"}, {"id": "D", "text": "Rate constant of the reaction is $1.693 \\mathrm{~min}^{-1}$"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9p1e1or/f82dc3bb-7f57-4347-95b2-5fb9016a974f/62013db0-1d90-11f0-8528-f36c523d5a7b/file-jaoe38c1m9p1e1os.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/jaoe38c1m9p1e1or/f82dc3bb-7f57-4347-95b2-5fb9016a974f/62013db0-1d90-11f0-8528-f36c523d5a7b/file-jaoe38c1m9p1e1os.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0 auto; max-height: 40vh; vertical-align: baseline" alt="JEE Main 2025 (Online) 7th April Morning Shift Chemistry - Chemical Kinetics and Nuclear Chemistry Question 8 English Explanation"></p>
<p>$$\begin{aligned}
&amp;\begin{aligned}
&amp; \mathrm{P}_{\infty}=3 \mathrm{P}_0=240 \\
&amp; \quad \mathrm{P}_0=80 \mathrm{~mm} \text { of } \mathrm{Hg} \\
&amp; \mathrm{Kt}=\ln \left(\frac{\mathrm{P}_{\infty}-\mathrm{P}_0}{\mathrm{P}_{\infty}-\mathrm{Pt}}\right) \\
&amp; \mathrm{K} \times 10=\ln \left(\frac{240-80}{240-160}\right) \\
&amp; \mathrm{K}=\frac{\ln 2}{10}=0.0693 \mathrm{~min}^{-1}
\end{aligned}\\
&amp;\text { Option (3) is incorrect }
\end{aligned}$$</p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemical_kinetics_and_nuclear_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7432066e-e769-4e46-9a25-8155fc57e22f',
    'chemistry',
    '12',
    'Chemistry In Everyday Life',
    'Chemicals In Medicines',
    'easy',
    'single_correct',
    '<p>Match List I with List II</p>
<p><style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 690px">
<colgroup>
<col style="width: 75px">
<col style="width: 239px">
<col style="width: 75px">
<col style="width: 301px">
</colgroup>
<thead>
  <tr>
    <th class="tg-7btt"></th>
    <th class="tg-7btt">LIST I<br>(Compound)</th>
    <th class="tg-7btt"></th>
    <th class="tg-7btt">LIST II<br>(Uses)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-c3ow">A.</td>
    <td class="tg-0pky">Idoform</td>
    <td class="tg-c3ow">I.</td>
    <td class="tg-0pky">Fire extinguisher  </td>
  </tr>
  <tr>
    <td class="tg-c3ow">B.	</td>
    <td class="tg-0pky">Carbon tetrachloride</td>
    <td class="tg-c3ow">II.</td>
    <td class="tg-0pky">Insecticide</td>
  </tr>
  <tr>
    <td class="tg-c3ow">C.</td>
    <td class="tg-0pky">CFC</td>
    <td class="tg-c3ow">III.</td>
    <td class="tg-0pky">Antiseptic</td>
  </tr>
  <tr>
    <td class="tg-c3ow">D.</td>
    <td class="tg-0pky">DDT</td>
    <td class="tg-c3ow">IV.</td>
    <td class="tg-0pky">Refrigerants</td>
  </tr>
</tbody>
</table></p>
<p>Choose the correct answer from the options given below:</p>',
    '[{"id": "A", "text": "A-II, B-IV, C-I, D-III"}, {"id": "B", "text": "A-III, B-I, C-IV, D-II"}, {"id": "C", "text": "A-III, B-II, C-IV, D-I"}, {"id": "D", "text": "A-I, B-II, C-III, D-IV"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<p>The matching for each compound with its respective use is based on their known applications:</p>

<ul>

<li><strong>Iodoform</strong> is a compound known for its application as an <strong>antiseptic</strong>. It has been used historically in medical applications for the treatment of wounds due to its antimicrobial properties. Hence, Iodoform matches with <strong>III. Antiseptic</strong>.</li>

<li><strong>Carbon Tetrachloride</strong> was widely used as a <strong>fire extinguishing agent</strong> due to its property of being a non-flammable liquid that can suffocate fires. However, its use has been significantly reduced in most countries because of its adverse health and environmental impacts. Carbon Tetrachloride matches with <strong>I. Fire extinguisher</strong>.</li>

<li><strong>CFCs (Chlorofluorocarbons)</strong> have been used as <strong>refrigerants</strong> in air conditioning and refrigeration systems. Their capacity to absorb heat makes them suitable for this purpose. Unfortunately, their harmful effects on the ozone layer have led to their phase-out under global agreements like the Montreal Protocol. Therefore, CFC matches with <strong>IV. Refrigerants</strong>.</li>

<li><strong>DDT (Dichlorodiphenyltrichloroethane)</strong> is known for its use as an <strong>insecticide</strong>. It was widely used to control mosquito populations and other agricultural pests. However, due to environmental and health concerns, its use has been banned or severely restricted in many countries. DDT matches with <strong>II. Insecticide</strong>.</li>

</ul>

<p>Thus, the correct option is <strong>Option B</strong>: A-III, B-I, C-IV, D-II.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'chemistry_in_everyday_life'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e6dc83a5-caee-4688-9832-173fc3a20572',
    'chemistry',
    '12',
    'Compounds Containing Nitrogen',
    'Aliphatic Amines',
    'easy',
    'single_correct',
    'Primary, secondary and tertiary amines can be separated using:',
    '[{"id": "A", "text": "Chloroform and KOH"}, {"id": "B", "text": "Acetyl amide"}, {"id": "C", "text": "Benzene sulphonic acid"}, {"id": "D", "text": "para-Toluene sulphonyl chloride"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/1kn1sa4pg/a8384e06-ff68-4761-a5ac-a989c74f1b3c/30067140-9482-11eb-a405-cf12956abac3/file-1kn1sa4ph.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2021 (Online) 17th March Evening Shift Chemistry - Compounds Containing Nitrogen Question 146 English Explanation">',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'compounds_containing_nitrogen'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '98d15262-134b-4b83-bafa-b62ed6f976ff',
    'chemistry',
    '12',
    'Compounds Containing Nitrogen',
    'Aliphatic Amines',
    'easy',
    'single_correct',
    '<p>In the reaction given below</p>
<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz6s7a/3196aa53-65fc-4596-a96a-3331c92ae83a/1110de60-e07f-11ed-baf9-87204e3a7c88/file-1lgqz6s7b.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lgqz6s7a/3196aa53-65fc-4596-a96a-3331c92ae83a/1110de60-e07f-11ed-baf9-87204e3a7c88/file-1lgqz6s7b.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English"></p>
<p>''B'' is</p>',
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz8mft/74dfe0bf-9bf9-4b80-a308-b4a106dd96ed/443b7890-e07f-11ed-baf9-87204e3a7c88/file-1lgqz8mfu.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1lgqz8mft/74dfe0bf-9bf9-4b80-a308-b4a106dd96ed/443b7890-e07f-11ed-baf9-87204e3a7c88/file-1lgqz8mfu.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz8xg9/f504d74c-46ab-4db9-9a5e-dee8c0369752/4cbd3490-e07f-11ed-baf9-87204e3a7c88/file-1lgqz8xga.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1lgqz8xg9/f504d74c-46ab-4db9-9a5e-dee8c0369752/4cbd3490-e07f-11ed-baf9-87204e3a7c88/file-1lgqz8xga.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz98jy/8980d327-1352-488f-825d-6c2b9b4b5cff/5550cae0-e07f-11ed-baf9-87204e3a7c88/file-1lgqz98jz.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1lgqz98jy/8980d327-1352-488f-825d-6c2b9b4b5cff/5550cae0-e07f-11ed-baf9-87204e3a7c88/file-1lgqz98jz.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/1lgqz9joa/8adf3be4-345b-4f19-af40-b644e63d0f8b/5de7e3a0-e07f-11ed-baf9-87204e3a7c88/file-1lgqz9job.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/1lgqz9joa/8adf3be4-345b-4f19-af40-b644e63d0f8b/5de7e3a0-e07f-11ed-baf9-87204e3a7c88/file-1lgqz9job.png\" loading=\"lazy\" style=\"max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;\" alt=\"JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1lh1pt63p/d7289697-e7c7-4a55-908e-4dc1cbb54058/03751c60-e667-11ed-b7c9-957e12d0338a/file-1lh1pt63q.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1lh1pt63p/d7289697-e7c7-4a55-908e-4dc1cbb54058/03751c60-e667-11ed-b7c9-957e12d0338a/file-1lh1pt63q.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 70vh" alt="JEE Main 2023 (Online) 13th April Morning Shift Chemistry - Compounds Containing Nitrogen Question 62 English Explanation">',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'compounds_containing_nitrogen'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7e1877e7-0bb1-4f68-abc9-ac8ba1a179f0',
    'chemistry',
    '12',
    'Coordination Compounds',
    'Isomerism Of Coordination Compounds',
    'easy',
    'single_correct',
    'The number of geometric isomers that can exist for square planar [Pt (Cl) (py) (NH<sub>3</sub>) (NH<sub>2</sub>OH)]+ is (py = pyridine) :',
    '[{"id": "A", "text": "3"}, {"id": "B", "text": "4"}, {"id": "C", "text": "6"}, {"id": "D", "text": "2"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Square planar complexes of type $$M\left[ {ABCD} \right]\,$$ form three isomers. Their position may be obtained by fixing the position of one ligand and placing at the <i>trans</i> position any one of the remaining three ligands one by one. 
<br><br><img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l91otovx/97be41e5-a979-4a4c-b9f6-f8f3ec15c075/6dce7ed0-4801-11ed-8757-0f869593f41f/file-1l91otovy.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l91otovx/97be41e5-a979-4a4c-b9f6-f8f3ec15c075/6dce7ed0-4801-11ed-8757-0f869593f41f/file-1l91otovy.png" loading="lazy" style="max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 60vh" alt="JEE Main 2015 (Offline) Chemistry - Coordination Compounds Question 284 English Explanation">',
    4,
    -1,
    true,
    2015,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'coordination_compounds'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c87bc973-876d-401e-8ad1-ec41e5e8460b',
    'chemistry',
    '12',
    'Coordination Compounds',
    'Crystal Field Theory Cft',
    'medium',
    'single_correct',
    'The correct order of intensity of colors of the compounds is :',
    '[{"id": "A", "text": "$${[Ni{(CN)_4}]^{2 - }} &gt; {[NiC{l_4}]^{2 - }} &gt; {[Ni{({H_2}O)_6}]^{2 + }}$$"}, {"id": "B", "text": "$${[Ni{({H_2}O)_6}]^{2 + }} &gt; {[NiC{l_4}]^{2 - }} &gt; {[Ni{(CN)_4}]^{2 - }}$$"}, {"id": "C", "text": "$${[NiC{l_4}]^{2 - }} &gt; {[Ni{({H_2}O)_6}]^{2 + }} &gt; {[Ni{(CN)_4}]^{2 - }}$$"}, {"id": "D", "text": "$${[NiC{l_4}]^{2 - }} &gt; {[Ni{(CN)_4}]^{2 - }} &gt; {[Ni{({H_2}O)_6}]^{2 + }}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Correct order of intensity of colours of the compounds is<br/><br/>[NiCl<sub>4</sub>]<sup>2$$-$$</sup> > [Ni(H<sub>2</sub>O)<sub>6</sub>]<sup>2+</sup> > [Ni(CN)<sub>4</sub>]<sup>2$$-$$</sup><br/><br/>Ni is in +2 oxidation state in all complexes. The intensity of colour depends on the strength of the ligand attached with the central metal atom because more strong ligand more splitting energy, less is intensity of colour. Strength of ligand is in the order CN<sup>$$-$$</sup> > H<sub>2</sub>O > Cl<sup>$$-$$</sup>.<br/><br/>Splitting energy order [NiCl<sub>4</sub>]<sup>2$$-$$</sup> < [Ni(H<sub>2</sub>O)<sub>6</sub>]<sup>2+</sup> < [Ni(CN)<sub>4</sub>]<sup>2$$-$$</sup><br/><br/>$$\therefore$$ Intensity of colour of compound<br/><br/>[NiCl<sub>4</sub>]<sup>2$$-$$</sup> > [Ni(H<sub>2</sub>O)<sub>6</sub>]<sup>2+</sup> > [Ni(CN)<sub>4</sub>]<sup>2$$-$$</sup>',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'coordination_compounds'],
    true,
    now()
);
COMMIT;