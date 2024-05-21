grep -i -E 'banana|jabuka|jagoda|dinja|lubenica' namirnice.txt

grep -i -v -E 'banana|jabuka|jagoda|dinja|lubenica' namirnice.txt

grep -r -E '\b[A-Z]{3}\s[0-9]{6}\b' ~/projekti/

find ~ -type f -mtime +6 -mtime -15 -exec ls -l {} \;

for i in $(seq 1 15); do echo $i; done	

for i in $(seq 1 15)


do
	if [ $i=15 ]; then
		exit=15
	fi
	echo $i 
done	
echo $exit

for i in {1..15}
do
	if [ $i=15 ]; then
		exit=15
	fi
	echo $i 
done	
echo $exit