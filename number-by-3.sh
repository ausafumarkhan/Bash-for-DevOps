#!/bin/bash


########################
# Author: Ausaf Umar
# Date created: 12-10-2024
# Last Modified: 12-10-2024
# Description: It prints numbers which is divible by 3 and 5, but not 15
# Usage: ./number-by-3.sh
#########################

# read -p "Enter number to check:" i   --remove this and uncomment to check a single number

for i in {1..100};do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ]
then
	echo "$i"
fi
done

