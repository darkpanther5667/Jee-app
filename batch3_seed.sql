INSERT INTO public.questions (
  id, subject, class, chapter, topic, difficulty, question_type, question_text, 
  options, correct_answer, solution_text, is_pyq, pyq_year, pyq_exam, pyq_shift, 
  source, tags, verified, marks_correct, marks_incorrect
) VALUES
('2782b13c-04c3-42e1-85bc-22340b070030', 'physics', '12', 'Ray Optics', 'Prism Deviation', 'hard', 'single_correct', 
 'A ray of light is incident at an angle of $60^\circ$ on one face of a prism of refracting angle $A = 30^\circ$. The ray emerging from the other face makes an angle of $30^\circ$ with the normal. Find the angle of deviation $\delta$ produced by the prism.',
 '[{"id":"A","text":"$30^\\circ$"},{"id":"B","text":"$45^\\circ$"},{"id":"C","text":"$60^\\circ$"},{"id":"D","text":"$90^\\circ$"}]'::jsonb,
 '{"type":"single","value":"C"}'::jsonb,
 'For a prism, the relation between refracting angle $A$, angle of incidence $i$, angle of emergence $e$, and angle of deviation $\delta$ is:
$$i + e = A + \delta$$
Given:
- Angle of refracting $A = 30^\circ$
- Angle of incidence $i = 60^\circ$
- Angle of emergence $e = 30^\circ$

Substituting these values into the formula:
$$60^\circ + 30^\circ = 30^\circ + \delta$$
$$90^\circ = 30^\circ + \delta \implies \delta = 60^\circ$$
Hence, the correct option is **C**.',
 true, 2021, 'jee_main', 'feb_s1', 
 'pyq', ARRAY['Optics','Prism','Deviation'], true, 4, -1),
('2782b13c-04c3-42e1-85bc-22340b070031', 'physics', '12', 'Semiconductors', 'Logic Gates', 'medium', 'single_correct', 
 'Identify the logic gate represented by the boolean expression $Y = \overline{A \cdot B} \cdot \overline{A + B}$.',
 '[{"id":"A","text":"AND gate"},{"id":"B","text":"NAND gate"},{"id":"C","text":"NOR gate"},{"id":"D","text":"OR gate"}]'::jsonb,
 '{"type":"single","value":"C"}'::jsonb,
 'Let us simplify the boolean expression using De Morgan''s laws:
$$Y = \overline{A \cdot B} \cdot \overline{A + B}$$
Recall that:
- $\overline{A \cdot B} = \overline{A} + \overline{B}$
- $\overline{A + B} = \overline{A} \cdot \overline{B}$

Therefore:
$$Y = (\overline{A} + \overline{B}) \cdot (\overline{A} \cdot \overline{B})$$
Since $\overline{A} \cdot \overline{B}$ is a subset or mathematically dominant inside the product:
$$Y = \overline{A} \cdot \overline{B} \cdot \overline{A} + \overline{A} \cdot \overline{B} \cdot \overline{B}$$
Using standard boolean algebraic identities:
$$Y = \overline{A} \cdot \overline{B} + \overline{A} \cdot \overline{B} = \overline{A} \cdot \overline{B}$$
Applying De Morgan''s law back:
$$Y = \overline{A + B}$$
This is the boolean expression for a **NOR gate**.
Hence, the correct option is **C**.',
 true, 2020, 'jee_main', 'jan_s2', 
 'pyq', ARRAY['Electronics','Semiconductors','Logic Gates'], true, 4, -1),
