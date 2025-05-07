#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=SOAP-CM19_1
#SBATCH --output=SOAP-CM19_1.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2020 soapdenovo2/r242

SOAPdenovo-127mer all -s CM054919.1:357-150357_1_config_file -K 89 -R -o CM19_1 > CM19_1.err
