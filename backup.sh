#!/bin/bash 

#################################### 

# ��������� ����������� 

#################################### 

 

# ��� ����� ����������. 

backup_files="/home /var/log /etc/ssh/sshd_config  /etc/xrdp /etc/vsftpd.conf" 

 

# �������� ��� ����� ������. 

day=$(date+%A)hostname=$(hostname-s) 

archive_file="$hostname-$day.tgz" 

 

# ���� ������� ��������� �����. 

dest="/temp/archive" 

 

#������� ���������� 

mkdir -p /temp/archive 

 

# ��������� ����������� ������ � ������� tar. 

tar czf $dest/$archive_file $backup_files 

 

# ��������� � ���������� ������. 

echo 

echo"Backup finished" 