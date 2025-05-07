#!/bin/bash

test="~/scratch/SRRfastq_23/"

for i in $test;do

	sbatch ~/shScript/test.sh $i
	echo $i

	sleep 1

done
