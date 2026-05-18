-- Batch 4 - Chunk 1 of 6

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
    'The point A moves with a uniform speed along the circumference of a circle of radius 0.36 m and covers 30$$^\circ$$ in 0.1 s. The perpendicular projection ''P'' from ''A'' on the diameter MN represents the simple harmonic motion of ''P''. The restoration force per unit mass when P touches M will be :<br><br><img src="https://imagex.cdn.examgoal.net/1kltdzp7u/ba0305f2-0d37-4ba0-9074-69eedc9fade2/d1961ca0-7c17-11eb-b0eb-7d97e0807144/file-1kltdzp7v-223w.jpg" style="max-width: 100%;

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
    '[{"id": "A", "text": "B<sub>s</sub> = $$-$$ B"}, {"id": "B", "text": "B<sub>s</sub> = 0"}, {"id": "C", "text": "B<sub>s</sub> = B"}, {"id": "D", "text": "B<sub>s</sub> &lt;

COMMIT;