#!/bin/bash 

function prime(){
number=$1
prime=0
for (( i=2; i<$number; i++ ))
do
        if [ $((number%$i)) -eq 0 ]
        then
                prime=1
        break
        fi
done
if [ $prime -eq 0 ]
then
        echo "$number"
else 
	echo "0"
fi
}

function palindrome(){
reverse=0
n=$1
x=$n
while [ $n != 0 ]
do
	remainder=$(($n%10))
	reverse=$(( $reverse * 10 + $remainder ))
	n=$((n/10))
done
if [ $x -eq $reverse ]
then
        echo "$reverse"
else 
	echo "1"
fi
}

read -p "give a number" n
prim="$( prime $n )"
plain="$( palindrome $n )"
if [ $plain -eq $prim ]
then
	echo "given number is palindrome and prime"
elif [ $n -eq $plain ]
then
	echo "give number is  palindrome and not aprime"
elif [ $n -eq $prim ]
then
	echo "given number is prime and not a plaindrome"
else
echo "given number is not a prime and not a palindrome"
	
fi
