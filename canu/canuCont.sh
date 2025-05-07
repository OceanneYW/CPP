#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --mem=8000G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owanglangara.ca
#SBATCH --job-name=canuPGodF5
#SBATCH --output=canuPGodF5
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2020 canu/2.2

# pKush
#canu \
#-p pKush -d pKush900M \
#minInputCoverage=0 stopOnLowCoverage=0 \
#genomeSize=900m mhapPipe=false purgeOverlaps=false saveOverlaps=true \
#corMhapFilterThreshold=0.0000000002 corMhapOptions="--threshold 0.80 --num-hashes 512 --num-min-matches 3 --ordered-sketch-size 1000 --ordered-kmer-size 14 --min-olap-length 2000 --repeat-idf-scale 50" mhapMemory=60g mhapBlockSize=500 ovlMerDistinct=0.975 \
#-nanopore pKushTrim.fastq gridOptions="--time=36:00:00"

#canu \
#-p T98 -d canuT98-gz2g \
#minInputCoverage=0 stopOnLowCoverage=0 \
#genomeSize=2g mhapPipe=false purgeOverlaps=false saveOverlaps=true \
#corMhapFilterThreshold=0.0000000002 corMhapOptions="--threshold 0.80 --num-hashes 512 --num-min-matches 3 --ordered-sketch-size 1000 --ordered-kmer-size 14 --min-olap-length 2000 --repeat-idf-scale 50" mhapMemory=60g mhapBlockSize=500 ovlMerDistinct=0.975 \
#-nanopore T98combined.fastq gridOptions="--time=36:00:00"


canu \
-p pGod -d pGodFlower5 \
minInputCoverage=0 stopOnLowCoverage=0 \
genomeSize=800m mhapPipe=false purgeOverlaps=false saveOverlaps=true \
corMhapFilterThreshold=0.0000000002 corMhapOptions="--threshold 0.80 --num-hashes 512 --num-min-matches 3 --ordered-sketch-size 1000 --ordered-kmer-size 14 --min-olap-length 2000 --repeat-idf-scale 50" mhapMemory=60g mhapBlockSize=500 ovlMerDistinct=0.975 \
-nanopore pGodF5.fastq gridOptions="--time=36:00:00"
