#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "ERROR :: Please run this with root access"
exit 1
else
echo "Runnig with root access"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
echo "ERROR :: Installation failed"
exit 1
else
echo "Installation success"
fi

yum install git -y

if [ $? -ne 0 ]
then
echo "ERROR :: Installation failed"
exit 1
else
echo "Installation success"
fi