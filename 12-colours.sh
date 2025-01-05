#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\3[32m"
Y="\e[33m"

VALIDAATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2....$R FAILURE"
        exit 1
    else
        echo -e "$2...$G SUCCESS"
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
    echo -e "MYSQL is already installed...$Y INSTALLED"
    fi



 dnf list installed git

  if [ $? -ne 0 ]
then 
      dnf install git -y
      VALIDATE $? "Installing Git"
 else
      echo -e "GIT is already installed...$Y INSTALLED" 
 fi  

    