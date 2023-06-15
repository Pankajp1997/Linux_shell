#!/bin/bash

# Set the log file path
log_file="/path/to/logfile.log"

# Analyze the log file (example: count the number of occurrences of a specific pattern)
pattern="ERROR"
occurrences=$(grep -c "$pattern" "$log_file")

echo "Occurrences of '$pattern' in the log file: $occurrences"
