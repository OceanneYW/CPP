#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --mem=550G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=canuSRR23
#SBATCH --output=canuSRR23
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2020 canu/2.2

canu \
-p SRR23 -d SRA \
genomeSize=800m minInputCoverage=0 \
stopOnLowCoverage=0 \
-nanopore combined.fasta gridOptions="--time=48:00:00"
