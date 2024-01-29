#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
then
echo "ERROR :: Installation $2 failed"
exit 1
else
echo "Installation $2 success"
fi
}

if [ $ID -ne 0 ]
then
echo "ERROR :: Please run this with root access"
exit 1
else
echo "Runnig with root access"
fi

yum install mysql -y

VALIDATE $? "mysql"

yum install git -y

VALIDATE $? "git"



