import os
import sys
import pickle
import types
import uuid
import json

# 1. Setup UTF-8 encoding
if sys.platform.startswith('win'):
    import io
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

# 2. Mock Modules for Pickle Loading
core_mod = types.ModuleType("core")
sys.modules["core"] = core_mod
chapter_mod = types.ModuleType("core.chapter")
sys.modules["core.chapter"] = chapter_mod
question_mod = types.ModuleType("core.question")
sys.modules["core.question"] = question_mod

class Chapter:
    def __init__(self):
        self.parent_subject = ""
        self.name = ""
        self.question_dict = {}
        
class Question:
    def __init__(self):
        self.question_id = ""
        self.examGroup = ""
        self.exam = ""
        self.subject = ""
        self.chapterGroup = ""
        self.chapter = ""
        self.year = 0
        self.paperTitle = ""
        self.difficulty = ""
        self.topic = ""
        self.type = ""
        self.examDate = None
        self.answer = None
        self.question = ""
        self.options = []
        self.correct_options = []
        self.explanation = ""

chapter_mod.Chapter = Chapter
question_mod.Question = Question
core_mod.chapter = chapter_mod
core_mod.question = question_mod

# 3. Path setup
current_dir = os.path.dirname(os.path.abspath(__file__))
pkl_path = os.path.join(current_dir, 'DataBaseChapters-v007.pkl')

# 4. Load Pickle Database
print("Loading database pickle into memory...")
with open(pkl_path, 'rb') as f:
    db_chapters = pickle.load(f)

# 5. Extract target: 50 Mathematics, 50 Physics, 50 Chemistry
target_counts = {
    'mathematics': 50,
    'physics': 50,
    'chemistry': 50
}
curated_questions = []

subject_pools = {
    'mathematics': [],
    'physics': [],
    'chemistry': []
}

# Sort chapters to maintain deterministic extraction
sorted_chapter_names = sorted(db_chapters.keys())

for chap_name in sorted_chapter_names:
    chap_obj = db_chapters[chap_name]
    q_dict = getattr(chap_obj, 'question_dict', {})
    
    # Sort keys of questions
    for q_idx in sorted(q_dict.keys()):
        q = q_dict[q_idx]
        
        # We only want standard MCQs with exactly one correct option and 4 options
        q_type = getattr(q, 'type', '')
        if q_type != 'mcq':
            continue
            
        q_subject = getattr(q, 'subject', '').lower()
        if q_subject not in subject_pools:
            continue
            
        q_text = getattr(q, 'question', '').strip()
        q_explanation = getattr(q, 'explanation', '').strip()
        q_options = getattr(q, 'options', [])
        q_correct_options = getattr(q, 'correct_options', [])
        q_year = getattr(q, 'year', 0)
        
        # Validations
        if not q_text or not q_explanation:
            continue
        if len(q_options) != 4:
            continue
        if len(q_correct_options) != 1:
            continue
            
        correct_option_letter = q_correct_options[0].upper()
        if correct_option_letter not in ['A', 'B', 'C', 'D']:
            continue
            
        subject_pools[q_subject].append(q)

print("\nCandidate Pools Available:")
for sub, pool in subject_pools.items():
    print(f"- {sub}: {len(pool)} eligible candidates")

# Curate exactly 50 from each subject by picking a spaced distribution
for sub in ['mathematics', 'physics', 'chemistry']:
    pool = subject_pools[sub]
    target_cnt = target_counts[sub]
    
    if len(pool) < target_cnt:
        print(f"Warning: Only {len(pool)} eligible questions found for {sub}! Taking all of them.")
        selected = pool
    else:
        step = len(pool) // target_cnt
        selected = [pool[i * step] for i in range(target_cnt)]
        
    curated_questions.extend(selected)

print(f"\nCurated total of {len(curated_questions)} premium questions.")

# 6. Generate PostgreSQL SQL insert scripts in 5 batches of 30 questions each
def escape_sql_string(s):
    if s is None:
        return 'NULL'
    return s.replace("'", "''")

batch_size = 30
num_batches = 5

