#!/bin/bash
#SBATCH --time=03:00:00
#SBATCH --mem=550G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=pGodF5Def
#SBATCH --output=pGodF5Def
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

#./shasta-Linux-0.14.0 --config Nanopore-r10.4.1_e8.2-400bps_sup-Herro-Jan2025 --input T98combined.fastq --memoryBacking disk --memoryMode filesystem --assemblyDirectory T98Shasta

#./shasta-Linux-0.14.0 --config Nanopore-r10.4.1_e8.2-400bps_sup-Herro-Jan2025 --input T98combined.fastq --assemblyDirectory T98Shasta_default

#./shasta-Linux-0.14.0 --config Nanopore-r10.4.1_e8.2-400bps_sup-Herro-Jan2025 --input pGodF5-comb.fastq --memoryBacking disk --memoryMode filesystem --assemblyDirectory pGodF5-combShasta

./shasta-Linux-0.14.0 --config Nanopore-r10.4.1_e8.2-400bps_sup-Herro-Jan2025 --input pGodF5-comb.fastq --assemblyDirectory pGodF5__default
