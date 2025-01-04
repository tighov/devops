#!/bin/bash

# Variables
SOURCE_DIR="/var/www/html"
BACKUP_DIR="/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Create a compressed backup
echo "Creating a backup of $SOURCE_DIR..."
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"


echo "Backup completed: $BACKUP_DIR/$BACKUP_FILE"
