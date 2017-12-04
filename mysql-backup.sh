#!/bin/bash -e

user="root"
db_name="music"
backup_path="/home/vplagov/.mysql-backup"

# container variables
container_name="music-sql"
running_container=$(docker inspect -f '{{.State.Running}}' "${container_name}")

# check if container is running
if [ "${running_container}" = "false" ]; then
    exit 1
fi

docker exec "${container_name}" /usr/bin/mysqldump -u "${user}" "${db_name}" > "${backup_path}"/"${db_name}".sql

cd "${backup_path}"

git add .
git commit --allow-empty-message -m ''
git push -u origin master