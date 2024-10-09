#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 03-10-2024
# Last Modified : 03-10-2024
# Description :
# Backup Script
# Usage
# ./backup.sh

read -p "Enter the source dir: " SRC
read -p "Enter the backup dir: " BACKUP_DIR

echo -e "source=${SRC}\ndestination=${BACKUP_DIR}"
read -p "Press 1 to confirm or Press any number: " INP
echo

TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="backup-${TIMESTAMP}.tar.gz"

if [ ${INP} -eq 1 ]; then
   tar -zcvf ${BACKUP_DIR}/${BACKUP_FILE} ${SRC}
else
   echo "Please Execute the script again"
   exit -2
fi

echo "Backup Completed ${BACKUP_DIR}/${BACKUP_FILE}"


