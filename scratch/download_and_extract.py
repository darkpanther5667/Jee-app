import os
import sys
import pickle
import requests
import types

# 1. Setup absolute dummy modules in sys.modules to prevent importing PyPDF2 or other modules
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

# 2. Paths configuration
current_dir = os.path.dirname(os.path.abspath(__file__))
pkl_path = os.path.join(current_dir, 'DataBaseChapters-v007.pkl')
download_url = "https://github.com/HostServer001/jee_mains_pyqs_data_base/releases/download/v007/1762787474-DataBaseChapters-v007.pkl"

# 3. Download pkl file if not exists
if not os.path.exists(pkl_path):
    print(f"Downloading database pickle from {download_url}...")
    r = requests.get(download_url, stream=True)
    with open(pkl_path, 'wb') as f:
        for chunk in r.iter_content(chunk_size=8192):
            if chunk:
                f.write(chunk)
    print("Download completed successfully!")
else:
    print("Database pickle already exists locally.")

# 4. Load the database pickle file
print("Loading database pickle into memory...")
try:
    with open(pkl_path, 'rb') as f:
        db_chapters = pickle.load(f)
    
    print(f"Database loaded successfully! Total Chapters: {len(db_chapters)}")
    
    # 5. Let's inspect a few chapters and the total question count
    total_questions = 0
    chapters_sample = list(db_chapters.keys())[:5]
    print("\nSample Chapters:")
    for chap_name in db_chapters:
        chap_obj = db_chapters[chap_name]
        q_dict = getattr(chap_obj, 'question_dict', {})
        total_questions += len(q_dict)
        if chap_name in chapters_sample:
            print(f"- {chap_name}: {len(q_dict)} questions")
            
    print(f"\n🔥 TOTAL QUESTIONS AVAILABLE IN THIS SOURCE: {total_questions} 🔥")
    
except Exception as e:
    print(f"Error occurred while loading pickle: {e}")
    import traceback
    traceback.print_exc()
