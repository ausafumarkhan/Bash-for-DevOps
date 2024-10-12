#!/bin/bash

#########################
# Author: Ausaf Umar Khan
# Date Created: 12-10-2024
# Last Modified: 12-10-2024
# Description: It will check performance and store results to performance.log


echo "===============================" >> performance.log
date >> performance.log
echo "===============================" >> performance.log

ping -c 1 www.google.com &> /dev/null

if [ "$?" -eq 0 ]; then
	echo "Internet: connected" >> performance.log
else
	echo "Internet: disconnected" >> performance.log
fi

echo "RAM utilization:" >> performance.log
free -h | grep -i mem >> performance.log

echo "SWAP utilization:" >> performance.log
free -h | grep -i swap >> performance.log

echo "DISK utilization:" >> performance.log
df -h >> performance.log
echo >> performance.log

echo "Check performance.log for details"

