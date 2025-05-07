#!/bin/bash

#SBATCH --time=24:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=busco_test2
#SBATCH --output=busco_test2
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

# Load modules dependencies.
module load StdEnv/2020 gcc/9.3.0 python/3.10 augustus/3.5.0 hmmer/3.3.2 blast+/2.13.0 metaeuk/6 prodigal/2.6.3 r/4.3.1 bbmap/38.86


# Generate your virtual environment in $SLURM_TMPDIR.
virtualenv --no-download ${SLURM_TMPDIR}/env
source ${SLURM_TMPDIR}/env/bin/activate

# Install busco and its dependencies.
pip install --no-index --upgrade pip
pip install --no-index --requirement ~/busco-requirements.txt

# Edit with the proper arguments, run your commands.
busco --offline --in assembly.scaffolds.fasta  --out TEST --lineage_dataset eudicots_odb10 --mode genome --cpu ${SLURM_CPUS_PER_TASK:-1} --download_path busco_download/
