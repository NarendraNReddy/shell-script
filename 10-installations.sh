#!/usr/bin

USERID=$(id -u)
if [ $USERID -ne 0 ];
then 
    echo "Please be a super user"
else 
     echo "Super User:"  
fi
dnf instll  mysql -y


