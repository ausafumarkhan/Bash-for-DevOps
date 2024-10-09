#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created: 03-10-2024
# Last Modified: 03-10-2024
# Description: This script pulls the latest code from a Git repository, builds the project, and restarts the service.
# Usage: ./basic-CICD.sh

# variables
REPO_DIR="path/to/repo"
SERVICE_NAME="your-service-name"

# Pull latest code
git pull origin master

# Build the project -- maven for a java project
maven clean install

# Restart the service
systemclt restart ${SERVICE_NAME}

# Output message 
echo "Deployment completeted and service restarted"
