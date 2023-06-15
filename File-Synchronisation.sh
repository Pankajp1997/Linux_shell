#!/bin/bash

# Set the source directory to sync
source_directory="/path/to/source/directory"

# Set the destination directory to sync
destination_directory="/path/to/destination/directory"

# Sync the directories using rsync
rsync -avz "$source_directory/" "$destination_directory/"

echo "Directories synchronized!"
