#!/bin/bash
#SBATCH --time=36:00:00
#SBATCH --mem=550G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=abyss_test
#SBATCH --output=abyss-pe.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

abyss-pe name=CM054919.1_357 k=80 B=50G \
 in="~/projects/def-idohatam/owang05/shortReads/SOAPdenovo/CM054919.1_357.fa"
