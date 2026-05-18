-- JEE Test Series Massive Question Seed Batch 5 of 5
BEGIN TRANSACTION;
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '67ddb9bb-330d-4560-877d-13db409bfbf6',
    'chemistry',
    '12',
    'Coordination Compounds',
    'Application Of Coordination Compound And Organometallic Compounds',
    'medium',
    'single_correct',
    '<p>Choose the correct statements from the following :</p>
<p>(A) Ethane-1, 2-diamine is a chelating ligand.</p>
<p>(B) Metallic aluminium is produced by electrolysis of aluminium oxide in presence of cryolite.</p>
<p>(C) Cyanide ion is used as ligand for leaching of silver.</p>
<p>(D) Phosphine act as a ligand in Wilkinson catalyst.</p>
<p>(E) The stability constants of $$\mathrm{Ca}^{2+}$$ and $$\mathrm{Mg}^{2+}$$ are similar with EDTA complexes.</p>
<p>Choose the correct answer from the options given below :</p>',
    '[{"id": "A", "text": "(B), (C), (E) only"}, {"id": "B", "text": "(A), (D), (E) only"}, {"id": "C", "text": "(C), (D), (E) only"}, {"id": "D", "text": "(A), (B), (C) only"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<p>Let''s examine each statement for correctness:</p>

<p>(A) Ethane-1, 2-diamine is a chelating ligand.</p>
<p>Ethane-1,2-diamine, also known as ethylenediamine (en), has two nitrogen atoms that can coordinate to a metal ion, forming a ring structure in the process. Because it can form these two bonds, it can "chelate" a metal ion, thus it is correctly identified as a chelating ligand.</p>

<p>(B) Metallic aluminium is produced by electrolysis of aluminium oxide in presence of cryolite.</p>
<p>Aluminium is indeed produced industrially by the Hall-Héroult process, which involves the electrolysis of aluminium oxide ($$\mathrm{Al_2O_3}$$) dissolved in molten cryolite ($$\mathrm{Na_3AlF_6}$$). Cryolite acts as a solvent for the aluminium oxide and reduces the melting point of the mixture, thus decreasing energy consumption during electrolysis. This statement is correct.</p>

<p>(C) Cyanide ion is used as a ligand for leaching of silver.</p>
<p>Gold and silver are often extracted from their ores via a leaching process using a cyanide solution. The cyanide ion ($$\mathrm{CN^-}$$) complexes with the metal ions to form soluble complexes like [Ag(CN)$_2$]$^-$, enabling the separation of silver from the ore. So, this statement is correct as well.</p>

<p>(D) Phosphine act as a ligand in Wilkinson''s catalyst.</p>
<p>Wilkinson''s catalyst is $$\mathrm{RhCl(PPh_3)_3}$$, where PPh$_3$ stands for triphenylphosphine, a type of phosphine ligand. Phosphines are indeed ligands in Wilkinson''s catalyst, and they play an important role in its catalytic activity, particularly in hydrogenation reactions. Therefore, this statement is correct.</p>

<p>(E) The stability constants of $$\mathrm{Ca}^{2+}$$ and $$\mathrm{Mg}^{2+}$$ are similar with EDTA complexes.</p>
<p>EDTA (ethylenediaminetetraacetic acid) forms strong complexes with many metal ions including $$\mathrm{Ca}^{2+}$$ and $$\mathrm{Mg}^{2+}$$. However, the stability constants of their complexes with EDTA are not similar; the stability constant for the calcium complex is notably higher than that for the magnesium complex. Thus, this statement is incorrect.</p>

<p>With all the information above, we can conclude:</p>
<p>(A) is correct, (B) is correct, (C) is correct, (D) is correct, and (E) is incorrect.</p>
<p>Therefore, the correct statements are (A), (B), (C), and (D), making Option D—(A), (B), (C) only—the correct choice.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Morning Shift',
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
    'a4e94ae2-b287-4ec2-b8c4-8fb9b04e7330',
    'chemistry',
    '12',
    'D and F Block Elements',
    'Inner Transition Elements Lanthanoids And Actinoids',
    'easy',
    'single_correct',
    'The actinoids exhibits more number of oxidation states in general than the lanthanoids. This is
because :',
    '[{"id": "A", "text": "the 5f orbitals are more buried than the 4f orbitals"}, {"id": "B", "text": "there is a similarity between 4f and 5f orbitals in their angular part of the wave function"}, {"id": "C", "text": "the actinoids are more reactive than the lanthanoids"}, {"id": "D", "text": "the 5f orbitals extend further from the nucleus than the 4f orbitals"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<b>NOTE :</b> More the distance between nucleus and outer orbitals, lesser will be force of attraction on them. Distance between nucleus and $$5f$$ orbitals is more as compared to distance between $$4f$$ orbital and nucleus. So actinoids exhibit  more number of oxidation states in general than the lanthanoids.',
    4,
    -1,
    true,
    2007,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'd_and_f_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '7a347016-1095-47ee-87af-1f4bfaa506a1',
    'chemistry',
    '12',
    'D and F Block Elements',
    'Properties Of Transition Elements',
    'easy',
    'single_correct',
    '<p>The metal ion (in gaseous state) with lowest spin-only magnetic moment value is :</p>',
    '[{"id": "A", "text": "V<sup>2+</sup>"}, {"id": "B", "text": "Ni<sup>2+</sup>"}, {"id": "C", "text": "Cr<sup>2+</sup>"}, {"id": "D", "text": "Fe<sup>2+</sup>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '<table style="width:100%;text-align:left;min-width:460px">
