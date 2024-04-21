#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
echo $LOGFILE


VALIDATE()
{
    if [ $1 -ne 0 ];
    then 
        echo "$2...FAILURE"
    else
        echo "$2...SUCCESS"    
    fi
}

USERID=$(id -u)
if [ $USERID -ne 0 ];
then 
    echo "Please be a super user"
    exit 1
else 
     echo "Super User:"  
fi

dnf install mysql -y
VALIDATE $? "mysql installation"


dnf install git -y
VALIDATE $? "git installation"


