#!/bin/bash

source activate RL

jobname="MNIST_test01"
version=(1.1 1.2 1.3)

mkdir -p runs finished
mkdir -p runs/$jobname


for v in ${version[@]}; do

	run="run_"$v
	echo "$run"
	mkdir -p runs/$jobname/$run
	cp -r code/* runs/$jobname/$run

	sed -i -e 's/VERSION.*=.*/VERSION='$v'/g' runs/$jobname/$run/config.py
	sed -i -e 's/#SBATCH --job-name=.*/#SBATCH --job-name='"$jobname"'/g' runs/$jobname/$run/sbatch_job.sh

	sed -i -e 's/mkdir -p ..\/..\/..\/finished\/experiment/mkdir -p ..\/..\/..\/finished\/'$jobname'/g' runs/$jobname/$run/sbatch_job.sh
	sed -i -e 's/mv $(pwd -P) ..\/..\/..\/finished\/experiment/mv $(pwd -P) ..\/..\/..\/finished\/'$jobname'/g' runs/$jobname/$run/sbatch_job.sh
done
