#!/bin/bash

TEMP_DIR="/tmp"
DAYS_OLD=7

# Find and delete files older than specified days
echo "Cleaning up temporary files older than $DAYS_OLD days in $TEMP_DIR..."
find "$TEMP_DIR" -type f -mtime +$DAYS_OLD -exec rm -f {} \;


echo "Temporary files cleanup completed."
