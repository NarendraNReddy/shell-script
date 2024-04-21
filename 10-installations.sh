#!/usr/bin

USERID=$(id -u)
if [ $USERID -ne 0 ];
then 
    echo "Please be a super user"
    exit 1
else 
     echo "Super User:"  
fi
dnf install mysql -y

if [ $? -ne 0 ];
then 
    echo "Installation of mysql is ..FAILURE"
    exit 1
else 
    echo "Installation of mysql is ... SUCCESS"
fi     

dnf install git -y

if [ $? -ne 0 ];
then 
    echo "Installation of git is ..FAILURE"
    exit 1
else 
    echo "Installation of git is ... SUCCESS"
fi   


