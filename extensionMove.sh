#!/bin/bash

# Loop through all files in the current directory
for file in *.*; do
  # Check if it's a file
  if [[ -f "$file" ]]; then
    # Extract the file extension
    extension="${file##*.}"
    
    # Create a directory for the extension if it doesn't exist
    dir_name="${extension}Files"
    if [[ ! -d "$dir_name" ]]; then
      mkdir "$dir_name"
    fi
    
    # Move the file into the corresponding directory
    mv "$file" "$dir_name/"
  fi
done