('2782b13c-04c3-42e1-85bc-22340b070032', 'physics', '11', 'Fluid Mechanics', 'Bernoulli''s Theorem', 'hard', 'single_correct', 
 'Water flows through a horizontal pipe of non-uniform cross-section. The velocity of water is $2\text{ m/s}$ at a point where pressure is $20\text{ kPa}$. At another point, the velocity of water is $4\text{ m/s}$. Find the pressure at this point. (Take density of water = $1000\text{ kg/m}^3$)',
 '[{"id":"A","text":"$14\\text{ kPa}$"},{"id":"B","text":"$16\\text{ kPa}$"},{"id":"C","text":"$12\\text{ kPa}$"},{"id":"D","text":"$10\\text{ kPa}$"}]'::jsonb,
 '{"type":"single","value":"A"}'::jsonb,
 'According to Bernoulli''s Theorem for a horizontal pipe:
$$P_1 + \frac{1}{2} \rho v_1^2 = P_2 + \frac{1}{2} \rho v_2^2$$
Given:
- $P_1 = 20\text{ kPa} = 20 \times 10^3\text{ Pa}$
- $v_1 = 2\text{ m/s}$
- $v_2 = 4\text{ m/s}$
- $\rho = 1000\text{ kg/m}^3$

Substituting the values:
$$20 \times 10^3 + \frac{1}{2} (1000) (2)^2 = P_2 + \frac{1}{2} (1000) (4)^2$$
$$20000 + 500(4) = P_2 + 500(16)$$
$$20000 + 2000 = P_2 + 8000$$
$$22000 = P_2 + 8000 \implies P_2 = 14000\text{ Pa} = 14\text{ kPa}$$
Hence, the correct option is **A**.',
 true, 2019, 'jee_main', 'apr_s2', 
 'pyq', ARRAY['Fluids','Fluid Mechanics','Bernoulli'], true, 4, -1),
('2782b13c-04c3-42e1-85bc-22340b070033', 'chemistry', '12', 'Coordination Compounds', 'Magnetic Moment', 'medium', 'numerical', 
 'Find the spin-only magnetic moment (in B.M.) of the complex ion $[Fe(H_2O)_6]^{2+}$. (Atomic number of Fe = 26)',
 '[]'::jsonb,
 '{"type":"numerical","value":4.9}'::jsonb,
 'In $[Fe(H_2O)_6]^{2+}$, Iron is in the $+2$ oxidation state.
The electronic configuration of $Fe$ is $[Ar] 3d^6 4s^2$.
Therefore, the configuration of $Fe^{2+}$ is $[Ar] 3d^6$.
Since $H_2O$ is a weak field ligand, it does not cause pairing of electrons.
The $3d$ orbital configuration will have 4 unpaired electrons ($t_{2g}^4 e_g^2$).

The spin-only magnetic moment $\mu$ is given by:
$$\mu = \sqrt{n(n+2)}\text{ B.M.}$$
Substituting $n = 4$:
$$\mu = \sqrt{4(4+2)} = \sqrt{24} \approx 4.90\text{ B.M.}$$
Hence, the correct answer is **4.9**.',
 true, 2021, 'jee_main', 'aug_s1', 
 'pyq', ARRAY['Inorganic Chemistry','CFT','Magnetic Moment'], true, 4, 0),
('2782b13c-04c3-42e1-85bc-22340b070034', 'chemistry', '11', 'States of Matter', 'Ideal Gas Deviation', 'hard', 'single_correct', 
 'The compressibility factor $Z$ of a real gas at high pressure is equal to which of the following expressions?',
 '[{"id":"A","text":"$1 - \\frac{a}{V_m R T}$"},{"id":"B","text":"$1 + \\frac{P b}{R T}$"},{"id":"C","text":"$1 - \\frac{P b}{R T}$"},{"id":"D","text":"$1 + \\frac{a}{V_m R T}$"}]'::jsonb,
 '{"type":"single","value":"B"}'::jsonb,
 'The van der Waals equation of state for 1 mole of a real gas is:
$$\left( P + \frac{a}{V_m^2} \right) (V_m - b) = R T$$
At high pressures, $P \gg \frac{a}{V_m^2}$, so we can neglect the term $\frac{a}{V_m^2}$:
$$P (V_m - b) = R T$$
$$P V_m - P b = R T \implies P V_m = R T + P b$$
Dividing both sides by $R T$:
$$\frac{P V_m}{R T} = 1 + \frac{P b}{R T}$$
Since the compressibility factor is $Z = \frac{P V_m}{R T}$, we get:
$$Z = 1 + \frac{P b}{R T}$$
Hence, the correct option is **B**.',
 true, 2018, 'jee_main', NULL, 
 'pyq', ARRAY['Physical Chemistry','Gaseous State','Compressibility Factor'], true, 4, -1),
