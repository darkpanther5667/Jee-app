import os
import sys
import pickle
import types

# 1. Setup UTF-8 encoding
if sys.platform.startswith('win'):
    import io
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

# 2. Mock Modules
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

# 3. Load
current_dir = os.path.dirname(os.path.abspath(__file__))
pkl_path = os.path.join(current_dir, 'DataBaseChapters-v007.pkl')

with open(pkl_path, 'rb') as f:
    db_chapters = pickle.load(f)

# 4. Count types
type_counts = {}
for chap_name in db_chapters:
    chap_obj = db_chapters[chap_name]
    for q_idx in chap_obj.question_dict:
        q = chap_obj.question_dict[q_idx]
        q_type = getattr(q, 'type', 'unknown')
        type_counts[q_type] = type_counts.get(q_type, 0) + 1
        
print("Distribution of Question Types:")
for t, cnt in type_counts.items():
    print(f"- {t}: {cnt} questions")
