#!/bin/bash
#SBATCH --time=72:00:00
#SBATCH --mem=192000M
#SBATCH --nodes=1
#SBATCH --gpus-per-node=v100l:1
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=pGodF5
#SBATCH --output=pGodF5
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2023 dorado/0.8.3
#dorado basecaller dna_r9.4.1_e8_hac@v3.3 pod5/ > calls_model.bam

#Kit 10 -e8
#dna_r9.4.1_e8_hac_

dorado basecaller hac --emit-fastq pod5_skip18022025pGodF5/ > pGodF5.fastq 