('2782b13c-04c3-42e1-85bc-22340b070035', 'mathematics', '12', 'Limits', 'L''Hopital Rule', 'medium', 'single_correct', 
 'Evaluate the limit: $\lim_{x \to 0} \frac{e^{x^2} - \cos x}{x^2}$.',
 '[{"id":"A","text":"$1$"},{"id":"B","text":"$1.5$"},{"id":"C","text":"$2$"},{"id":"D","text":"$0.5$"}]'::jsonb,
 '{"type":"single","value":"B"}'::jsonb,
 'The limit is in the indeterminate form $\frac{0}{0}$ because as $x \to 0$, $e^{0} - \cos(0) = 1 - 1 = 0$ and $x^2 = 0$.
Applying L''Hopital''s Rule, we differentiate the numerator and denominator with respect to $x$:
$$\lim_{x \to 0} \frac{\frac{d}{dx}(e^{x^2} - \cos x)}{\frac{d}{dx}(x^2)} = \lim_{x \to 0} \frac{2x e^{x^2} + \sin x}{2x}$$
$$\lim_{x \to 0} \left( e^{x^2} + \frac{\sin x}{2x} \right) = e^0 + \frac{1}{2} \lim_{x \to 0} \frac{\sin x}{x} = 1 + \frac{1}{2}(1) = 1.5$$
Hence, the correct option is **B**.',
 true, 2022, 'jee_main', 'jun_s2', 
 'pyq', ARRAY['Calculus','Limits','L'Hopital'], true, 4, -1),
('2782b13c-04c3-42e1-85bc-22340b070036', 'mathematics', '11', 'Straight Lines', 'Distance of Point', 'medium', 'numerical', 
 'Find the perpendicular distance from the point $(3, 4)$ to the straight line $3x - 4y + 12 = 0$.',
 '[]'::jsonb,
 '{"type":"numerical","value":1}'::jsonb,
 'The perpendicular distance $d$ of a point $(x_1, y_1)$ from a straight line $Ax + By + C = 0$ is given by:
$$d = \frac{|Ax_1 + By_1 + C|}{\sqrt{A^2 + B^2}}$$
Given:
- Point $(x_1, y_1) = (3, 4)$
- Line $3x - 4y + 12 = 0$

Substituting the values:
$$d = \frac{|3(3) - 4(4) + 12|}{\sqrt{3^2 + (-4)^2}} = \frac{|9 - 16 + 12|}{\sqrt{9 + 16}} = \frac{|5|}{\sqrt{25}} = \frac{5}{5} = 1$$
Hence, the correct answer is **1**.',
 true, 2018, 'jee_main', NULL, 
 'pyq', ARRAY['Coordinate Geometry','Straight Lines','Distance Formula'], true, 4, 0)
ON CONFLICT (id) DO UPDATE SET
  subject = EXCLUDED.subject,
  class = EXCLUDED.class,
  chapter = EXCLUDED.chapter,
  topic = EXCLUDED.topic,
  difficulty = EXCLUDED.difficulty,
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options,
  correct_answer = EXCLUDED.correct_answer,
  solution_text = EXCLUDED.solution_text,
  is_pyq = EXCLUDED.is_pyq,
  pyq_year = EXCLUDED.pyq_year,
  pyq_exam = EXCLUDED.pyq_exam,
  pyq_shift = EXCLUDED.pyq_shift,
  source = EXCLUDED.source,
  tags = EXCLUDED.tags,
  verified = EXCLUDED.verified,
  marks_correct = EXCLUDED.marks_correct,
  marks_incorrect = EXCLUDED.marks_incorrect;