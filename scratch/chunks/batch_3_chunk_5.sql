-- Batch 3 - Chunk 5 of 6

BEGIN TRANSACTION;

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
& \mathrm{T}_1=24^{\circ} \mathrm{C} ;

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
<p> <img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l55fktpc/4f8be818-5ada-45af-ac03-4cbb21cbe447/8a2a1ef0-fadf-11ec-830f-2bceee3af987/file-1l55fktpd.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l55fktpc/4f8be818-5ada-45af-ac03-4cbb21cbe447/8a2a1ef0-fadf-11ec-830f-2bceee3af987/file-1l55fktpd.png" loading="lazy" style="max-width: 100%;

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
<br><br><img src="https://imagex.cdn.examgoal.net/jxZCrvW8MJpAor88S/PIon4ifk5WrCXq4uvtEME9DQ9XtmZ/YI1XNvGWUBzMfWVO7mXyNY/image.png" style="max-width: 100%;

COMMIT;