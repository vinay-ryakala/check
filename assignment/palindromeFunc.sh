#!/bin/bash -x

function palindrome(){
reverse=0
n=$1
while [ $n != 0 ]
do
	remainder=$(($n%10))
	reverse=$(( $reverse * 10 + $remainder ))
	n=$((n/10))
done
	echo "$reverse"
}

read -p "give a number" n
read -p "give another number to check plaindrome" x
plain="$( palindrome $n )"
echo "$plain"
if [ $plain -eq $x ]
then
	echo "given number are palindrome"
else
	echo "give numbers are not palindrome"
fi
