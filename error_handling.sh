#In this example, we are reading the contents of a file and processing each line. The script includes error handling for two scenarios:
#File not found: Before processing the file, we check if it exists and is a regular file. If not, an error message is displayed, and the script #exits with a non-zero status code (1).
#Error condition: While processing each line, we simulate an error condition by checking if the line contains the word "error". If it does, an #error message is displayed, and the script exits with a non-zero status code (1).
#!/bin/bash

# Set the file to be processed
file="/path/to/file.txt"

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "Error: File does not exist or is not a regular file."
  exit 1
fi

# Read the contents of the file
while IFS= read -r line; do
  # Perform some operations with each line
  echo "Processing line: $line"
  
  # Example: Simulate an error condition
  if [[ $line == *"error"* ]]; then
    echo "Error: Encountered 'error' in line."
    exit 1
  fi

done < "$file"

echo "Processing completed successfully."
