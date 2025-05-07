#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=GCA_0034
#SBATCH --output=GCA_0034
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2023 bowtie2/2.5.4

# Input ref genome and srr
#fqFile="home/owang05/scratch/SRRfastq_23/SRR13301020.lite.1.fastq"

#fqFile="$i"

#inDir="/bowtie2/GCF_029168945.1_ASM2916894v1_genomic" 

#outDir=""$inDir"/$(basename -s .lite.1.fastq "$fqFile".sam)"

#bowtie2 --fast-local -t -p 16 -x $inDir $(basename"$fqFile") -S $outDir
#
#
#
#bowtie2-build GCA_013030365.1_ASM1303036v1_genomic.fna  ../bowtie2/GCA_013030365.1_ASM1303036v1_genomic --threads 8


#echo It came here\ "$i" fqFile "$fqFile" \\ inDir "$inDir" \\ outDir "$outDir" \\ basename $(basename "$fqFile")


bowtie2 --fast-local -t -p 16 -x ./GCA_003417725.2_ASM341772v2_genomic SRR13301020.lite.1.fastq -S GCA_003_SRR13301020.sam