<thead>
  <tr>
    <th></th>
    <th>Valence shell configuration</th>
    <th>Unpaired electrons</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>V<sup>2+</sup></td>
    <td>3d<sup>3</sup>4s<sup>0</sup></td>
    <td>n = 3</td>
  </tr>
  <tr>
    <td>Ni<sup>2+</sup></td>
    <td>3d<sup>8</sup>4s<sup>0</sup></td>
    <td>n = 2</td>
  </tr>
  <tr>
    <td>Cr<sup>2+</sup></td>
    <td>3d<sup>4</sup>4s<sup>0</sup></td>
    <td>n = 4</td>
  </tr>
  <tr>
    <td>Fe<sup>2+</sup></td>
    <td>3d<sup>6</sup>4s<sup>0</sup></td>
    <td>n = 4</td>
  </tr>
</tbody>
</table><br/><br/>
Since Ni<sup>2+</sup> has least number of unpaired electrons.
Hence Ni<sup>2+</sup> will have lowest spin only magnetic
moment Value.',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'd_and_f_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '25df98be-5c60-42de-896d-74db7483b208',
    'chemistry',
    '12',
    'Electrochemistry',
    'Conductance And Electrolysis',
    'easy',
    'single_correct',
    'Conductivity (Seimen’s S) is directly proportional to area of the vessel and the concentration
of the solution in it and is inversely proportional to the length of the vessel then, then constant of proportionality is expressed in :',
    '[{"id": "A", "text": "Sm mol<sup>-1</sup>"}, {"id": "B", "text": "Sm<sup>2 </sup> mol<sup>-1</sup>"}, {"id": "C", "text": "S<sup>-2</sup>m<sup>2</sup> mol"}, {"id": "D", "text": "S<sup>2</sup>m<sup>2</sup> mol<sup>-2</sup>"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'Given $$S \propto {{area\, \times \,conc} \over \ell } = {{\kappa {m^2}mol} \over {m \times {m^3}}}$$
<br><br>$$\therefore$$ $$\,\,\,\,\kappa  = S{m^2}mo{l^{ - 1}}$$',
    4,
    -1,
    true,
    2002,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'electrochemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '3e0dafaa-bf84-4574-ba0d-9c45fdb5b931',
    'chemistry',
    '12',
    'Electrochemistry',
    'Conductance And Electrolysis',
    'medium',
    'single_correct',
    '<p>The molar conductivity of a conductivity cell filled with 10 moles of 20 mL NaCl solution is $${\Lambda _{m1}}$$ and that of 20 moles another identical cell heaving 80 mL NaCl solution is $${\Lambda _{m2}}$$. The conductivities exhibited by these two cells are same. The relationship between $${\Lambda _{m2}}$$ and $${\Lambda _{m1}}$$ is</p>',
    '[{"id": "A", "text": "$${\\Lambda _{m2}}$$ = 2$${\\Lambda _{m1}}$$"}, {"id": "B", "text": "$${\\Lambda _{m2}}$$ = $${\\Lambda _{m1}}$$ / 2"}, {"id": "C", "text": "$${\\Lambda _{m2}}$$ = $${\\Lambda _{m1}}$$"}, {"id": "D", "text": "$${\\Lambda _{m2}}$$ = 4$${\\Lambda _{m1}}$$"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '$$\Lambda_{\mathrm{m}_{1}}=\frac{\mathrm{k}_{1} \times 1000}{\mathrm{M}_{1}}=\frac{\mathrm{k} \times 1000}{\frac{10}{0.02}}$$
<br/><br/>
$$
\Lambda_{\mathrm{m}_{2}}=\frac{\mathrm{k}_{2} \times 1000}{\frac{20}{0.08}}
$$
<br/><br/>
It is given that $$\mathrm{k}_{1}=\mathrm{k}_{2}$$
<br/><br/>
$$
\mathrm{k}_{1}=\frac{\Lambda_{\mathrm{m}_{1}}}{2} \quad \quad \mathrm{k}_{2}=\frac{\Lambda_{\mathrm{m}_{2}}}{4}
$$
<br/><br/>
Applying the given condition on conductivity.
<br/><br/>
$$
\begin{gathered}
\frac{\Lambda_{\mathrm{m}_{1}}}{2}=\frac{\Lambda_{\mathrm{m}_{2}}}{4} \\
\Lambda_{\mathrm{m}_{2}}=2 \Lambda_{\mathrm{m}_{1}}
\end{gathered}
$$',
    4,
    -1,
    true,
    2022,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'electrochemistry'],
    true,
    now()
);
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
<img src="https://imagex.cdn.examgoal.net/7k9k2k5epjtbk/45f6cd7c-f0c3-41ad-8b97-848508f65f20/cd8e5300-3741-11ea-92dd-4b9c3519996f/file-7k9k2k5epjtbl-429w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 7th January Evening Slot Chemistry - Haloalkanes and Haloarenes Question 122 English"><br>
K<sub>s</sub> and K<sub>e</sub>, are respectively, the rate constants for substitution and elimination and $$\mu  = {{{k_s}} \over {{k_e}}}$$ the
correct options is',
    '[{"id": "A", "text": "$${\\mu _B} &gt; {\\mu _A}$$ and K<sub>e</sub>(A) &gt; K<sub>e</sub>(B)"}, {"id": "B", "text": "$${\\mu _A} &gt; {\\mu _B}$$ and K<sub>e</sub>(B) &gt; K<sub>e</sub>(A)"}, {"id": "C", "text": "$${\\mu _B} &gt; {\\mu _A}$$ and K<sub>e</sub>(B) &gt; K<sub>e</sub>(A)"}, {"id": "D", "text": "$${\\mu _A} &gt; {\\mu _B}$$ and K<sub>e</sub>(A) &gt; K<sub>e</sub>(B)"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'For 1<sup>o</sup> alkayl halide rate of substitute reaction is more than rate of elimination reaction.
