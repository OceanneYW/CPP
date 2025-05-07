#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=257000M
#SBATCH --nodes=1
#SBATCH --gpus-per-node=p100l:1
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=pGodF5shstaGPU
#SBATCH --output=pGodF5shstaGPU
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16


./shasta-Linux-0.14.0 --config Nanopore-r10.4.1_e8.2-400bps_sup-Herro-Jan2025 --input pGodF5-comb.fastq --assemblyDirectory pGodF5GPU
