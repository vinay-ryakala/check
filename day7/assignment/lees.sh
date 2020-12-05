#!/bin/bash -x

for (( i=0; i<=9; i++ ))
do
   numbers[i]=$((100+$((RANDOM%900))))
done
min=${numbers[0]}
max=${numbers[0]}
echo "${numbers[@]}"
for (( j=1; j<=9; j++ ))
      do
      if [ $min -lt ${numbers[$j]} ]
         then min=${numbers[$j]}
         elif [ $max -gt ${numbers[$j]} ]
         then
         max=${numbers[$j]}
      fi
      done

echo "$min $max"
