#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
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
        echo -e "$Y U R root user"
fi
yum install mysql -y
VALIDATE $? "MySQL Installing" &>> $LOGFILE
yum install git -y
VALIDATE $? "GIT Installing" &>> $LOGFILE