<br><br>When Z = A, then k<sub>s</sub> $$&gt;$$ k<sub>e</sub> and
<br><br>when Z = B, then k<sub>s</sub> $$&lt;$$ k<sub>e</sub>
<br><br>$$ \therefore $$ $$\mu $$<sub>A</sub> $$&gt;$$ $$\mu $$<sub>B</sub>
<br><br>As B is strong base than A so for B more elimination reaction happens.
<br><br>$$ \therefore $$ K<sub>e</sub>(B) $$&gt;$$ K<sub>e</sub>(A)',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
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
<img src="https://imagex.cdn.examgoal.net/7k9k2k5hlpttz/bb585948-6c51-438b-aa7d-28703054deb7/2a3cd570-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlptu0-271w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English">',
    '[{"id": "A", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hlrh5e/9a957056-1dc2-446b-bef6-5605523afa8d/580f0720-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlrh5f-203w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hls04t/ea0b2476-c1f1-400c-900e-eabaa60cbc02/66b925d0-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hls04u-223w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hlr8sc/5d509dac-61c7-408a-b5f2-417e7732bfee/519947c0-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlr8sd-184w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://imagex.cdn.examgoal.net/7k9k2k5hlrove/aecb070a-aa59-4243-9f40-d1ed139fa04d/5e0620a0-38d9-11ea-92dd-4b9c3519996f/file-7k9k2k5hlrovf-184w.jpg\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;\" loading=\"lazy\" alt=\"JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    '<img src="https://imagex.cdn.examgoal.net/7kd4dk64c6ofx/1cd8d783-8dcf-4209-93d3-0943ac08f001/ea795ed0-4559-11ea-b62d-51ccc5d4afb6/file-7kd4dk64c6ofy-320w.jpg" style="max-width: 100%;height: auto;display: block;margin: 0 auto;" loading="lazy" alt="JEE Main 2020 (Online) 8th January Evening Slot Chemistry - Hydrocarbons Question 104 English Explanation">',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'hydrocarbons'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '2beb3971-a32d-4b12-b269-7c8760d56935',
    'chemistry',
    '12',
    'Hydrocarbons',
    'Reaction Of Alkenes',
    'medium',
    'single_correct',
    '<p>$$ \text { Which compound would give 3-methyl-6-oxoheptanal upon ozonolysis? } $$</p>',
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj2b3g/f55b24e1-1881-42b7-8e3d-fbdcc8d400ec/720aeec0-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2b3h.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj2b3g/f55b24e1-1881-42b7-8e3d-fbdcc8d400ec/720aeec0-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2b3h.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Option 1\">"}, {"id": "B", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj2hhy/e72344bd-54da-4254-874e-87dcaa5a19c8/76fd1b60-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2hhz.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj2hhy/e72344bd-54da-4254-874e-87dcaa5a19c8/76fd1b60-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2hhz.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Option 2\">"}, {"id": "C", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj3aic/52d321a1-2084-4f07-8793-2129984538af/8d661b40-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj3aid.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj3aic/52d321a1-2084-4f07-8793-2129984538af/8d661b40-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj3aid.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Option 3\">"}, {"id": "D", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj3gjo/1715d52a-e488-4cc9-a7fb-212886c23e84/920ff440-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj3gjp.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj3gjo/1715d52a-e488-4cc9-a7fb-212886c23e84/920ff440-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj3gjp.png\" loading=\"lazy\" style=\"max-width: 100%;height: auto;display: block;margin: 0 auto;max-height: 40vh;vertical-align: baseline\" alt=\"JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Option 4\">"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p><img src="https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1ma0nrksr/844e9058-e3e2-4618-bd27-5e175962f4d5/82457db0-23f4-11f0-97d4-0962b8b605df/file-jaoe38c1ma0nrkss.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/jaoe38c1ma0nrksr/844e9058-e3e2-4618-bd27-5e175962f4d5/82457db0-23f4-11f0-97d4-0962b8b605df/file-jaoe38c1ma0nrkss.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0 auto; max-height: 40vh; vertical-align: baseline" alt="JEE Main 2025 (Online) 3rd April Morning Shift Chemistry - Hydrocarbons Question 2 English Explanation"></p>',
    4,
    -1,
    true,
    2025,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'hydrocarbons'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '81009ef8-9d4a-4c80-82dd-709e572bae90',
    'chemistry',
    '12',
    'Hydrogen',
    'Hard And Soft Water',
    'easy',
    'single_correct',
    '<p>Given below are two statements :</p>
<p>Statement I : Permutit process is more efficient compared to the synthetic resin method for the softening of water.</p>
<p>Statement II : Synthetic resin method results in the formation of soluble sodium salts.</p>
<p>In the light of the above statements, choose the most appropriate answer from the options given below:</p>',
    '[{"id": "A", "text": "Statement I is correct but Statement II is incorrect"}, {"id": "B", "text": "Both the Statements I and II are correct"}, {"id": "C", "text": "Both the Statements I and II are incorrect"}, {"id": "D", "text": "Statement I is incorrect but Statement II is correct"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'I. Synthetic resin is more efficient as cations as well as anions responsible for removal of permanent hardness.<br/><br/>
II. In synthetic resin method, cations and anions are removed in the form of ppt.<br/><br/>
Hence, both statements are incorrect.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'hydrogen'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '5f54b4be-0a66-4f2f-a899-768bce97f218',
    'chemistry',
    '11',
    'Ionic Equilibrium',
    'Ph Buffer And Indicators',
    'medium',
    'single_correct',
    'Which of the following statement(s) is/are correct?<br/><br/>
(A) The $\mathrm{pH}$ of $1 \times 10^{-8}~ \mathrm{M} ~\mathrm{HCl}$ solution is 8 .<br/><br/>
(B) The conjugate base of $\mathrm{H}_{2} \mathrm{PO}_{4}^{-}$ is $\mathrm{HPO}_{4}^{2-}$.<br/><br/>
(C) $\mathrm{K}_{\mathrm{w}}$ increases with increase in temperature.<br/><br/>
(D) When a solution of a weak monoprotic acid is titrated against a strong base at half neutralisation point, $\mathrm{pH}=\frac{1}{2} \mathrm{pK}_{\mathrm{a}}$<br/><br/>

Choose the correct answer from the options given below:',
    '[{"id": "A", "text": "$(\\mathrm{A}),(\\mathrm{B}),(\\mathrm{C})$"}, {"id": "B", "text": "(B), (C)"}, {"id": "C", "text": "(B), (C), (D)"}, {"id": "D", "text": "(A), (D)"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    '(A) The $\mathrm{pH}$ of $1 \times 10^{-8}~ \mathrm{M} ~\mathrm{HCl}$ solution is 8.
<br/><br/>
This statement is incorrect. For a strong acid like HCl, the concentration of H+ ions will be the same as the concentration of the acid, i.e., $1 \times 10^{-8}~\mathrm{M}$. The pH can be calculated using the formula:
<br/><br/>
$\mathrm{pH} = -\log [\mathrm{H}^+] = -\log (1 \times 10^{-8}) = 8$
<br/><br/>
However, because the concentration is so low, it approaches the range where water auto-ionization becomes significant. In this case, the solution pH will be slightly higher than 7, but not exactly 8.
<br/><br/>
(B) The conjugate base of $\mathrm{H}_{2} \mathrm{PO}_{4}^{-}$ is $\mathrm{HPO}_{4}^{2-}$.
<br/><br/>
This statement is correct. The conjugate base of an acid is formed when it loses one H+ ion:
<br/><br/>
$\mathrm{H}_{2} \mathrm{PO}_{4}^{-} \rightarrow \mathrm{HPO}_{4}^{2-} + \mathrm{H}^{+}$
<br/><br/>
(C) $\mathrm{K}_{\mathrm{w}}$ increases with an increase in temperature.
<br/><br/>
This statement is correct. The ion product of water, $\mathrm{K}_{\mathrm{w}}$, increases with increasing temperature. This is because the auto-ionization of water is an endothermic process, meaning it absorbs heat:
<br/><br/>
$\mathrm{H}_{2} \mathrm{O} \rightleftharpoons \mathrm{H}^{+} + \mathrm{OH}^{-}$
<br/><br/>
As the temperature increases, the equilibrium shifts towards the formation of more $\mathrm{H}^{+}$ and $\mathrm{OH}^{-}$ ions, leading to an increase in $\mathrm{K}_{\mathrm{w}}$.
<br/><br/>
(D) When a solution of a weak monoprotic acid is titrated against a strong base at the half-neutralization point, $\mathrm{pH}=\frac{1}{2} \mathrm{pK}_{\mathrm{a}}$
<br/><br/>
This statement is incorrect. At the half-neutralization point, the concentration of the weak acid ([HA]) is equal to the concentration of its conjugate base ([A-]). According to the Henderson-Hasselbalch equation:
<br/><br/>
$\mathrm{pH} = \mathrm{pK}_{\mathrm{a}} + \log \frac{[\mathrm{A}^{-}]}{[\mathrm{HA}]}$
<br/><br/>
At the half-neutralization point, the ratio of [A-] to [HA] is 1, so the equation becomes:
<br/><br/>
$\mathrm{pH} = \mathrm{pK}_{\mathrm{a}} + \log (1) = \mathrm{pK}_{\mathrm{a}}$
<br/><br/>
Therefore, the correct answer is:
<br/><br/>
(B) and (C) are correct.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'ionic_equilibrium'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'febafe99-9589-405e-ac48-21d532933890',
    'chemistry',
    '12',
    'Isolation of Elements',
    'Minerals And Ores',
    'easy',
    'single_correct',
    'Match List-I with List-II :<br><br><table>
<thead>
  <tr>
    <th></th>
    <th>List - I<br>(Name of ore/mineral)</th>
    <th></th>
    <th>List - II<br>(Chemical formula)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>(a)</td>
    <td>Calmine</td>
    <td>(i)</td>
    <td>$$Zns$$</td>
  </tr>
  <tr>
    <td>(b)</td>
    <td>Malachite</td>
    <td>(ii)</td>
    <td>$$FeC{O_3}$$</td>
  </tr>
  <tr>
    <td>(c)</td>
    <td>Siderite</td>
    <td>(iii)</td>
    <td>$$ZnC{O_3}$$</td>
  </tr>
  <tr>
    <td>(d)</td>
    <td>Sphalerite</td>
    <td>(iv)</td>
    <td>$$CuC{O_3}.Cu{(OH)_2}$$</td>
  </tr>
</tbody>
</table><br><br>Choose the most appropriate answer from the options given below :',
    '[{"id": "A", "text": "(a)-(iii), (b)-(iv), (c)-(ii), (d)-(i)"}, {"id": "B", "text": "(a)-(iii), (b)-(iv), (c)-(i), (d)-(ii)"}, {"id": "C", "text": "(a)-(iv), (b)-(iii), (c)-(i), (d)-(ii)"}, {"id": "D", "text": "(a)-(iii), (b)-(ii), (c)-(iv), (d)-(i)"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '(Name of ore/mineral)<br><br>(a) Calamine - ZnCO<sub>3</sub><br><br>(b) Malachite - CuCO<sub>3</sub> . Cu(OH)<sub>2</sub><br><br>(c) Siderite - FeCO<sub>3</sub><br><br>(d) Sphalerite - ZnS
<br><br><b>Note : ( Remember all those ores names. Any one of those can be asked in the exam.)</b>
<br><br><b>Oxides Ores :</b>
<br><br> (1) ZnO - Zincite<br><br>(2) Fe<sub>2</sub>O<sub>3</sub> - Haematite<br><br>(3) Fe<sub>3</sub>O<sub>4</sub> - Magnetite (FeO + Fe<sub>2</sub>O<sub>3</sub> mixture)<br><br>(4) Fe<sub>2</sub>O<sub>3</sub> . 3H<sub>2</sub>O - Limonite<br><br>(5) MnO<sub>2</sub> - Pyrolusite<br><br>(6) Cu<sub>2</sub>O - Cuprite or Ruby Copper<br><br>(7) TiO<sub>2</sub> - Rutile<br><br>(8) FeCr<sub>2</sub>O<sub>4</sub> - Chromite (FeO + Cr<sub>2</sub>O<sub>3</sub>)<br><br>(9) FeTiO<sub>3</sub> - Illmenite (FeO + TiO<sub>2</sub>)<br><br>(10) Na<sub>2</sub>B<sub>4</sub>O<sub>7</sub> . 10H<sub>2</sub>O - Borax or Tincal<br><br>(11) U<sub>3</sub>O<sub>8</sub> - Pitch Blende<br><br>(12) SnO<sub>2</sub> - Tin Stone or Cassiterite<br><br>(13) Ca<sub>2</sub>B<sub>6</sub>O<sub>11</sub> . 5H<sub>2</sub>O - Colemanite (2 Cao + 3 B<sub>2</sub>O<sub>3</sub>)<br><br>(14) Al<sub>2</sub>O<sub>3</sub> . 2H<sub>2</sub>O - Bauxite<br><br>(15) Al<sub>2</sub>O<sub>3</sub> . H<sub>2</sub>O - Diaspore<br><br>(16) Al<sub>2</sub>O<sub>3</sub> - Corundum
<br><br><b>Sulphides Ores :</b>
<br><br>(1) ZnS - Zinc Blende or Sphalerite<br><br>(2) PbS - Galena<br><br>(3) Ag<sub>2</sub>S - Argentite or Silver Glance<br><br>(4) HgS - Cinnabar<br><br>(5) Cu<sub>2</sub>S - Chalcocite or Copper glance<br><br>(6) CuFeS<sub>2</sub> - Copper pyrites or Chalco pyrites (Cu<sub>2</sub>S + Fe<sub>2</sub>S<sub>3</sub> mixture)<br><br>(7) FeS<sub>2</sub> - Iron pyrites or Fool''s Gold<br><br>(8) 3Ag<sub>2</sub>S . Sb<sub>2</sub>S<sub>2</sub> - Pyrargyrite or ruby silver
<br><br> <b>Halides Ores :</b><br><br>(1) NaCl - Rock Salt<br><br>(2) KCl - Sylvine<br><br>(3) Na<sub>3</sub>AlF<sub>6</sub> - Cryolite [3NaF + AlF<sub>6</sub>]<br><br>(4) CaF<sub>2</sub> - Fluorspar<br><br>(5) KCl . MgCl<sub>2</sub> . 6H<sub>2</sub>O - Carnalite<br><br>(6) AgCl - Horn Silver
<br><br><b>Carbonates Ores :</b><br><br>(1) CaCO<sub>3</sub> - Limestone<br><br>(2) MgCO<sub>3</sub> - Magnesite<br><br>(3) CaCO<sub>3</sub> . MgCO<sub>3</sub> - Dolomite<br><br>(4) ZnCO<sub>3</sub> - Calamine<br><br>(5) PbCO<sub>3</sub> - Cerrusite<br><br>(6) FeCO<sub>3</sub> - Siderite<br><br>(7) CuCO<sub>3</sub> . Cu(OH)<sub>2</sub> or Cu<sub>2</sub>CO<sub>3</sub>(OH)<sub>2</sub> - Malachite or Basic Copper Carbonates<br><br>(8) 2 CuCO<sub>3</sub> . Cu(OH)<sub>2</sub> - Azurite
<br><br><b>Sulphates Ores :</b><br><br>(1) CuSO<sub>4</sub> . 2H<sub>2</sub>O - Gypsum<br><br>(2) MgSO<sub>4</sub> . 7H<sub>2</sub>O - Epson Salt<br><br>(3) Na<sub>2</sub>SO<sub>4</sub> . 10 H<sub>2</sub>O - Glauber''s Salt<br><br>(4) PbSO<sub>4</sub> - Anglesite<br><br>(5) ZnSO<sub>4</sub> . 7H<sub>2</sub>O - White Vitriol<br><br>(6) FeSO<sub>4</sub> . 7H<sub>2</sub>O - Green Vitriol<br><br>(7) CuSO<sub>4</sub> . 5H<sub>2</sub>O - Blue Vitriol or Chalcanthite<br><br><b>Nitrate Ores :</b><br><br>(1) KNO<sub>3</sub> - Indian Saltpetre<br><br>(2) NaNO<sub>3</sub> - Chile Saltpetre<br><br><b>Arsenides Ores :</b><br><br>(1) NiAs - Kupfernickel<br><br>(2) NiAsS - Nickel glance',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'isolation_of_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e7e36edf-079a-4235-9894-ee440fb7169a',
    'chemistry',
    '12',
    'P Block Elements',
    'Group 15 Elements Nitrogen Family',
    'medium',
    'single_correct',
    'Which one of the following properties is not shown by NO?',
    '[{"id": "A", "text": "It combines with oxygen to form nitrogen dioxide"}, {"id": "B", "text": "It\u2019s bond order is 2.5"}, {"id": "C", "text": "It is diamagnetic in gaseous state"}, {"id": "D", "text": "It is a neutral oxide"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Nitric oxide is paramagnetic in the gaseous state because of the presence of one unpaired electron in its outermost shell.
<br><br>The electronic configuration of $$NO$$ is 
<br><br>$$\sigma _{1s}^2\,\sigma _{1s}^{ * 2}\,\sigma _{2s}^2\,\sigma _{2s}^{ \circ 2}\,\sigma _{{2_{{p_z}}}}^2\,\pi _{{2_{{p_x}}}}^2$$
<br><br>$$ = \pi _{{2_{Py}}}^2\,\pi _{{2_{Px}}}^{ * 1}$$',
    4,
    -1,
    true,
    2014,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'p_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '899807d3-8c0f-4d54-8739-78b017057547',
    'chemistry',
    '12',
    'P Block Elements',
    'Group 15 Elements Nitrogen Family',
    'easy',
    'single_correct',
    'Chemical nature of the nitrogen oxide compound obtained from a reaction of concentrated nitric acid and P<sub>4</sub>O<sub>10</sub> (in 4 : 1 ratio) is :',
    '[{"id": "A", "text": "acidic"}, {"id": "B", "text": "basic"}, {"id": "C", "text": "amphoteric"}, {"id": "D", "text": "neutral"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    '<p>Chemical nature of the nitrogen pentaoxide compound obtained
from a reaction of concentrated nitric acid and P<sub>4</sub>O<sub>10</sub> (in 4 : 1 ratio) is
acidic.</p>
<p>Chemical reaction is as follows</p>
<img src="https://app-content.cdn.examgoal.net/fly/@width/image/1l0ads4jf/5608738b-a31c-4082-89fc-529e5bae6218/594b2cb0-9a9b-11ec-9f52-c900a8226ba7/file-1l0ads4jg.png?format=png" data-orsrc="https://app-content.cdn.examgoal.net/image/1l0ads4jf/5608738b-a31c-4082-89fc-529e5bae6218/594b2cb0-9a9b-11ec-9f52-c900a8226ba7/file-1l0ads4jg.png" loading="lazy" style="max-width: 100%; height: auto; display: block; margin: 0px auto; max-height: 40vh;" alt="JEE Main 2021 (Online) 20th July Morning Shift Chemistry - p-Block Elements Question 143 English Explanation">
<p>$$ \therefore $$ N<sub>2</sub>O<sub>5</sub> is an acidic oxide.</p>',
    4,
    -1,
    true,
    2021,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'p_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'dd0066ef-fac8-4d23-af9c-bd6c61809d2b',
    'chemistry',
    '12',
    'P Block Elements',
    'Group 13 Elements Boron Family',
    'easy',
    'single_correct',
    '<p>The covalency and oxidation state respectively of boron in $$\left[\mathrm{BF}_{4}\right]^{-}$$, are :</p>',
    '[{"id": "A", "text": "3 and 4"}, {"id": "B", "text": "4 and 3"}, {"id": "C", "text": "4 and 4"}, {"id": "D", "text": "3 and 5"}]'::jsonb,
    '{"type": "single", "value": "B"}'::jsonb,
    'In the tetrafluoroborate anion ($$\left[\mathrm{BF}_{4}\right]^{-}$$), boron is bonded to four fluorine atoms through covalent bonds. Therefore, the covalency of boron in this ion is 4.
<br/><br/>
The oxidation state of boron can be calculated by considering the charges on the atoms involved in the anion. Fluorine has an oxidation state of -1, and there are four fluorine atoms in the anion, which contributes a total of -4. Since the overall charge on the tetrafluoroborate anion is -1, the oxidation state of boron must be +3 in order to balance the charges.
<br/><br/>
So, the covalency and oxidation state of boron in $$\left[\mathrm{BF}_{4}\right]^{-}$$ are 4 and 3, respectively.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'p_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '86fcb3e6-d3e3-4903-9aed-b09a4188d062',
    'chemistry',
    '12',
    'Periodic Table and Periodicity',
    'Periodic Table And Its Features',
    'easy',
    'single_correct',
    'The lathanide ion that would show colour is :',
    '[{"id": "A", "text": "Sm<sup>3+</sup>"}, {"id": "B", "text": "Gd<sup>3+</sup>"}, {"id": "C", "text": "Lu<sup>3+</sup>"}, {"id": "D", "text": "La<sup>3+</sup>"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Electronic configuration of 
<br><br>Sm = [Xe] 4f<sup>6</sup> 6s<sup>2</sup>
<br><br>$$ \therefore $$ Electronic configuration of 
<br><br>Sm<sup>+3</sup> = [Xe] 4f<sup>5</sup>
<br><br>Sm<sup>+3</sup> shows yellow colour due to partially filled f orbital and f-f transition.
<br><br>Electronic configuration of 
<br><br>La<sup>+3</sup> = [Xe] 4f<sup>0</sup>
<br><br>Lu<sup>+3</sup> = [Xe] 4f<sup>14</sup>
<br><br>Gd<sup>+3</sup> = [Xe] 4f<sup>7</sup>
<br><br>La<sup>+3</sup>, Lu<sup>+3</sup> and Gd<sup>+3</sup> are colourless due to absence of f-f transition.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'periodic_table_and_periodicity'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '920892f1-03a3-48d9-9a1f-3e9756669b38',
    'chemistry',
    '12',
    'Periodic Table and Periodicity',
    'Electron Gain Enthalpy',
    'easy',
    'single_correct',
    '<p>Given below are two statements:</p>
<p>Statement I : Fluorine has most negative electron gain enthalpy in its group.</p>
<p>Statement II : Oxygen has least negative electron gain enthalpy in its group.</p>
<p>In the light of the above statements, choose the most appropriate from the options given below</p>',
    '[{"id": "A", "text": "Both Statement I and Statement II are true"}, {"id": "B", "text": "Both Statement I and Statement II are false"}, {"id": "C", "text": "Statement I is false but Statement II is true"}, {"id": "D", "text": "Statement I is true but Statement II is false"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '<p>Statement- 1 is false because chlorine has most negative electron gain enthalpy in its group.</p>',
    4,
    -1,
    true,
    2024,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'periodic_table_and_periodicity'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '4e94455f-19f5-41b7-a660-7729e6f42ccc',
    'chemistry',
    '12',
    'Polymers',
    'Classification Preparations And Properties Of Polymers',
    'easy',
    'single_correct',
    'Preparation of Bakelite proceeds via reactions.',
    '[{"id": "A", "text": "Electrophilic substitution and dehydration"}, {"id": "B", "text": "Condensation and elimination"}, {"id": "C", "text": "Nucleophilic addition and dehydration"}, {"id": "D", "text": "Electrophilic addition and dehydration"}]'::jsonb,
    '{"type": "single", "value": "A"}'::jsonb,
    'Formation of Bakelite follows electrophillic substitution of phenol and formaldehyde followed by
dehydration.',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'polymers'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '12916c8b-9787-4c0b-a5ad-56ee08c363be',
    'chemistry',
    '12',
    'Practical Organic Chemistry',
    'Detection Of Extra Elements And Functional Groups',
    'medium',
    'single_correct',
    '<p>Compound that will give positive Lassaigne''s test for both nitrogen and halogen is :</p>',
    '[{"id": "A", "text": "$$\\mathrm{NH_2OH.HCl}$$"}, {"id": "B", "text": "$$\\mathrm{N_2H_4.HCl}$$"}, {"id": "C", "text": "$$\\mathrm{CH_3NH_2.HCl}$$"}, {"id": "D", "text": "$$\\mathrm{NH_4Cl}$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    '$\mathrm{CH}_{3} \mathrm{NH}_{2} \cdot \mathrm{HCl}$ will give positive Lassaigne''s test for both nitrogen and halogen.',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'practical_organic_chemistry'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'a62634f8-ea1f-4a4b-b235-75d94fae49dd',
    'chemistry',
    '11',
    'S Block Elements',
    'Physiochemical Trends In Alkali Metals',
    'easy',
    'single_correct',
    'The main oxides formed on combustion of Li, Na and K in excess of air are, respectively :',
    '[{"id": "A", "text": "LiO<sub>2</sub>, Na<sub>2</sub>O<sub>2</sub> and K<sub>2</sub>O"}, {"id": "B", "text": "Li<sub>2</sub>O<sub>2</sub>, Na<sub>2</sub>O<sub>2</sub> and KO<sub>2</sub>"}, {"id": "C", "text": "Li<sub>2</sub>O, Na<sub>2</sub>O<sub>2</sub> and KO<sub>2</sub>"}, {"id": "D", "text": "Li<sub>2</sub>O, Na<sub>2</sub>O and KO<sub>2</sub>"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'On heating with excess of air $$Li,$$ $$Na$$ and $$K$$ forms following oxides 
<br><br>$$4Li + {O_2}\,\,\buildrel \, \over
 \longrightarrow \,\,\mathop {2L{i_2}O\,\,\,\,\,\,\,\,\,\,}\limits_{Lithium\,\,\,\,monoxide} \,$$ 
<br><br>$$2Na + {O_2}\,\,\buildrel {575\,\,K} \over
 \longrightarrow \,\,\mathop {N{a_2}{O_2}\,\,\,\,\,\,\,\,\,\,\,}\limits_{Sodium\,\,\,peroxide} $$ 
<br><br>$$K + {O_2}\,\,\buildrel \, \over
 \longrightarrow \,\,\mathop {K{O_2}\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,}\limits_{Potassium\,\,\,\sup eroxise} $$',
    4,
    -1,
    true,
    2016,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 's_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'd5a8d888-2456-4e5e-83c5-f9a05d6eaf0b',
    'chemistry',
    '11',
    'S Block Elements',
    'Physiochemical Trends In Alkaline Earth Metals',
    'medium',
    'single_correct',
    '<p>The correct order of hydration enthalpies is</p>
<p>(A) K$$^+$$</p>
<p>(B) Rb$$^+$$</p>
<p>(C) Mg$$^{2+}$$</p>
<p>(D) Cs$$^+$$</p>
<p>(E) Ca$$^{2+}$$</p>
<p>Choose the correct answer from the options given below :</p>',
    '[{"id": "A", "text": "E > C > A > B > D"}, {"id": "B", "text": "C > A > E > B > D"}, {"id": "C", "text": "C > E > A > D > B"}, {"id": "D", "text": "C > E > A > B > D"}]'::jsonb,
    '{"type": "single", "value": "D"}'::jsonb,
    'Hydration enthalpy $\propto$ charge density
<br/><br/>Charge density means $${{Magnitude\,of\,Charge} \over {Ionic\,Radius}}$$.
<br/><br/>
$\therefore$ The correct order of charge density is
<br/><br/>
$$
\mathrm{Mg}^{2+}>\mathrm{Ca}^{2+}>\mathrm{K}^{+}>\mathrm{Rb}^{+}>\mathrm{Cs}^{+}
$$
<br/><br/>
$\therefore$ The order of hydration enthalpy
<br/><br/>
$$
C>E>A>B>D
$$',
    4,
    -1,
    true,
    2023,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 's_block_elements'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'eef13448-57c6-4f0e-871b-914ea03911d8',
    'chemistry',
    '12',
    'Solid State',
    'Crystal Structure Of Solids',
    'medium',
    'single_correct',
    'An element has a face-centred cubic (fcc) structure with a cell edge of $$a$$. The distance between the centres of
two nearest tetrahedral voids in the lattice is :',
    '[{"id": "A", "text": "$$a$$"}, {"id": "B", "text": "$${3 \\over 2}a$$"}, {"id": "C", "text": "$${a \\over 2}$$"}, {"id": "D", "text": "$$\\sqrt 2 a$$"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'In FCC, tetrahedral voids are located on the
body diagonal at a <br><br>distance of $${{\sqrt 3 a} \over 4}$$ from the
corner. Together they form a smaller cube of
edge length $${a \over 2}$$.',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Morning Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'solid_state'],
    true,
    now()
);
INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    'e3c8f8be-9655-4f27-a437-1e19d1a7f118',
    'chemistry',
    '12',
    'Solutions',
    'Relative Lowering Of Vapour Pressure And Roults Law',
    'medium',
    'single_correct',
    'A set of solutions is prepared using 180 g of
