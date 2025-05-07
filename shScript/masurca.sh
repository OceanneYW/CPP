#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --mem=4000G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=masurcaPGod
#SBATCH --output=masurcaPGod
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=32

module load StdEnv/2020 gcc/9.3.0 masurca/4.1.0

bash assemble.sh
