#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
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
     
   echo -e "$G $2 successful....$N"
fi
}
if [ $ID -ne 0 ]
then
    echo -e "$R ERROR::PLease use Root user $N"
    exit 1
else 
        echo -e "$Y U R root user $N"
fi
for package in $0
do
  yum list installed $package
  if [ $? -ne 0 ]
  then 
     yum install $package -y
     VALIDATE $? "Installation of package"
   else
      echo -e "$G $package is already installed $N"
   fi
done