water as a solvent and 10 g of different nonvolatile solutes A, B and C. The relative
lowering of vapour pressure in the presence of
these solutes are in the order :<br><br>[Given, molar
mass of A = 100 g mol<sup>–1</sup>; B = 200 g mol<sup>–1</sup>;
C = 10,000 g mol<sup>–1</sup>]',
    '[{"id": "A", "text": "A &gt; C &gt; B"}, {"id": "B", "text": "C &gt; B &gt; A"}, {"id": "C", "text": "A &gt; B &gt; C"}, {"id": "D", "text": "B &gt; C &gt; A"}]'::jsonb,
    '{"type": "single", "value": "C"}'::jsonb,
    'Relative lowering in vapour pressure (RLVP)
<br><br>= $${{P - {P_s}} \over P} = {n \over {n + N}}$$
<br><br>n $$ \to $$ moles of solute
<br>N $$ \to $$ moles of solvent
<br><br>$$ \therefore $$ (RLVP)<sub>A</sub> = $${{{{10} \over {100}}} \over {{{10} \over {100}} + {{180} \over {18}}}}$$
<br><br>(RLVP)<sub>B</sub> = $${{{{10} \over {200}}} \over {{{10} \over {200}} + {{180} \over {18}}}}$$
<br><br>and (RLVP)<sub>C</sub> = $${{{{10} \over {10000}}} \over {{{10} \over {10000}} + {{180} \over {18}}}}$$
<br><br>$$ \therefore $$ (RLVP)<sub>A</sub> &gt; (RLVP)<sub>B</sub> &gt; (RLVP)<sub>C</sub>
<br><br>So, A &gt; B &gt; C',
    4,
    -1,
    true,
    2020,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'solutions'],
    true,
    now()
);
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
    '8 gm of NaOH &nbsp;&nbsp;=&nbsp;&nbsp; $${8 \over {40}}$$ &nbsp;&nbsp;=&nbsp;&nbsp; 0.2 mol of NaOH
