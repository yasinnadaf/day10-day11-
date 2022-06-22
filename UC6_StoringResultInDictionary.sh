#!/bin/bash
read -p "Enter first number: " num_1
read -p "Enter second number: " num_2
read -p "Enter third number: " num_3
echo "The given three numbers are: $num_1 $num_2 $num_3"

first_computation=$(( num_1 + num_2 * num_3 ))
second_computation=$(( num_1 * num_2 + num_3 ))
third_computation=$(( num_3 + num_1 / num_2 ))
fourth_computation=$(( num_1 % num_2 + num_3 ))
echo "$num_1 + $num_2 * $num_3 = $first_computation"
echo "$num_1 * $num_2 + $num_3 = $second_computation"
echo "$num_3 + $num_1 / $num_2 = $third_computation"
echo "$num_1 % $num_2 + $num_3 = $fourth_computation"

declare -A dictionary


dictionary[first_computation]=$first_computation
dictionary[second_computation]=$second_computation
dictionary[third_computation]=$third_computation
dictionary[fourth_computation]=$fourth_computation

for computation in ${!dictionary[@]}
do 
    echo "$computation = ${dictionary[$computation]}"
done
