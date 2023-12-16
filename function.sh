#!/bin/bash
ID=$(id -u)
VALIDATE(){
    if [$? -ne 0 ]
then
echo "ERROR::installing  faield"
exit 1
else
echo "installing  is success"
fi  
}

if [ $ID -ne 0 ]
then 
echo "ERROR:: please run this script with root access"
exit 1
else
echo "you are the root user"
fi
yum install mysql -y

VALIDATE 
Yum install git -y