<br><br>18 gm of H<sub>2</sub>O &nbsp;&nbsp;=&nbsp;&nbsp; $${18 \over {18}}$$ &nbsp;&nbsp;=&nbsp;&nbsp; 1 mol of H<sub>2</sub>O
<br><br>$$ \therefore $$&nbsp;&nbsp;Total mole &nbsp;&nbsp;=&nbsp;&nbsp; 1 + 0.2 &nbsp;&nbsp;=&nbsp;&nbsp; 1.2 mol
<br><br>$$ \therefore $$&nbsp;&nbsp;Mole fraction of NaOH &nbsp;&nbsp;=&nbsp;&nbsp; $${{0.2} \over {1.2}}$$ &nbsp;&nbsp;=&nbsp;&nbsp; 0.167
<br><br>We know, 
<br><br>Molality &nbsp;&nbsp;= &nbsp;&nbsp;$${{Moles\,\,of\,\,solute} \over {Weight\,of\,solvent}} \times $$ 1000
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;$${{0.2} \over {18}} \times $$ 1000
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;11.11',
    4,
    -1,
    true,
    2019,
    'jee_main',
    'Evening Shift',
    'pyq',
    ARRAY['pyq', 'chemistry', 'some_basic_concepts_of_chemistry'],
    true,
    now()
);
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
<br><br>C<sub>(graphite)</sub> $$ \to $$ C<sub>(g)</sub> ; $$\Delta H_f^o$$ = enthalpy of sublimation of carbon
<br><br>H<sub>2(g)</sub> $$ \to $$ 2H(g)
 ; $$\Delta $$H = bond dissociation energy of H<sub>2</sub>',
    4,
    -1,
    true,
    2006,
    'jee_main',
    NULL,
    'pyq',
    ARRAY['pyq', 'chemistry', 'thermodynamics'],
    true,
    now()
);
COMMIT;