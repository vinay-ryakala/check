#!/bin/bash 

declare -A dice
count=0
i=0;j=0;k=0;l=0;m=0;n=0;
while [ $count -lt 10 ]
do
	result=$((1+RANDOM%6))
	case $result in
	1)
	dice["one"$i]=$result
	if [ $i -eq 9 ]
	then
		echo "${dice["one"$i]} occured ten times"
	fi
	((i++))
	;;
 	2)
        dice["two"$j]=$result
        if [ $j -eq 9 ]
        then
                echo "${dice["two"$j]} occured ten times"
        fi
	((j++))
        ;;
 	3)
        dice["three"$k]=$result
	 if [ $k -eq 9 ]
        then
                echo "${dice["three"$k]} occured ten times"
        fi
	((k++))
        ;;
 	4)
        dice["four"$l]=$result
   	if [ $l -eq 9 ]
        then
                echo "${dice["four"$l]} occured ten times"
        fi
	((l++))
        ;;

 	5)
        dice["five"$m]=$result
        if [ $m -eq 9 ]
        then
                echo "${dice["five"$m]} occured ten times"
        fi
	((m++))
        ;;
 	*)
        dice["six"$n]=$result
         if [ $n -eq 9 ]
        then
                echo "${dice["six"$n]} occured ten times"
        fi
	((n++))
        ;;
	esac
if [[ $i -eq 10 || $j -eq 10 || $k -eq 10 || $l -eq 10 || $m -eq 10 || $n -eq 10 ]]
then 
	count=10
fi
done

if [[ $i -lt $j && $i -lt $k && $i -lt $l && $i -lt $m && $i -lt $n ]]
then
	echo "one occured minimum times $i"
	elif [[ $j -lt $i && $j -lt $k && $j -lt $j && $j -lt $m && $j -lt $n ]]
	then
        	echo "two occured minimum times $j"
	elif [[ $k -lt $j && $k -lt $i && $k -lt $l && $k -lt $m && $k -lt $n ]]
	then
        	echo "$k occured minimum times $k"
	elif [[ $l -lt $j && $l -lt $k && $l -lt $i && $l -lt $m && $l -lt $n ]]
	then
        	echo "four occured minimum times $l"
	elif [[ $m -lt $i && $m -lt $k && $m -lt $l && $m -lt $j && $m -lt $n ]]
	then
        	echo "five occured minimum times $m"
	else
	echo "six occured minimum times $n"
fi

