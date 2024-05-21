proba="Ovo je proba"

echo $proba

lista_datoteka=(*)

for arg in "${lista_datoteka[@]}"; do
	echo $arg
done

proba3="$proba. $proba. $proba"
echo $proba3

a=4
b=3
c=7
d=$((($a+4)*$b%$c))
echo $d

broj_rijeci=$(wc -w *.txt | grep total | awk '{print $1}')
echo $broj_rijeci

ls ~/Lab1/zad1