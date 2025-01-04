#!/bin/bash

echo "All variables passed: $@"
echo "Number of varaiables: $#"
echo "script name: $0"
echo "Present working directory:$PWD"
echo "Home directory of current user:$HOME"
echo "Which user is running this script: $USER"
echo "Process id of current script:$$"
sleep 30 &
echo "Process id of last command in background:$!"