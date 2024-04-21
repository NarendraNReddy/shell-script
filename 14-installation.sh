#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
echo $LOGFILE

USERID=$(id -u)
if [ $USERID -ne 0 ];
then 
    echo "Please be a super user"
else
    echo "Super user"
fi 

