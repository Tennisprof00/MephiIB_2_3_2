#!/bin/bash 

#################################### 

# Резервное копирование 

#################################### 

 

# Что нужно копировать. 

backup_files="/home /var/log /etc/ssh/sshd_config  /etc/xrdp /etc/vsftpd.conf" 

 

# Создание имя файла архива. 

day=$(date+%A)hostname=$(hostname-s) 

archive_file="$hostname-$day.tgz" 

 

# Куда создать резервную копию. 

dest="/temp/archive" 

 

#Создаем директорию 

mkdir -p /temp/archive 

 

# Резервное копирование файлов с помощью tar. 

tar czf $dest/$archive_file $backup_files 

 

# сообщение о завершении работы. 

echo 

echo"Backup finished" 