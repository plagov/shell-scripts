#!/bin/bash -e

user="root"
host="127.0.0.1"
db_name="music"
backup_path="/home/vplagov/.mysql-backup"

mysqldump --user="${user}" --host="${host}" "${db_name}" > "${backup_path}"/"${db_name}".sql

cd "${backup_path}"

git add .
git commit --allow-empty-message -m ''
git push -u origin master