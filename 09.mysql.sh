#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
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
    echo -e "$R Mysql is Failed...."
else
     
   echo -e "$G Mysql installed successfully...."
fi
