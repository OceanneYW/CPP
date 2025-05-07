#!/bin/bash
#SBATCH --time=168:00:00
#SBATCH --mem=550G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=flyPGod5Scaf
#SBATCH --output=flyePGod5Scaffold
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=32


module load apptainer

#apptainer exec flye_latest.sif flye --nano-raw ./T98combined.fastq --out-dir flyeT98Comb

apptainer exec flye_latest.sif flye --nano-raw ./pGodF5-comb.fastq --scaffold  --resume   --out-dir flyeScaffoldPolish --threads 4 
