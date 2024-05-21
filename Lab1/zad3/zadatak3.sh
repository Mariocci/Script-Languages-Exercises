direktorij="$1"

if [ ! -d $direktorij ]; then
	echo "Usage: ./zadatak3.sh <path> "
	exit 1
fi

for file in "$direktorij"/*
do
	if [[ $file=~[0-9]{2}-02-[0-9]{4}.txt ]] 
	then
		datum=$(basename "$file" | sed 's/\.txt//')
		echo "datum: $datum"
		echo "---------------------"
		cut -d '"' -f 2 $file | sort | uniq -c | sort -nr
		echo "---------------------"
	fi
done
		