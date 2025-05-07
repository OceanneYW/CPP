#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --gpus-per-node=v100l:4
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --mem=192000M
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=T98comb_dorado
#SBATCH --output=T98comb_dorado
#SBATCH --account=def-idohatam


module load StdEnv/2023 dorado/0.8.3
#dorado basecaller dna_r9.4.1_e8_hac@v3.3 pod5/ > calls_model.bam

#Kit 10 -e8
#dna_r9.4.1_e8_hac_

#dorado basecaller hac --emit-fastq pod5combined/ > T98combined.fastq
dorado basecaller hac --emit-fastq pGodF5-comb/ > pGodF5-comb.fastq
