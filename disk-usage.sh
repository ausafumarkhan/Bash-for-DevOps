#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 03-10-2024
# Last Modified : 03-10-2024
# Description : This script checks disk usage ans sends an email if usage exceeds a certain threshold
# Usage: ./disk-usage.sh

# variable

THRESHOLD=80
EMAIL="admin@example.com"
CURRENT_USAGE=$(df -h | grep / | awk '{print $5}' | sed 's/%//g')

# Check if usage exceeds threshold
if [ $CURRENT_USAGE -gt ${THRESHOLD} ]; then
  echo "Disk usage is at $CURRENT_USAGE% on $(hostname)" | mail -s "Disk Sapce Alert" $EMAIL
fi
