if [ $# -ne 3 ]; then
    echo "Usage: $0 <direktorij> <broj1> <broj2>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Zadani direktorij ne postoji."
    exit 1
fi

current=$(date "+%s")
uk_redaka=0

for file in "$1"/*; do
    if [ "$(($current - $2 * 86400))" -gt "$(stat -c %Y "$file")" ] && [ "$(stat -c %Y "$file")" -gt "$(($current - $3 * 86400))" ]; then
        echo "$file ........ $(wc -l < "$file")"
        uk_redaka=$((uk_redaka + $(wc -l < "$file")))
		
    fi
done

echo "--------------------"
echo "Ukupan br. redaka: $uk_redaka"
