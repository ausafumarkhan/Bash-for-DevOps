#!/bin/bash


########################
# Author: Ausaf Umar
# Date created: 12-10-2024
# Last Modified: 12-10-2024
# Description: To check prime numbers
# Usage: ./prime.sh
#########################

read -p "Enter number to check:" num

if [ $num -eq 1 ]; then
	echo "$num is a not a prime number.Please try with number greater than 2"
	exit 1
else
if [ $num -eq 2 ];then
	echo "$num is a prime number. Please try with number greater than 2"
	exit 1
fi
fi

while [ $num -gt 2 ]
do
for ((i=2;i<=$num/2;i++))
do
  ans=$(( num%i ))
if [ $ans -eq 0 ];then
	echo "$num is not prime"
	exit 0
fi
done
echo "$num is prime"
exit 0
done

