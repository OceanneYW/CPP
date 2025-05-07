#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=bamToBed
#SBATCH --output=bamToBed.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=8

module load StdEnv/2023 bedtools/2.31.0


#bedtools bamtobed -i SRR13301020_sorted.lite.1.bam > SRR13301020_sorted.lite.1.bed

bedtools bamtobed -i trimmed_sorted.bam > trimmed_sorted.bed
