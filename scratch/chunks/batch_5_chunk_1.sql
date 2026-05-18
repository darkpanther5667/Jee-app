-- Batch 5 - Chunk 1 of 6

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
<p>EDTA (ethylenediaminetetraacetic acid) forms strong complexes with many metal ions including $$\mathrm{Ca}^{2+}$$ and $$\mathrm{Mg}^{2+}$$. However, the stability constants of their complexes with EDTA are not similar;

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
    '<table style="width:100%;

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

COMMIT;