for batch_idx in range(num_batches):
    batch_questions = curated_questions[batch_idx * batch_size : (batch_idx + 1) * batch_size]
    sql_statements = []
    sql_statements.append(f"-- JEE Test Series Massive Question Seed Batch {batch_idx + 1} of 5")
    sql_statements.append("BEGIN TRANSACTION;")
    
    for q in batch_questions:
        q_id = str(uuid.uuid4())
        q_subject = q.subject.lower()
        
        # Chapter title formatting
        q_chapter = q.chapter.replace('-', ' ').title()
        for acronym in ['Pyq', 'Jee', 'Ssh', 'Shm', 'Ac', 'Emw', 'Emi', '3D']:
            q_chapter = q_chapter.replace(acronym, acronym.upper())
        q_chapter = q_chapter.replace('And', 'and').replace('Of', 'of')
        
        q_topic = q.topic.replace('-', ' ').title() if q.topic else 'General'
        
        q_difficulty = q.difficulty.lower() if q.difficulty else 'medium'
        if q_difficulty not in ['easy', 'medium', 'hard']:
            q_difficulty = 'medium'
            
        q_type = 'single_correct'
        q_text = q.question.strip()
        
        formatted_options = []
        for opt in q.options:
            opt_id = opt['identifier'].upper()
            opt_text = opt['content'].strip()
            formatted_options.append({
                "id": opt_id,
                "text": opt_text
            })
        options_json = json.dumps(formatted_options)
        
        correct_option_letter = q.correct_options[0].upper()
        correct_answer_json = json.dumps({
            "type": "single",
            "value": correct_option_letter
        })
        
        q_solution = q.explanation.strip()
        
        pyq_year = int(q.year)
        pyq_exam = 'jee_main' if q.exam == 'jee-main' else 'jee_advanced'
        
        pyq_shift = None
        if q.paperTitle:
            paper_title_lower = q.paperTitle.lower()
            if 'morning' in paper_title_lower:
                pyq_shift = 'Morning Shift'
            elif 'evening' in paper_title_lower:
                pyq_shift = 'Evening Shift'
            elif 'afternoon' in paper_title_lower:
                pyq_shift = 'Afternoon Shift'
                
        class_11_chapters = [
            'Units And Measurements', 'Motion In A Straight Line', 'Motion In A Plane',
            'Laws Of Motion', 'Work Power And Energy', 'Rotational Motion', 'Gravitation',
            'Properties Of Matter', 'Heat And Thermodynamics', 'Simple Harmonic Motion', 'Waves',
            'Some Basic Concepts Of Chemistry', 'Structure Of Atom', 'Periodic Table And Periodicity',
            'Chemical Bonding And Molecular Structure', 'Chemical Equilibrium', 'Ionic Equilibrium',
            'Redox Reactions', 'S Block Elements', 'Gaseous State',
            'Trigonometric Ratio And Identites', 'Trigonometric Functions And Equations',
            'Quadratic Equation And Inequalities', 'Sequences And Series', 'Permutations And Combinations',
            'Binomial Theorem', 'Straight Lines And Pair Of Straight Lines', 'Circle', 'Parabola', 'Ellipse', 'Hyperbola'
        ]
        
        q_class = '11'
        if q_chapter not in class_11_chapters:
            q_class = '12'
            
        marks_correct = 4
        marks_incorrect = -1
        
        stmt = f"""INSERT INTO questions (
    id, subject, class, chapter, topic, difficulty, question_type, 
    question_text, options, correct_answer, solution_text, 
    marks_correct, marks_incorrect, is_pyq, pyq_year, pyq_exam, pyq_shift, source, tags, verified, created_at
) VALUES (
    '{q_id}',
    '{q_subject}',
    '{q_class}',
    '{escape_sql_string(q_chapter)}',
    '{escape_sql_string(q_topic)}',
    '{q_difficulty}',
    '{q_type}',
    '{escape_sql_string(q_text)}',
    '{escape_sql_string(options_json)}'::jsonb,
    '{escape_sql_string(correct_answer_json)}'::jsonb,
    '{escape_sql_string(q_solution)}',
    {marks_correct},
    {marks_incorrect},
    true,
    {pyq_year},
    '{pyq_exam}',
    {f"'{escape_sql_string(pyq_shift)}'" if pyq_shift else 'NULL'},
    'pyq',
    ARRAY['pyq', '{q_subject}', '{escape_sql_string(q_chapter.lower().replace(" ", "_"))}'],
    true,
    now()
);"""
        sql_statements.append(stmt)
        
    sql_statements.append("COMMIT;")
    
    batch_output_path = os.path.join(current_dir, f'massive_seed_batch_{batch_idx + 1}.sql')
    with open(batch_output_path, 'w', encoding='utf-8') as sql_file:
        sql_file.write('\n'.join(sql_statements))
        
    print(f"Generated batch {batch_idx + 1} of 5: {batch_output_path}")

print("\nSuccessfully finished batch generation!")
