#!/bin/bash

#SBATCH --job-name=MNIST_test01
#SBATCH --output=console.txt
#SBATCH --nodes=1
#SBATCH --gres=gpu:2
#
#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --mem-per-cpu=100

nvidia-smi

source activate RL

python train.py

mkdir -p ../../../finished
mkdir -p ../../../finished/experiment
mv $(pwd -P) ../../../finished/experiment