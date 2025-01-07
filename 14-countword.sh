#!/bin/bash

# Check if a file path is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <file_path>"
  exit 1
fi

# File path is the first argument
file_path=$1

# Check if the file exists
if [ ! -f "$file_path" ]; then
  echo "File not found!"
  exit 1
fi

# Process the file: convert to lowercase, remove punctuation, and count words
cat "$file_path" | tr -c '[:alnum:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5
