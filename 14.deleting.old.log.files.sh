#!/bin/bash

SOURCE_DIRECTORY="/tmp/shell-script-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIRECTORY ]
then
    echo -e "Directory : $G $SOURCE_DIRECTORY $N $R NOT FOUND $N"
   fi

FILES_TO_DELETE=$(find $SOURCE_DIRECTORY -type f -mtime +15 -name "*.log") 

while IFS= read -r line
do
echo -e "Deleting file : $Y $line $N"
rm -rf $line
done <<< $FILES_TO_DELETE
