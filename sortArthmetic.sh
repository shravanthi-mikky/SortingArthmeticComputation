#! /bin/bash -x
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
