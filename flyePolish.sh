#!/bin/bash
#SBATCH --time=168:00:00
#SBATCH --mem=550G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=flyePGod2-polish
#SBATCH --output=flyPGod2-polish
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=32


module load apptainer

apptainer exec flye_latest.sif flye --polish-target ./flyePGodF5-2/assembly.fasta --nano-raw ./pGodF5-comb.fastq --out-dir flyePGodF5-2Polish
