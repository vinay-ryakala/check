#!/bin/bash 

echo Enter a number
read n
i=1
sum=0
for (( i=1; i<=$n; i++ ))
do
	sum=$(($sum + ( 10000 / $i )))
done
echo Sum n series is
i=1
for (( i=1; i<=5; i++ ))
do
	a=`echo $sum | cut -c $i`
echo -n "$a"
if [ $i -eq 1 ]
then
	echo -n "."
fi
done
echo " is $n th harmonic term"

