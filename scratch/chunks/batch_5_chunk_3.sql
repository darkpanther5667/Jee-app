-- Batch 5 - Chunk 3 of 6

BEGIN TRANSACTION;

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
    '[{"id": "A", "text": "<img src=\"https://app-content.cdn.examgoal.net/fly/@width/image/jaoe38c1m9gj2b3g/f55b24e1-1881-42b7-8e3d-fbdcc8d400ec/720aeec0-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2b3h.png?format=png\" data-orsrc=\"https://app-content.cdn.examgoal.net/image/jaoe38c1m9gj2b3g/f55b24e1-1881-42b7-8e3d-fbdcc8d400ec/720aeec0-18e2-11f0-a103-9bd1ffe79f48/file-jaoe38c1m9gj2b3h.png\" loading=\"lazy\" style=\"max-width: 100%;

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

COMMIT;