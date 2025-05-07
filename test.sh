#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=test
#SBATCH --output=test
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=8

i=$1
echo "$i" 
