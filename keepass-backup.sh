#!/bin/bash

source_path="/home/plagov/Dropbox/KeePass/"
backup_path="/home/plagov/"
date=$(date +"%Y-%m-%d")

cp $source_path/*.kdbx $backup_path

mv $backup_path/Vitali.kdbx $backup_path/Vitali-$date.kdbx
mv $backup_path/Work.kdbx $backup_path/Work-$date.kdbx
