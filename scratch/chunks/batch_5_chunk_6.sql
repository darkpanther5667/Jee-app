-- Batch 5 - Chunk 6 of 6

BEGIN TRANSACTION;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c7964661-7474-4e47-8dec-7a2bfc1e8d39',
    'chemistry',
    '12',
    'Some Basic Concepts of Chemistry',
    'Concentration Terms',
    'easy',
    'single_correct',
    '8 g of NaOH is dissolved in 18g of H<sub>2</sub>O. Mole fraction of NaOH in solution and molality (in mol kg<sup>–1</sup>) of the solution respectively are -',
    '[{"id": "A", "text": "0.2, 11.11"}, {"id": "B", "text": "0.167, 22.20"}, {"id": "C", "text": "0.167, 11.11"}, {"id": "D", "text": "0.2, 22.20"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '8 gm of NaOH &nbsp;

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '84e25ee3-5042-4ee1-b9f7-4e6b774d1324',
    'chemistry',
    '12',
    'Structure of Atom',
    'Hydrogen Spectrum',
    'easy',
    'single_correct',
    'The ionization enthalpy of hydrogen atom is 1.312 × 10<sup>6</sup> J mol<sup>−1</sup>. The energy required to excite the
electron in the atom from n = 1 to n = 2 is',
    '[{"id": "A", "text": "8.51 \u00d7 10<sup>5</sup> J mol<sup>\u22121</sup>"}, {"id": "B", "text": "6.56 \u00d7 10<sup>5</sup> J mol<sup>\u22121</sup>"}, {"id": "C", "text": "7.56 \u00d7 10<sup>5</sup> J mol<sup>\u22121</sup>"}, {"id": "D", "text": "9.84 \u00d7 10<sup>5</sup> J mol<sup>\u22121</sup>"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<b>Note :</b>
<br><br>1 eV/atom = 96.485 $$ \times $$ 10<sup>3</sup> J/mol
<br><br>$$\therefore$$ 13.6 eV/atom = 13.6$$ \times $$ 96.485 $$ \times $$ 10<sup>3</sup> J/mol = 1.312 × 10<sup>6</sup> J mol<sup>−1</sup>
<br><br>Energy required to excite the electron from n<sub>1</sub> to n<sub>2</sub> is
<br><br>$$\Delta E = 13.6 \times {Z^2}\left( {{1 \over {n_1^2}} - {1 \over {n_2^2}}} \right)$$
<br><br>= 1.312 × 10<sup>6</sup> × 1$$\left( {{1 \over {{1^2}}} - {1 \over {{2^2}}}} \right)$$
<br><br>= 1.312 × $${3 \over 4}$$ × 10<sup>6</sup>
<br><br>= 9.84 × 10<sup>5</sup> J mol<sup>−1</sup>',
    4,
    -1,
    true,
    2008,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'structure_of_atom'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'c938d71d-4178-4309-95c0-22670abda9ee',
    'chemistry',
    '12',
    'Structure of Atom',
    'Hydrogen Spectrum',
    'easy',
    'single_correct',
    '<p>Which transition in the hydrogen spectrum would have the same wavelength as the Balmer type transition from $$\mathrm{n=4}$$ to $$\mathrm{n}=2$$ of $$\mathrm{He}^{+}$$ spectrum</p>',
    '[{"id": "A", "text": "$$\\mathrm{n}=3$$ to $$\\mathrm{n}=4$$"}, {"id": "B", "text": "$$\\mathrm{n}=2$$ to $$\\mathrm{n}=1$$"}, {"id": "C", "text": "$$\\mathrm{n}=1$$ to $$\\mathrm{n}=2$$"}, {"id": "D", "text": "$$\\mathrm{n}=1$$ to $$\\mathrm{n}=3$$"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '$\mathrm{He}^{+}$ion :
<br/><br/>$$
\begin{aligned}
& \frac{1}{\lambda(\mathrm{H})}=\mathrm{R}(1)^2\left[\frac{1}{\mathrm{n}_1^2}-\frac{1}{\mathrm{n}_2^2}\right] \\\\
& \frac{1}{\lambda\left(\mathrm{He}^{+}\right)}=\mathrm{R}(2)^2\left[\frac{1}{2^2}-\frac{1}{4^2}\right] \\\\
& \text { Given } \lambda(\mathrm{H})=\lambda\left(\mathrm{He}^{+}\right) \\\\
& \mathrm{R}(1)^2\left[\frac{1}{\mathrm{n}_1^2}-\frac{1}{\mathrm{n}_2^2}\right]=\mathrm{R}(4)\left[\frac{1}{2^2}-\frac{1}{4^2}\right] \\\\
& \frac{1}{\mathrm{n}_1^2}-\frac{1}{\mathrm{n}_2^2}=\frac{1}{1^2}-\frac{1}{2^2}
\end{aligned}
$$
<br/><br/>On comparing $\mathrm{n}_1=1 $ and $ \mathrm{n}_2=2$.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'structure_of_atom'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '1d014c30-2792-4e25-949b-88289032e6ce',
    'chemistry',
    '12',
    'Surface Chemistry',
    'Colloids',
    'medium',
    'single_correct',
    'Among the following the false statement is -',
    '[{"id": "A", "text": "Lyophilic sol can be coagulated by adding an electrote"}, {"id": "B", "text": "Tyndall effect can be used to distinguish between a colloidal solution and a true solution"}, {"id": "C", "text": "It is possible to cause artificial rain by throwing electrified sand carrying charge opposite to the one on clouds from an aeroplane"}, {"id": "D", "text": "Latex is a colloidal solution of rubber particles which are positively charged"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Latex is a colloidal solution of rubber particles which are negatively charged.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'surface_chemistry'],
    true,
    now()
);

INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '936f7533-a173-4eaa-b3be-ec7201074b4b',
    'chemistry',
    '12',
    'Thermodynamics',
    'Reactions Related To Enthalpies And Hesss Law',
    'medium',
    'single_correct',
    'The standard enthalpy of formation $$\Delta _fH^o$$ at 298 K for methane, CH<sub>4</sub>(g), is –74.8 kJ mol<sup>–1</sup>. The additional information required to determine the average energy for C – H bond formation would be :',
    '[{"id": "A", "text": "the dissociation energy of H<sub>2</sub> and enthalpy of sublimation of carbon"}, {"id": "B", "text": "latent heat of vapourization of methane"}, {"id": "C", "text": "the first four ionization energies of carbon and electron gain enthalpy of hydrogen"}, {"id": "D", "text": "the dissociation energy of hydrogen molecule, H<sub>2</sub>"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'The standard enthalpy of formation of $$C{H_4}$$ is given by the equation : 
<br><br>$$\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,$$ $$\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,$$ $$C\left( s \right) + 2{H_2}\left( g \right) \to C{H_4}\left( g \right)$$ 
<br><br>In order to calculate average energy for C – H bond formation
we should know the following data.
<br><br>C<sub>(graphite)</sub> $$ \to $$ C<sub>(g)</sub> ;

COMMIT;