#!/bin/bash

#待清除目录
dir=/root/backup/
#文件的过期周期
day_expireDay=10

#删除最终为day_expireDay前的备份文件与文件夹信息
find $dir -mtime +$day_expireDay | xargs rm -rf {}
echo "$dir下的$day_expireDay天前的文件清理成功"
