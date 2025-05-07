#!/bin/bash
#SBATCH --time=36:00:00
#SBATCH --mem=750G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=idba_hybrid_750G_2
#SBATCH --output=idba_hybrid_750G_2.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=25

module load StdEnv/2020 idba-ud/1.1.3

cd ~/projects/def-idohatam/owang05/shortReads

fq2fa --paired --filter SRR13301020.lite.1.fastq SRR13301020.lite.1.fasta 
idba_hybrid -r SRR13301020.lite.1.fasta --reference  GCA_029168945.1_genomic_genbank.fna -o output
