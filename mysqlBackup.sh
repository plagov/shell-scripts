#!/bin/bash

# database credentials
user="root"
host="127.0.0.1"
db_name="music"

# other options
backup_path="/home/vplagov"
date=$(date +"%Y-%m-%d")

# dump database into SQL file
mysqldump --user=$user --host=$host $db_name > $backup_path/$db_name-$date.sql
