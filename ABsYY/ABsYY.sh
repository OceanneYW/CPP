#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=ABYSS_fa
#SBATCH --output=ABYSS_old.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2023  gcc/12.3  openmpi/4.1.5 abyss/2.3.7

#awk -vRS=">" -vORS="\n" '{$1=$1; print $0}'  CM054919.1_357.fa > out.fa

#ABYSS out.fa  -k80 -o output


ABYSS CM054919.1_357_old.fa  -k80 -o output
