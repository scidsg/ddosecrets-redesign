#!/bin/bash

# Define the directory for the virtual environment
VENV_DIR="venv"

# Define the Python script file name
PYTHON_SCRIPT="py.py"

PYTHON_SCRIPT_CONTENT=$(cat <<-END
import re
import os
import pypandoc
import yaml
from datetime import datetime

def extract_main_content(html_content):
    # Using regular expression to extract content within <main> ... </main>
    match = re.search(r'<main[^>]*>(.*?)</main>', html_content, re.DOTALL)
    if match:
        return match.group(1)
    else:
        return None

def convert_html_to_markdown(html_content):
    # Convert HTML to Markdown using pypandoc
    return pypandoc.convert_text(html_content, 'md', format='html')

def clean_markdown(markdown_content, info, title):
    # Normalize line endings
    cleaned_content = markdown_content.replace('\r\n', '\n').replace('\r', '\n')

    # Comment out the release section using title
    release_section_pattern = r'---\nRELEASE\n\n\*\*' + re.escape(title) + r'\*\*.*\n\n'
    cleaned_content = re.sub(release_section_pattern, r'<!-- \n' + release_section_pattern + ' -->\n\n', cleaned_content, flags=re.DOTALL)

    # Remove the first level 1 heading
    # This regex is more flexible and accounts for variations in heading format
    cleaned_content = re.sub(r'^#\s.*\n+', '', cleaned_content, count=1, flags=re.MULTILINE)

    # Rest of the cleaning operations follow
    # Remove fenced divs
    cleaned_content = re.sub(r':::.*\n?', '', cleaned_content)

    # Remove empty brackets
    cleaned_content = re.sub(r'\[\]\n?', '', cleaned_content)

    # Simplify headers
    cleaned_content = re.sub(r'#+ (.+) \{#.*\}', r'# \1', cleaned_content)

    # Remove additional elements in curly braces
    cleaned_content = re.sub(r'\{[^\}]*\}', '', cleaned_content)

    # Remove brackets from headings
    cleaned_content = re.sub(r'#+ \[([^\]]+)\]', r'## \1', cleaned_content)

    # Remove unnecessary slashes and excessive spaces
    cleaned_content = cleaned_content.replace('\\\\', '')

    # Remove leading and trailing whitespace on each line
    cleaned_content = '\n'.join(line.strip() for line in cleaned_content.split('\n'))

    # Collapse multiple blank lines into a single blank line
    cleaned_content = re.sub(r'\n{3,}', '\n\n', cleaned_content)

    # Replace multiple consecutive spaces (including tabs) with a single space
    cleaned_content = re.sub(r'[ \t]+', ' ', cleaned_content)

    # Standardize horizontal lines
    cleaned_content = re.sub(r'(\n|^)(-[\- ]+-)(\n|$)', r'\1---\3', cleaned_content)

    return cleaned_content

def extract_categories(markdown_content):
    # This regex assumes categories are listed in markdown as links under a "Categories" section
    categories = re.findall(r'\[([^\]]+)\]\(\./Category:[^\)]+\)', markdown_content)
    return categories

def extract_info(markdown_content):
    # Adjust the regular expressions to more precisely match the sections
    dataset_match = re.search(r'\*\*COUNTRY\*\* (.+)\n\*\*TYPE\*\* (.+)\n\*\*SOURCE\*\*\n\*\*FILE SIZE\*\* (.+)', markdown_content)
    download_match = re.search(r'\*\*MAGNET\*\* \[Link\]\((.+)\)\n\*\*TORRENT\*\* \[Link\]\((.+)\)\n\*\*DIRECT DOWNLOAD\*\* \[Link\]\((.+)\)', markdown_content)
    
    # Update the regex for references to exclude categories and other non-reference links
    references = re.findall(r'\[([^\]]+)\]\((http[s]?://[^\)]+)\) \(external link\)', markdown_content)

    notes_match = re.search(r'\*\*EDITOR NOTES\*\*\n(.+)', markdown_content)

    return {
        'dataset': {
            'country': dataset_match.group(1) if dataset_match else '',
            'type': dataset_match.group(2) if dataset_match else '',
            'source': '',
            'size': dataset_match.group(3) if dataset_match else ''
        },
        'download': {
            'magnet': download_match.group(1) if download_match else '',
            'torrent': download_match.group(2) if download_match else '',
            'direct': download_match.group(3) if download_match else ''
        },
        'references': references if references else [],
        'notes': notes_match.group(1) if notes_match else ''
    }

def add_yaml_frontmatter(title, categories, info):
    # Create a dictionary for the YAML front matter
    frontmatter = {
        'title': title,
        'lastmod': datetime.now().strftime('%Y-%m-%d'),
        'categories': categories,
        'info': info
    }

    # Convert the dictionary to a YAML formatted string
    yaml_block = '---\n' + yaml.dump(frontmatter, sort_keys=False) + '---\n\n'
    return yaml_block

def process_html_file(html_file_path):
    # Extract title before calling clean_markdown
    title = os.path.splitext(os.path.basename(html_file_path))[0].replace('_', ' ').replace('-', ' ').title()

    with open(html_file_path, 'r', encoding='utf-8') as file:
        html_content = file.read()

    main_content = extract_main_content(html_content)
    if main_content:
        markdown_content = convert_html_to_markdown(main_content)
        info = extract_info(markdown_content)

        # Pass title to clean_markdown
        cleaned_markdown = clean_markdown(markdown_content, info, title)
        categories = extract_categories(cleaned_markdown)
        yaml_frontmatter = add_yaml_frontmatter(title, categories, info)
        
        # Combine YAML front matter with cleaned markdown content
        final_content = yaml_frontmatter + cleaned_markdown
        return final_content
    else:
        return None

def main():
    for file_name in os.listdir('.'):
        if file_name.endswith('.html'):
            markdown_content = process_html_file(file_name)
            if markdown_content:
                output_file_path = file_name.replace('.html', '.md')
                with open(output_file_path, 'w', encoding='utf-8') as output_file:
                    output_file.write(markdown_content)
                print(f'Markdown content written to {output_file_path}')
            else:
                print(f'No <main> tag content found in {file_name}')

if __name__ == '__main__':
    main()

END
)

