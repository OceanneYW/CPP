#!/bin/bash
#SBATCH --time=36:00:00
#SBATCH --mem=150G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=idba_J13
#SBATCH --output=idba_J13
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16
#
module load StdEnv/2020 idba-ud/1.1.3

# Find all .fa files in the current directory and subdirectories
fa_files=$(find . -type f -name "*.fa")

# Loop through each .fa file
for fa_file in $fa_files; do
  # Extract the base name before the underscore
  base_name=$(basename "$fa_file" | sed 's/_.*//')
  
  # Construct the idba_ud command
  idba_command="idba_ud -r $fa_file --num_threads 24 -o idba_ud_$base_name"
  
  # Run the idba_ud command
  echo "Running: $idba_command"
  $idba_command
done
