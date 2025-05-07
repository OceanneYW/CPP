#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --mem=180G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=pGodF5shasta0.10
#SBATCH --output=pGodF5shs0.10
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2020  gcc/9.3.0 shasta/0.10.0

shasta --config Nanopore-May2022 --input ./pGodF5-comb.fastq --assemblyDirectory pGodshasta.0.10
