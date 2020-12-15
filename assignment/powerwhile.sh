#!/bin/bash -x
read -p "give a number" n
product=1
i=1
while [ $i -le $n ]
do
	product=$((2*$product))
	((i++))
done
echo "$product is 2^$n value"

