#!/bin/bash
SERVICE="nginx"

# Check if the service is running
if systemctl is-active --quiet "$SERVICE"; then
echo "$SERVICE is running."
else
   echo "$SERVICE is not running. Restarting..."
   sudo systemctl restart "$SERVICE"

   # Verify restart
   if systemctl is-active --quiet "$SERVICE"; then
       echo "$SERVICE restarted successfully."
   else
       echo "Failed to restart $SERVICE."
exit 1 
fi
fi
