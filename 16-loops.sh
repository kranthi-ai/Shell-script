#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
LOGS_FOLDER="/var/log/shell-script-logs"         # we are storing the logs in the created directory-folder)
LOG_FILE=$(echo $0 | cut -d "." -f1 )            #
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

#$LOGS_FOLDER/$LOGS_FILE-$TIMESTAMP.log
# /var/log/shell-script-logs/13_logs-2025-01-05-14-23-00.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2....$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
    fi
}

CHECK_ROOT(){
if [ $USERID -ne 0 ]
 then
    echo "ERROR:: You must have sudo access to execute it"
    exit 1  #other than 0
fi
}

echo "script started executed at: $TIMESTAMP" &>>$LOG_FILE_NAME
CHECK_ROOT

for package in $@
do 
   dnf list installed $package &>>$LOG_FILE_NAME
   if [ $? -ne 0 ]
   then
       dnf list install  $package -y &>>LOG_FILENAME
       VALIDATE $? "Installing $package"

    else

       echo -e "$Pacakage is already $Y .... INSTALLED $N"

       fi
    done



   

