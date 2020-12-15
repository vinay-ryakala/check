#!/bin/bash -x

read -p "give number to finf factorial" number
factorial=1
for (( i=2; i<=$number; i++ ))
do
	factorial=$(( $factorial*$i ))
done
