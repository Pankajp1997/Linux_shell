#!/bin/bash

# Set the directory to be cleaned up
directory="/path/to/directory"

# Set the number of days after which files will be deleted
days_threshold=30

# Find files older than the threshold and delete them
find "$directory" -type f -mtime +$days_threshold -exec rm {} \;

echo "File cleanup completed!"
