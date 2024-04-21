#!/usr/bin

USERID=$(id -u)
if [ $USERID -ne 0 ];
then 
    echo "Please be a super user"
else 
     "Super User:"  
fi
dnf instll  mysql -y


