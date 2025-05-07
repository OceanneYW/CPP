#!/bin/bash

# Loop through all .contig files in the current directory
for file in *.contig; do
  # Extract the base name of the file (without extension)
  base_name=$(basename "$file" .contig)
  # Convert the .contig file to .fasta using awk
  awk '/^>/ {print ">" substr($0, 3)} !/^>/ {print}' "$file" > "${base_name}.fasta"
done
