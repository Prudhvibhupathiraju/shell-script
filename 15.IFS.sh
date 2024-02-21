#!/bin/bash

file="/etc/passwd"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ]
then
    echo -e "File : $G $file $N $R NOT FOUND $N"
   fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
echo -e "$Y User Name:$N$G$username$N/$Y Group_id:$N$G$group_id$N/$Y User ID:$N$G$user_id$N/$Y User_fullname:$N$G$user_fullname$N/$Y Home directory:$N$G$home_dir$N/$Y Shell_path:$N$G$shell_path$N"

done < $file