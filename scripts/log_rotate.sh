#!/bin/bash

LOG_DIR="/var/log/myapp"
ARCHIVE_DIR="/var/log/myapp/archive"
TIMESTAMP=$(date +"%Y-%m-%d")

# Create archive directory if not exists
mkdir -p "$ARCHIVE_DIR"

# Move old logs to the archive directory
echo "Rotating logs..."
find "$LOG_DIR" -type f -name "*.log" -exec mv {} "$ARCHIVE_DIR"/{}.$TIMESTAMP \;

# Compress archived logs
echo "Compressing archived logs..."
find "$ARCHIVE_DIR" -type f -name "*.log.$TIMESTAMP" -exec gzip {} \;


echo "Log rotation completed."
