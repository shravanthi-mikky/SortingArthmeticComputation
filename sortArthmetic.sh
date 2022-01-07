#! /bin/bash -x
declare -A  computation

echo "Sorting Arthmetic Computation Probelm "
read -p "Enter value of a : " a
read -p "Enter value of b : " b
read -p " Enter value of c : " c
echo $a $b $c
comp1=$(( $a + $b * $c ))
echo $comp1
comp2=$(( $a * $b * $c ))
echo $comp2
comp3=$(($c + $a / $b))
echo $comp3
comp4=$(( $a % $b + $c ))
echo $comp4
computation[comp1]=$comp1
computation[comp2]=$comp2
computation[comp3]=$comp3
computation[comp4]=$comp4
echo ${computation[@]}
for(( i=1;i<=4;i++))
do
	array[$i]=${computation[comp$i]}

done
echo ${array[@]}
