#!/bin/bash

ID=($id -u)

if [ $ID -ne 0 ]
then
echo "ERROR :: Please run this with root access"

else
echo "Runnig with root access"
fi

yum install mysql -y