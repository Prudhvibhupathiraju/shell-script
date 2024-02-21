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
echo -e "User Name:$G$username$N/User_fullname:$G$user_fullname$N/Home directory:$G$home_dir$N/Shell_path:$G$shell_path$N"

done < $file