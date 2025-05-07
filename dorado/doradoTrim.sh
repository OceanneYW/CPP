#!/bin/bash
#SBATCH --time=05:00:00
#SBATCH --mem=180G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=doradoTrim
#SBATCH --output=doradoTrim
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16


module load StdEnv/2023 dorado/0.8.3

dorado trim
