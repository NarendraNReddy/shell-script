#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
echo $SCRIPT_NAME

USERID=$(id -u)
if [ $USERID -ne 0 ];
then 
    echo "Please be a super user"
else
    echo "Super user"
fi 

