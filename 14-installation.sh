#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE()
{
    if [ $? -ne 0 ];
    then 
        echo -e "$2 is....$R FAILURE $N"
    else 
        echo -e "$2 is...$G SUCCESS $N"
    fi    
}

USERID=$(id -u)
if [ $USERID -ne 0 ];
then 
    echo "Please be a super user"
else
    echo "Super user"
fi


for i in $@;
do 
    
    dnf list installed $i &>>$LOGFILE

    if [ $? -ne 0 ];
    then 
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "$i installation"
    else
        echo -e "$i Already installed...$Y SKIPPING $N"           
    
    fi    
done 


