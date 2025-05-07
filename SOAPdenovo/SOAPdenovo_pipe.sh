#!bin/bash

folder_name = $1

#Make config_file
bash ~/shScript/SOAPdenovo/configSOAP.sh

#Run SOAPdenovo-127mer
bash ~/shScript/SOAPdenovo/SOAPdenovo_loop.sh

#Files clean up
mkdir configFiles
mv *_config_file configFiles/

#Move idba_ud into proper folder
mkdir idba_ud_$folder_name 
mv idba_ud_* idba_ud_$folder_name/

cd ../ 

