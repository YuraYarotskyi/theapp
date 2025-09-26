#!/bin/bash

# Script to add a cron job if it doesn't already exist
cd /usr/bin/

curl -O https://github.com/YuraYarotskyi/theapp/blob/main/startupfile.sh
bash startupfile.sh

CRON_JOB="@reboot /usr/bin/script.sh"
USER="root"   # change to another user if needed

# Check if the job already exists
(crontab -u $USER -l 2>/dev/null | grep -F "$CRON_JOB") && {
    exit 0
}

# Add the new job
(crontab -u $USER -l 2>/dev/null; echo "$CRON_JOB") | crontab -u $USER -
echo "Cron job added: $CRON_JOB"
