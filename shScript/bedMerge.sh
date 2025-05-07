#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=550G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=bedtoolsMerged_d600
#SBATCH --output=bedtoolsMerged_d600.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=8

module load StdEnv/2023 bedtools/2.31.0

# allowing 600bp gaps to merge two reads together 
#
bedtools merge -i SRR13301020_sorted.lite.1.bed -d 600 -c 1 -o count > SRR13301020.merged_600.bed
