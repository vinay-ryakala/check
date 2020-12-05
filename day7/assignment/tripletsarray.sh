#!/bin/bash  

read -p "give how many elements you want in array" n
for (( i=0; i<$n; i++ ))
do
	echo "give array elements"
	read array[$i]
done

for (( i=0; i<$(($n-2)); i++ ))
do
	for (( j=$i; j<$(($n-1)); j++ ))
		do
		for (( k=$j; k<$n; k++ ))
			do
			if [ $((${array[i]}+${array[j]}+${array[k]})) -eq 0 ]
				then echo "${array[i]};${array[j]};${array[k]}sum is zero"
			fi
			done	
		done	
done
