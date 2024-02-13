#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo -e "the script has started executing at $Y $TIMESTAMP $N" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo -e "$2 $R FAILED $N"
    else
    echo -e "$2 $G SUCCESS $N"
}

if [ $id -ne 0 ]
then
echo -e "$R ERROR :: you are not root user $N"
else
echo -e "You are in $G ROOT $N access"
fi

for package in $@
do
yum list installed $package &>> $LOGFILE
if [ $? -ne 0 ]
then
  yum install $package -y
  VALIDATE $? "$package installation ..." &>> $LOGFILE
else
  echo -e "$package is already installed ... $Y SKIPPING $N"
fi
done