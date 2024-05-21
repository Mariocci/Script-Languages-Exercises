#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <file_pattern>"
    exit 1
fi

directory="$1"
file_pattern="$2"

echo "Directory: $directory"
echo "File pattern: $file_pattern"

total_lines=0

find "$directory" -type f -name "$file_pattern" -exec wc -l {} + | awk '{total += $1} END {print "Total lines of '"$file_pattern"':", total}'
