#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=bt2_GCA_000
#SBATCH --output=bt2_GCA_000
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2023 bowtie2/2.5.4

bowtie2-build GCA_000230575.5_ASM23057v5_genomic.fna ../bowtie2/GCA_000230575.5_ASM23057v5_genomic --threads 16

#-t prints wall-clock time required to load the index files and align the reads
#-p launch NTHREADS parallel search 8 threads are used here
#-X maximum fragment length for valid paired-end alignment default 500
#-x the basename of the index for the reference genome
#
#

bowtie2 --fast-local -t -p 16 -x ../bowtie2/GCA_000230575.5_ASM23057v5_genomic SRR13301020.lite.1.fastq  -S ../bowtie2/GCA_000_SRR13301020.lite.1.sam

#nohup for i in *.1.fastq;
#do bowtie2 --fast-local -t -p 8 -x bowtie2_raw/GCA_029168945  *.fastq  -S bowtie2/SRR13301020.sam

#nohup ls -l ~/projects/def-idohatam/srrFastq/*.fastq | parallel bowtie2 -p  
