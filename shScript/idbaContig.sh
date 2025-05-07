#!/bin/bash

# Create or empty the combined.fasta file
> combined.fasta

# Loop through each subfolder and concatenate x.fasta files
for folder in */; do
    if [ -f "${folder}contig-80.fa" ]; then
        cat "${folder}contig-80.fa" >> combined.fasta
    fi
done
