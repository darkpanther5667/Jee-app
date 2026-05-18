import re

log_path = r'C:\Users\ma830\.gemini\antigravity\brain\58f72083-0457-4292-ad41-2b6d25ee2414\.system_generated\logs\overview.txt'

with open(log_path, 'r', encoding='utf-8', errors='ignore') as f:
    lines = f.readlines()

print("Scanning log file for database keywords...")
for i, line in enumerate(lines):
    line_lower = line.lower()
    if any(kw in line_lower for kw in ['password', 'uypk', 'db.', 'postgresql:']):
        if len(line.strip()) < 200: # avoid extremely long lines
            print(f"Line {i+1}: {line.strip()}")
