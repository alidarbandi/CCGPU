#!/bin/bash
#SBATCH  --gres=gpu:1
#SBATCH  --cpus-per-task=4
#SBATCH  --mem=32000M
#SBATCH  --time=01:00:00

module load python/3.8
module load scipy-stack
source ENV/bin/activate
python your_code.py