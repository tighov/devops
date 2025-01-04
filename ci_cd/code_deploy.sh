#!/bin/bash

REPO_DIR="/var/www/myapp"
BRANCH="main"

# Navigate to the repository directory
cd "$REPO_DIR" || exit

# Pull the latest changes
echo "Pulling latest changes from $BRANCH branch..."
git checkout "$BRANCH"
git pull origin "$BRANCH"

# Restart the application
echo "Restarting the application..."

sudo systemctl restart myapp.service


echo "Deployment completed successfully!"
