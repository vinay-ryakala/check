#!/bin/bash -x

read -p "give a number" n
product=1

for (( i=1; i<=$n; i++ ))
do
	product=$((2*$product))
	echo "power of 2:$product"
done

