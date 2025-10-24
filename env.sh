#!/bin/bash

set -e

#load modules with
module purge
module load hosts/hopper
module load cuda/12.6.3  # this will set $CUDA_HOME
module load gnu10/10.3.0-ya
module load git/2.27.1
module load miniconda3/22.11.1-gy

source ~/.bashrc
conda activate /scratch/cmeng2/envs/qwen_ft
export HF_HOME=/scratch/cmeng2/caches/qwen_ft
