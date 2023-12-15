#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
VALIDATE(){
    if [ $1 -ne 0 ]
then
    echo -e "$R $2 is Failed....$N"
    exit 1
else
     
   echo -e "$G $2 installed successfully....$N"
fi
    
}
if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR::Please user root user...$N"
    exit 1
else
    echo -e "\Y you are root user...$N"
fi
yum install mysqll -y
VALIDATE $? "INstalling MySQL..."
yum install gitt -y
VALIDATE $? "INstalling GIT..."

