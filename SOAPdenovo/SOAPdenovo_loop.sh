#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=270G
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=owang@langara.ca
#SBATCH --job-name=SOAP-J14
#SBATCH --output=SOAP-J14
#SBATCH --account=def-idohatam
#SBATCH --cpus-per-task=16

module load StdEnv/2020 soapdenovo2/r242

# Directory containing the config files
config_dir="./"

# Loop through each *_config_file in the directory
for config_file in "$config_dir"/*_config_file; do
    # Extract the base name without the _config_file part
    base_name=$(basename "$config_file" _config_file)
    
    # Construct the SOAPdenovo command
    command="SOAPdenovo-127mer all -s $config_file -K 89 -R -o ${base_name} > ${base_name}.err"
    
    # Print the command (or execute it)
    echo "$command"
    
    # Uncomment the following line to actually run the command
     eval "$command"
done
