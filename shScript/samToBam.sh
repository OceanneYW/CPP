#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=samToBam
#SBATCH --output=samToBam.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=8

module load StdEnv/2023  gcc/12.3 samtools/1.20

samtools view -u SRR13301020.lite.1.sam -o SRR13301020.lite.1.bam
samtools sort SRR13301020.lite.1.bam -o SRR13301020_sorted.lite.1.bam
