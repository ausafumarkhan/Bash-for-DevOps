#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created: 03-10-2024
# Last Modified: 03-10-2024
# Description: This script creates a compressed backup of a directory and stores it with a timestamp.
# Usage: ./backup.sh


# variable
SOURCE_DIR="/path/to/source"
BACKUP_DIR="/path/to/backup"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="backup-${TIMESTAMP}.tar.gz"

# Create a backup
tar -zcvf ${BACKUP_DIR}/${BACKUP_FILE} ${SRC}

# Output backup information
echo "Backup Completed ${BACKUP_DIR}/${BACKUP_FILE}"


