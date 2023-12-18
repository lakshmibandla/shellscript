#!/bin/bash
if  [ $ID -ne 0 ]
then
echo "ERRROR:: please run with root Acceess"
else 
echo "you are the root user"
fi

yum install git -y
