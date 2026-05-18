import os

jee_db_path = os.path.join(os.path.dirname(__file__), 'jee_db')

print(f"Scanning directory: {jee_db_path}")
for root, dirs, files in os.walk(jee_db_path):
    for f in files:
        if f.endswith('.pkl') or f.endswith('.sqlite') or f.endswith('.db') or f.endswith('.json'):
            full_path = os.path.join(root, f)
            print(f"- {root}/{f} ({os.path.getsize(full_path)} bytes)")
