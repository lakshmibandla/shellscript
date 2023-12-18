#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then 
echo "ERROR:: please run this script with root access"
exit 1
else
echo "you are the root user"
fi

#echo "All arguments passed: $@"
#"git my sql test-tool"
#pacakage=for the first time

for pacakage in $@
do
yum list installed $pacakages
if [$? -ne 0 ]
then 
yum install $pacakages -y
VALIDATE $?
fi




done
