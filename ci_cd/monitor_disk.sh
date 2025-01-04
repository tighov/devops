#!/bin/bash

THRESHOLD=80
EMAIL="admin@example.com"

# Get disk usage percentage
DISK_USAGE=$(df -h / | grep -vE '^Filesystem' | awk '{print $5}' | sed 's/%//')

# Check if usage exceeds threshold
if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
   echo "Disk usage is at $DISK_USAGE%. Sending alert to $EMAIL."
   echo "Warning: Disk usage is at $DISK_USAGE%." | mail -s "Disk Usage Alert" "$EMAIL"

else
   echo "Disk usage is under control: $DISK_USAGE%."
fi
