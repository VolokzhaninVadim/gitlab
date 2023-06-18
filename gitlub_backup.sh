#!/bin/bash

# Создаем резервную копию
cd /home/volokzhanin/docker/gitlub/
tar cvpzf /mnt/backup/backup/gitlub/"$(date '+%Y-%m-%d').tar.gz" ./
# Удаляем архивы резервной копии старше n дней
find /mnt/backup/backup/gitlub/ -mtime +0 -type f -delete

# restore
# 7za e /mnt/backup/backup/gitlub/2021-10-09.zip
# cd /home/volokzhanin/docker/gitlub/ & tar xpvzf /mnt/backup/backup/gitlub/2021-10-09.tar.gz

