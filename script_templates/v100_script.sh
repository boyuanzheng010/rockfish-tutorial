#!/bin/bash
#SBATCH -A (pi_userid)_gpu
#SBATCH --partition=v100
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --time=12:00:00
#SBATCH --output="/home/bzheng12/reverse_lm/record_slurms/10k_train_clm_file_reverse.out" # Path to store logs
module load anaconda
module load cuda/11.1
conda info --envs
source activate qa
python example.py