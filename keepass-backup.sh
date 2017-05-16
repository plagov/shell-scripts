#!/bin/bash

source_path="/home/vplagov/Dropbox/KeePass/"
backup_path="/home/vplagov/"
date=$(date +"%Y-%m-%d")

cp $source_path/*.kdbx $backup_path

mv $backup_path/Vitali.kdbx $backup_path/Vitali-$date.kdbx
mv $backup_path/Work.kdbx $backup_path/Work-$date.kdbx
