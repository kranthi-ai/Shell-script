#!/bin/bash

USERID=$(id -u)

VALIDAATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
 then
    echo "ERROR:: You must have sudo access to execute it"
    exit 1  #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
 dnf install mysql -y
 VALIDATE $? "Installing MySQL"
    
else
    echo "MYSQL is already installed...INSTALLED"
    fi



 dnf list installed git

  if [ $? -ne 0 ]
then 
      dnf install git -y
      VALIDATE $? "Installing Git"
 else
      echo "GIT is already installed...INSTALLED" 
 fi  

    