#!/bin/bash
source_folder=/root/test20221009
backup_folder=/root/backup/`date "+%Y-%m-%d"`
source_folder_name=`echo $source_folder |awk -F "/" '{print $3}'`.tar.gz
echo "source_folder：$source_folder"
echo "backup_folder: $backup_folder"
echo "source_folder_name: $source_folder_name"

#新建立文件夹
mkdir -p /root/backup/`date "+%Y-%m-%d"`
#压缩命令
tar -zcvPf $backup_folder/$source_folder_name  $source_folder
echo "$source_folder_name文件备份成功"

