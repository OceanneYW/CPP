#!/bin/bash

# Directory containing the files
input_dir="./"
processed_dir="./processed"
#processed_dir="./faFiles/processed"

# Create the folder if it doesn't exist
mkdir -p "$input_dir"

# Loop through each file in the processed directory
for file in "$processed_dir"/*.fa; do
    # Extract the filename without extension
    filename=$(basename "$file" .fa)
    
    # Initialize the config_file for each .fa file
    config_file="$input_dir/${filename}_config_file"
    echo "" > "$config_file"
    
    # Add the fixed configuration part to the config_file
    cat <<EOL >> "$config_file"
#maximal read length
max_rd_len=100
[LIB]
#average insert size
avg_ins=300
#if sequence needs to be reversed
reverse_seq=0
#in which part(s) the reads are used
asm_flags=3
#use only first 100 bps of each read
rd_len_cutoff=100
#in which order the reads are used while scaffolding
rank=1
# cutoff of pair number for a reliable connection (at least 3 for short insert size)
pair_num_cutoff=3
#minimum aligned length to contigs for a reliable read location (at least 32 for short insert size)
map_len=32
EOL
    
    # Append the line to the config_file
    echo "f=./faFiles/processed/$filename.fa" >> "$config_file"
done

echo "Config files generated in $input_dir"

