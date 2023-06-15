#!/bin/bash

# Set the directory to be compressed
directory="/path/to/directory"

# Create a timestamp for the compressed archive
timestamp=$(date +"%Y%m%d%H%M%S")

# Create the compressed archive using tar
tar -czvf "archive_$timestamp.tar.gz" "$directory"

echo "Compression completed!"
