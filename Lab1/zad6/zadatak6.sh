#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <direktorij1> <direktorij2>"
    exit 1
fi

if [ ! -d "$1" ] || [ ! -d "$2" ]; then
    echo "Zadani direktoriji ne postoje."
    exit 1
fi

for file1 in "$1"/*; do
    file2="$2/$(basename "$file1")"
    if [ "$file1" -nt "$file2" ]; then
        echo "$file1 --> $file2"
    fi
done

for file2 in "$2"/*; do
    file1="$1/$(basename "$file2")"
    if [ "$file2" -nt "$file1" ]; then
        echo "$file2 --> $file1"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    fi
done
