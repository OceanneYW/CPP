#!/bin/bash

# Used before canu, SOAPdenovo and idba to generate concatenated fasta files
# List the files, sort them based on the numbers in their names, and concatenate them
ls *.fa* | sort -t: -k2,2n | xargs cat > combined.fasta

