#!/bin/bash

# Script to add a cron job if it doesn't already exist

CRON_JOB="@reboot /usr/local/bin/myscript.sh"
USER="root"   # change to another user if needed

# Check if the job already exists
(crontab -u $USER -l 2>/dev/null | grep -F "$CRON_JOB") && {
    echo "Cron job already exists, nothing to do."
    exit 0
}

# Add the new job
(crontab -u $USER -l 2>/dev/null; echo "$CRON_JOB") | crontab -u $USER -
echo "Cron job added: $CRON_JOB"
