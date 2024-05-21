#!/bin/bash
direktorij="$1"
if [ ! -d "$direktorij" ]; then
    echo "Direktorij '$direktorij' ne postoji."
    echo "USAGE: $0 <direktorij>"
    exit 1
fi

for month in {01..12}; do
    month_files=$(find "$direktorij" -type f -name "????${month}??_????.jpg" | sort)
    echo "Month $month:"
    echo "Files found:"
    echo "$month_files"
    num_files=$(echo "$month_files" | wc -l)
    echo "Total files in month $month: $num_files"
    echo
done