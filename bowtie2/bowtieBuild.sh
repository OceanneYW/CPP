#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=GCF_900
#SBATCH --output=GCF_900
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2023 bowtie2/2.5.4

# Input genome file
file="GCF_900626175.2_cs10_genomic.fna"

#Make folder for outputs
dir=$(basename "${file%.*}")
mkdir -p "../bowtie2/$dir"

bowtie2-build $file ../bowtie2/$dir --threads 16
