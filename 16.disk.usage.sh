#!/bin/bash

disk_usage=$(df -hT | grep -vE 'tmp|File')
disk_threshold=1
message=""

while IFS= read line
do
usage=$( echo $line | awk '{print $6F}' | cut -d % f1 )
partition=$$( echo $line | awk '{print $1F}')
if [ $usage -ge $disk_threshold ]
then
message+=$(echo "High disk usage on $partition : $usage")
fi
done <<< $disk_usage

echo "Message: $message"
