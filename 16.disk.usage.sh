#!/bin/bash

disk_percentage=$(df -hT | grep -vE 'tmp|File' | awk '{print $6F}' | cut -d % -f1)
disk_threshold=1
message=""

while IFS= read line
do
usage=$line
partition=$(df -hT | grep -VE 'tmp|File' | awk '{print $1F}')
message+=$(echo "High disk usage on $partition : $usage")

if [ $usage -ge $disk_threshold ]
then
echo  "$message"
fi

done <<< $disk_percentage
