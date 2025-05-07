#!/bin/sh
#SBATCH --time=12:00:00
#SBATCH --mem=280G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=canuCM19
#SBATCH --output=canu_CM19
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2020 canu/2.2

canu \
-p SRR23_CM19 -d CM19 genomeSize=500m minInputCoverage=0 stopOnLowCoverage=0 corMinCoverage=0 corMhapSensitivity=high -nanopore-raw combined.fasta gridOptions="--time 8:00:00"
