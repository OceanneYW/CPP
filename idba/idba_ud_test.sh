#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=1280G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=idba_ud_1007
#SBATCH --output=idba_ud_1007.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=25

module load StdEnv/2020 idba-ud/1.1.3

idba_ud -r CM054919.1_357_new_1007.fa --num_threads 24 -o idba_ud_CM054919.1_1007

