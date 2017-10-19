# replace Name with your name 
N=1
for n in $(seq 1 5)
do
echo "Making a new directory named anthony"
mkdir Anthony${n}
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
cd Anthony${n}
cp ../input.txt ./
cd ../
N=$(( $N + $n ))
done
