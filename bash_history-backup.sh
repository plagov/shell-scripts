#!/usr/bin/env bash

source="/home/vplagov/.bash_history"
backup_path="/home/vplagov/.history-backup/"

cp "${source}" "${backup_path}"

cd "${backup_path}"

git add .
git commit --allow-empty-message -m ''
git push -u origin master