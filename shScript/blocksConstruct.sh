#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=180G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=blocksConstruct_101
#SBATCH --output=blocksConstruct_1001.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load r/4.3.1 StdEnv/2023 sra-toolkit/3.0.9 gcc/12.3 samtools/1.20

Rscript ./blocksConstruct.R
