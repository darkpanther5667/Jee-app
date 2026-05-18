import os
import re

current_dir = os.path.dirname(os.path.abspath(__file__))
chunks_dir = os.path.join(current_dir, 'chunks')
os.makedirs(chunks_dir, exist_ok=True)

# Process all 5 batches
for batch_idx in range(1, 6):
    batch_file_path = os.path.join(current_dir, f'massive_seed_batch_{batch_idx}.sql')
    
    with open(batch_file_path, 'r', encoding='utf-8') as f:
        content = f.read()
        
    # Find all INSERT INTO statements
    insert_pattern = re.compile(r'INSERT INTO questions.*?;', re.DOTALL)
    inserts = insert_pattern.findall(content)
    
    print(f"Batch {batch_idx}: Found {len(inserts)} INSERT statements.")
    
    # Split into chunks of 5
    chunk_size = 5
    num_chunks = (len(inserts) + chunk_size - 1) // chunk_size
    
    for chunk_idx in range(num_chunks):
        chunk_inserts = inserts[chunk_idx * chunk_size : (chunk_idx + 1) * chunk_size]
        
        chunk_sql = []
        chunk_sql.append(f"-- Batch {batch_idx} - Chunk {chunk_idx + 1} of {num_chunks}")
        chunk_sql.append("BEGIN TRANSACTION;")
        chunk_sql.extend(chunk_inserts)
        chunk_sql.append("COMMIT;")
        
        chunk_content = '\n\n'.join(chunk_sql)
        chunk_file_name = f'batch_{batch_idx}_chunk_{chunk_idx + 1}.sql'
        chunk_file_path = os.path.join(chunks_dir, chunk_file_name)
        
        with open(chunk_file_path, 'w', encoding='utf-8') as cf:
            cf.write(chunk_content)
            
        print(f"  Generated {chunk_file_name} (Size: {len(chunk_content)} bytes)")

print("\nAll batches successfully split into micro-chunks!")
