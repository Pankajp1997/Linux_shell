#!/bin/bash

# Set the URLs to download
urls=(
  "https://example.com/file1.txt"
  "https://example.com/file2.txt"
  "https://example.com/file3.txt"
)

# Set the directory to save the downloaded files
directory="/path/to/save/files"

# Iterate through the URLs and download the files
for url in "${urls[@]}"; do
  wget -P "$directory" "$url"
done

echo "Downloads completed!"
