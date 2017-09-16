#!/bin/bash
#This script deletes all files from Trash folder that are older than 5 days
#Scripts is running every day at 21:00 by crontab
#0 21 * * * delete-trash-files.sh
find /home/vplagov/.local/share/Trash/files -mtime +6 -delete
