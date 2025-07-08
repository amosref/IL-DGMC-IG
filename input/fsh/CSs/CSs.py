import re
import os

def split_codesystems_to_files(input_filepath):
    """
    Reads an FSH file containing multiple CodeSystem definitions and splits
    them into individual .fsh files, named CodeSystem-{id}.fsh.

    Args:
        input_filepath (str): The path to the input FSH file.
    """
    try:
        with open(input_filepath, 'r', encoding='utf-8') as f:
            content = f.read()
    except FileNotFoundError:
        print(f"Error: Input file not found at '{input_filepath}'")
        print("Please ensure 'CSs.txt' is in the same directory as the script.")
        return
    except Exception as e:
        print(f"Error reading file '{input_filepath}': {e}")
        return

    # Regular expression to find each CodeSystem block and its ID
    # The `re.MULTILINE` flag makes `^` match the start of a line.
    # The `re.DOTALL` flag makes `.` (and thus `[\s\S]`) match newlines.
    # This pattern captures the entire CodeSystem block, from its definition
    # until the start of the next CodeSystem block or the very end of the string.
    pattern = re.compile(r'(^CodeSystem:[\s\S]*?)(?=^CodeSystem:|\Z)', re.MULTILINE | re.DOTALL)
    individual_codesystems = pattern.findall(content)

    if not individual_codesystems:
        print("No CodeSystem definitions found or file format is unexpected.")
        return

    print("Splitting CodeSystem definitions...")

    for block_content in individual_codesystems:
        # Extract the 'Id' from the current block to use for the filename.
        # Ensure the 'Id' line is at the start of a line for this regex.
        match_id = re.search(r'^Id:\s*(\S+)', block_content, re.MULTILINE)
        if not match_id:
            print(f"Warning: Could not find 'Id' in block:\n{block_content}\nSkipping this block.")
            continue

        codesystem_id = match_id.group(1).strip()
        output_filename = f"CodeSystem-{codesystem_id}.fsh"
        try:
            with open(output_filename, 'w', encoding='utf-8') as outfile:
                outfile.write(block_content.strip()) # write the full block content
            print(f"Created: {output_filename}")
        except Exception as e:
            print(f"Error writing to file '{output_filename}': {e}")

    print("\nSplitting complete.")

if __name__ == "__main__":
    # The script now automatically looks for 'CSs.txt' in the same directory.
    # Ensure to remove any 'Alias:' sections if you are copying content directly.
    # The 'CSs.txt' file should only contain the CodeSystem definitions.
    input_file = "CSs.txt"
    print(f"Looking for input file: {input_file}")
    split_codesystems_to_files(input_file)
