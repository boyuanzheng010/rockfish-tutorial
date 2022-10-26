#!/bin/bash
#SBATCH -A (pi_userid)
#SBATCH --partition=defq
#SBATCH --nodes=4
#SBATCH --time=72:00:00
#SBATCH --output="/home/bzheng12/reverse_lm/record_slurms/10k_openwebtext_subset.out" # Output path for files
#SBATCH --mem=180GB
module load anaconda
conda info --envs
source activate qa
pwd
python example.py


