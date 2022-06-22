#!/bin/bash
read -p "Enter first number: " num_1
read -p "Enter second number: " num_2
read -p "Enter third number: " num_3
echo "The given three numbers are: $num_1 $num_2 $num_3"
echo "$num_1 + $num_2 * $num_3 = $(( num_1 + num_2 * num_3 ))"
