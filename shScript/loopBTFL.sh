#!/bin/bash

# Input srrFastq file folder directory
srr="home/owang05/scratch/SRRfastq_23"

for i in "$srr"/*;do

sbatch ~/shScript/btFastLocal.sh $i

#echo "$i"

i=$i . /home/owang05/shScript/btFastLocal.sh

sleep 1

done
