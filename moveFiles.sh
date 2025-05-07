#!/bin/bash

# Loop through all .sam files in the current directory
for file in *.sam; do
  # Extract the folder name from the file name
  folder_name=$(echo "$file" | cut -d':' -f1)
  
  # Create the folder if it doesn't exist
  mkdir -p "$folder_name"
  
  # Move the file into the corresponding folder
  mv "$file" "$folder_name/"

done
