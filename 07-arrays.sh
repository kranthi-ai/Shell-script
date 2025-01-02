#!/bin/bash

MOVIES=("pushpa" "rrr" "Devara")
#index starts from 0, size is 3

echo "First movie: ${MOVIES[0]}" 
echo "Secound movie: ${MOVIES[1]}" 
echo "Third movie:$ ${MOVIES[2]}" 

echo "All movies are: ${MOVIES[@]}"