#!/bin/bash -e

user="root"
db_name="music"
backup_path="/home/vplagov/.mysql-backup"

docker exec music-sql /usr/bin/mysqldump -u "${user}" music > "${backup_path}"/"${db_name}".sql

cd "${backup_path}"

git add .
git commit --allow-empty-message -m ''
git push -u origin master