import os
import sys
import pickle
import types

# 1. Setup UTF-8 encoding for standard output on Windows
if sys.platform.startswith('win'):
    import io
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

# 2. Setup absolute dummy modules in sys.modules to prevent importing PyPDF2 or other modules
core_mod = types.ModuleType("core")
sys.modules["core"] = core_mod

chapter_mod = types.ModuleType("core.chapter")
question_mod = types.ModuleType("core.question")

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

sys.modules["core.chapter"] = chapter_mod
sys.modules["core.question"] = question_mod

core_mod.chapter = chapter_mod
core_mod.question = question_mod

# 3. Paths configuration
current_dir = os.path.dirname(os.path.abspath(__file__))
pkl_path = os.path.join(current_dir, 'DataBaseChapters-v007.pkl')

# 4. Load the database pickle file
print("Loading database pickle into memory...")
try:
    with open(pkl_path, 'rb') as f:
        db_chapters = pickle.load(f)
    
    print(f"Database loaded successfully! Total Chapters: {len(db_chapters)}")
    
    # 5. Let's inspect all chapters and the total question count
    total_questions = 0
    subject_counts = {}
    
    for chap_name in db_chapters:
        chap_obj = db_chapters[chap_name]
        q_dict = getattr(chap_obj, 'question_dict', {})
        count = len(q_dict)
        total_questions += count
        
        parent_sub = getattr(chap_obj, 'parent_subject', 'unknown')
        subject_counts[parent_sub] = subject_counts.get(parent_sub, 0) + count
            
    print(f"\n🔥 TOTAL QUESTIONS AVAILABLE IN THIS SOURCE: {total_questions} 🔥")
    print("\nSubject Breakdown:")
    for sub, cnt in subject_counts.items():
        print(f"- {sub}: {cnt} questions")
        
    print("\nListing all 91 chapters and their sizes:")
    for chap_name in sorted(db_chapters.keys()):
        chap_obj = db_chapters[chap_name]
        q_dict = getattr(chap_obj, 'question_dict', {})
        parent_sub = getattr(chap_obj, 'parent_subject', 'unknown')
        print(f"  * [{parent_sub}] {chap_name}: {len(q_dict)} questions")
    
except Exception as e:
    print(f"Error occurred while loading pickle: {e}")
    import traceback
    traceback.print_exc()