# Function to install Homebrew
install_homebrew() {
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Function to install Python 3
install_python3() {
    echo "Installing Python 3..."
    brew install python
}

# Function to create and activate a virtual environment
create_and_activate_venv() {
    echo "Creating virtual environment in $VENV_DIR..."
    python3 -m venv "$VENV_DIR"
    source "$VENV_DIR/bin/activate"
    echo "Virtual environment activated."
}

# Function to create the Python script
create_python_script() {
    echo "Creating Python script..."
    echo "$PYTHON_SCRIPT_CONTENT" > "$PYTHON_SCRIPT"
    echo "Python script created as $PYTHON_SCRIPT."
}

# Function to run the Python script
run_python_script() {
    echo "Running Python script..."
    python "$PYTHON_SCRIPT"
    echo "Python script execution completed."
}

# Function to install the necessary Python packages in the virtual environment
install_python_packages() {
    echo "Installing pypandoc and PyYAML in the virtual environment..."
    pip install pypandoc PyYAML
}

# Check if Homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found."
    install_homebrew

    # Check if Homebrew installation was successful
    if ! command -v brew &> /dev/null
    then
        echo "Failed to install Homebrew. Exiting."
        exit 1
    fi
fi

# Update and Check Homebrew
brew update

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python 3 not found."
    install_python3

    # Check if Python installation was successful
    if ! command -v python3 &> /dev/null
    then
        echo "Failed to install Python 3. Exiting."
        exit 1
    fi
fi

# Create and activate virtual environment
create_and_activate_venv

# Install the necessary Python packages in the virtual environment
install_python_packages

# Create the Python script
create_python_script

# Run the Python script
run_python_script

echo "Setup and execution complete."
