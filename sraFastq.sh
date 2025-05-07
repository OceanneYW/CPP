#!/bin/bash
#SBATCH --time=48:00:00
#SBATCH --mem=550G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=sraFastq_Parallel_32
#SBATCH --output=sraFastq_Parallel_32.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load r/4.4.0 StdEnv/2023 sra-toolkit/3.0.9 gcc/12.3


Rscript ./sraFastqParallel_32.R

