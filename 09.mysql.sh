#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "ERROR::Please use root user"
    exit 1
else
    echo "You are root user"
fi
yum install mysqll -y
if [ $? -ne 0 ]
then
    echo "Mysql is Failed...."
else
     
   echo "Mysql installed successfully...."
fi
