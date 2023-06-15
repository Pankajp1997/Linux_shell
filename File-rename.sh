#!/bin/bash

# Set the directory containing the files to be renamed
directory="/path/to/directory"

# Iterate through the files and rename them
for file in "$directory"/*; do
  # Extract the filename without extension
  filename=$(basename "$file")
  extension="${filename##*.}"
  filename="${filename%.*}"
  
  # Rename the file with the desired pattern
  new_filename="prefix_$filename.$extension"
  mv "$file" "$directory/$new_filename"
done

echo "File renaming completed!"
