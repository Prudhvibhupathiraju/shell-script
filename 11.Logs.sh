#!/bin/bash

ID=$(id -u)

VALIDATE(){ 
if( $1 -ne 0 )
then
echo "$2 installation --> Failed"
else
echo "$2 installation --> Success"
fi
}

if [ $ID -ne 0 ]
then
 echo "ERORR :: Please run this with root access"
 exit 1
 else
 echo "Running  with root access"
 fi

yum install mysql -y

VALIDATE $? "MySQL"

yum install git -y

VALIDATE $? "GIT"