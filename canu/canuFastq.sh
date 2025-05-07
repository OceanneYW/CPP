#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --mem=4000G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=canuPGod2
#SBATCH --output=canuPGod2
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2020 canu/2.2

canu \
-p pGodF2 -d pGodFlower5-2 \
minInputCoverage=0 stopOnLowCoverage=0 \
genomeSize=800m mhapPipe=false purgeOverlaps=false saveOverlaps=true \
corMhapFilterThreshold=0.0000000002 corMhapOptions="--threshold 0.80 --num-hashes 512 --num-min-matches 3 --ordered-sketch-size 1000 --ordered-kmer-size 14 --min-olap-length 2000 --repeat-idf-scale 50" mhapMemory=60g mhapBlockSize=500 ovlMerDistinct=0.975 \
-nanopore pGodF5-comb.fastq gridOptions="--time=24:00:00"
