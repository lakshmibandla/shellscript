#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE () {
    if [ $1 -ne 0 ]
    then 
    echo -e "$2...$R FAIL $N"
    else 
    echo -e "$2...$G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then 
echo -e $R"ERROR:: please run this script with root access $N"
exit 1
else
echo "you are the root user"
fi

#echo "All arguments passed: $@"
#git mysql postfix nettools
#pacakages=git for the first time



for package in $@ 
do
yum list installed $package
if [ $? -ne 0 ]
then
yum install $package -y
VALIDATE $? "installation of package"

done