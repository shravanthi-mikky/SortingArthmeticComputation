#! /bin/bash -x
declare -A  computation

echo " Sorting Arthmetic Computation Problem "
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

flag=1;
for (( i = 1; i <=4; i++ ))
do
    flag=0;
    for ((j = 1; j<=4; j++ ))
    do
        if [[ ${array[$j]} -lt ${array[$(($j+1))]} ]]
        then
            temp=${array[$j]};
            array[$j]=${array[$(($j+1))]};
            array[$(($j+1))]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done
echo ${array[*]}
