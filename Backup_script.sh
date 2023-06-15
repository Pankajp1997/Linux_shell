#!/bin/bash

# Set the source directory to be backed up
source_directory="/path/to/source/directory"

# Set the destination directory where backups will be stored
destination_directory="/path/to/destination/directory"

# Create a timestamp for the backup file
timestamp=$(date +"%Y%m%d%H%M%S")

# Create a backup file using the timestamp
backup_file="backup_$timestamp.tar.gz"

# Create the backup using tar
tar -czvf "$destination_directory/$backup_file" "$source_directory"

echo "Backup created: $backup_file"
