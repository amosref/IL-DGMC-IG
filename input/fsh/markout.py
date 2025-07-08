import os
import glob

def comment_lines_in_valueset_files(folder_path="."):
    """
    Finds all files containing 'ValueSet' in filename and comments out 
    lines containing 'rambam' or 'sheba' with '//'
    """
    
    # Find all files with 'ValueSet' in the name
    pattern = os.path.join(folder_path, "*ValueSet*")
    files = glob.glob(pattern)
    
    if not files:
        print("No files containing 'ValueSet' found in the specified folder.")
        return
    
    print(f"Found {len(files)} ValueSet files:")
    
    for file_path in files:
        print(f"\nProcessing: {os.path.basename(file_path)}")
        
        try:
            # Read the file
            with open(file_path, 'r', encoding='utf-8') as file:
                lines = file.readlines()
            
            # Track if any changes were made
            changes_made = False
            modified_lines = []
            
            # Process each line
            for line in lines:
                # Check if line contains 'rambam' or 'sheba' (case-insensitive)
                if 'rambam' in line.lower() or 'sheba' in line.lower():
                    # Only add // if line doesn't already start with //
                    if not line.strip().startswith('//'):
                        modified_lines.append('//' + line)
                        changes_made = True
                        print(f"  Commented: {line.strip()[:50]}...")
                    else:
                        modified_lines.append(line)
                else:
                    modified_lines.append(line)
            
            # Write back to file if changes were made
            if changes_made:
                with open(file_path, 'w', encoding='utf-8') as file:
                    file.writelines(modified_lines)
                print(f"  ✓ File updated successfully")
            else:
                print(f"  - No lines to comment found")
                
        except Exception as e:
            print(f"  ✗ Error processing file: {e}")

if __name__ == "__main__":
    # You can change this path to your target folder
    folder_path = input("Enter folder path (or press Enter for current folder): ").strip()
    
    if not folder_path:
        folder_path = "."
    
    if not os.path.exists(folder_path):
        print("Folder path does not exist!")
    else:
        comment_lines_in_valueset_files(folder_path)
    
    input("\nPress Enter to exit...")