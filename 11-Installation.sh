#!/usr/bin

VALIDATE()
{
    echo $1
    echo $2
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


