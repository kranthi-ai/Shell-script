#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ];
then
    echo "ERROR:: You must have sudo access to execute it"
    exit 1  #other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
   echo "Installing MySQL... FAILURE"
   exit 1
else
   echo "Installing My SQL...SUCCESS'
 fi


dnf install git -y

if [ $? -ne 0 ];
then 
    echo "Installing git...FAILURE"
    exit 1
else
    echo "Installing git...SUCCESS"
fi       