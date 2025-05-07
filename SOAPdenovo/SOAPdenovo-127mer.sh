#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=SOAPdenovo89_300
#SBATCH --output=SOAPdenovo89_300.out
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2020 soapdenovo2/r242

# Loop through all _config_file in the current directory
for config_file in *_ config_file; do

	base_name=$(basename "$config_file" _config_file)

	#Construct the output file names
	output_file = "${base_name}.out"
	err_file = "${base_name}.err"

	SOAPdenovo-127mer all -s "$config_file" -K 89 -R -o output_file > err_file

done
