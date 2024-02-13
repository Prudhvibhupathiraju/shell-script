#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){ 
   if [ $1 -ne 0 ]
    then
    echo -e "$2 installation --> $R Failed $N"
    
  else
    echo -e "$2 installation --> $G Success $N"
   fi
}

if [ $ID -ne 0 ]
then
 echo -e " $R ERORR :: Please run this with root access $N "
 exit 1
 else
 echo -e "Running  with $G ROOT $N access"
 fi

yum installl mysql -y &>> $LOGFILE

VALIDATE $? "MySQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "GIT"