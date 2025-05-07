#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=bamToFasta
#SBATCH --output=bamToFasta
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load r/4.4.0 StdEnv/2023 sra-toolkit/3.0.9 gcc/12.3

Rscript ./bamToFa.R
