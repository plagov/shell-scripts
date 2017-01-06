#!/usr/bin/bash
#Download folder from terminal server to home
#First argument - folder name
scp -r username@terminalserver:/path/to/remote/folder/$1 ~

#Remove folder from terminal server
ssh username@terminalserver "rm -r /path/to/remote/folder/$1"
