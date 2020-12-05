#!/bin/bash 

read -p "give number to find prime factors" number

for (( i=2; i<$number; i++ ))
do
        if [ $(($number%$i)) -eq 0 ]
        then
                prime=0
		for (( j=2; j<i; j++))
                do
                        if [ $((i%j)) -eq 0 ]
                        then
                                prime=1
                        break
                        fi
		done              
          if [ $prime -eq 0 ]
          then
          primeFactors[$(($i-2))]=$i
          fi
	fi         
done
echo "prime factors in :${primeFactors[@]}"
