#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=bedSort
#SBATCH --output=bedSort.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=8

module load StdEnv/2023 bedtools/2.31.0

cd ~/projects/def-idohatam/owang05/shortReads/bowtie2/test2

bedtools sort -i SRR13301020.lite.1.bed > SRR13301020_sorted.lite.1.bed 


