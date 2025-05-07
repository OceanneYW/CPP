#!/bin/bash
#SBATCH --time=00:30:00
#SBATCH --mem=550G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=pod5Resume
#SBATCH --output=pod5Resume
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2023 dorado/0.8.3
#dorado basecaller dna_r9.4.1_e8_hac@v3.3 pod5/ > calls_model.bam

#Kit 10 -e8
#dna_r9.4.1_e8_hac_

dorado basecaller hac --emit-fastq --resume-from pod5combined.fastq pod5combined/  > aligned.bam
