#!/bin/bash -e

source_path="/home/vplagov/Dropbox/KeePass/"
backup_path="/home/vplagov/.keepass-backup/"

cp "${source_path}"/*.kdbx "${backup_path}"

cd "${backup_path}"

git add .
git commit --allow-empty-message -m ''
git push -u origin master