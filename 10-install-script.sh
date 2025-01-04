#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
 then
    echo "ERROR:: You must have sudo access to execute it"
    exit 1  #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
 dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installing Mysql..FAILURE"
        exit 1
    else
        echo "Installing MySQL...SUCCESS"
    fi
else
    echo "MYSQL is already installed...INSTALLED"
    fi

#  if [ $? -ne 0 ]
#  then 
#    echo "Installing MySQL... FAILURE"
#    exit 1
#  else
#    echo "Installing My SQL...SUCCESS"
#  fi

 dnf list installed git

  if [ $? -ne 0 ]
then 
      dnf install git -y
  if [ $? -ne 0 ]
  then
     echo "Installing Git..FAILURE"
     exit 1
 else
     echo "Installing Git...SUCCESS"
 fi    
 else
      echo "GIT is already installed...INSTALLED" 
 fi  

#  if [ $? -ne 0 ]
#   then
#      echo "Installing Git..FAILURE"
#      exit 1
#  else
#      echo "Installing Git...SUCCESS"
#  fi    