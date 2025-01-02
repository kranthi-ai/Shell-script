#!/bin/bash

NUMBER=$1

# -gt is greater than, -lt, -eq, -ge, -le
if  [$NUMBER > 200]
then
     echo "Given number is greater than 100"
else
      echo " Given number is less than or equal to 100"
fi