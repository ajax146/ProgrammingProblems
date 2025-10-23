#!/usr/bin/env python3
import os

# Top-level folder pattern (1-100, 101-200, etc.)
TOP_LEVEL_FOLDERS = [f for f in os.listdir('.') if os.path.isdir(f) and '-' in f]

# Extensions to track and proper names
LANGUAGES = {
    'cpp': 'C++',
    'cs': 'C#',
    'go': 'Go',
    'java': 'Java',
    'php': 'PHP',
    'pl': 'Perl',
    'py': 'Python',
    'rb': 'Ruby',
    'rs': 'Rust',
    'swift': 'Swift',
    'ts': 'TypeScript',
}

for folder in TOP_LEVEL_FOLDERS:
    folder_path = folder
    problem_count = 0
    language_counts = {lang: 0 for lang in LANGUAGES}

    # Iterate over problem folders (1,2,3,...)
    if not os.path.isdir(folder_path):
        continue
    problem_folders = [f for f in os.listdir(folder_path) if os.path.isdir(os.path.join(folder_path, f))]

    for prob_num in problem_folders:
        prob_num_path = os.path.join(folder_path, prob_num)
        subfolders = [f for f in os.listdir(prob_num_path) if os.path.isdir(os.path.join(prob_num_path, f))]
        for sub in subfolders:
            sub_path = os.path.join(prob_num_path, sub)
            files = os.listdir(sub_path)
            has_solution = False
            for file in files:
                if file.endswith('_c'):
                    continue  # Skip "_c" files
                for ext in LANGUAGES:
                    if file.startswith(prob_num + sub) and file.endswith('.' + ext):
                        language_counts[ext] += 1
                        has_solution = True
            if has_solution:
                problem_count += 1

    # Sort languages by count descending, then alphabetically by proper name
    sorted_languages = sorted(language_counts.items(), key=lambda x: (-x[1], LANGUAGES[x[0]]))

    # Write README.md
    readme_path = os.path.join(folder_path, 'README.md')
    with open(readme_path, 'w') as f:
        f.write(f"# Problems {folder}\n\n")
        f.write(f"Total problems with at least one solution: **{problem_count}**\n\n")
        f.write("## Solutions per language\n\n")
        for ext, count in sorted_languages:
            f.write(f"- {LANGUAGES[ext]}: {count}\n")

    print(f"Generated README for {folder}")
