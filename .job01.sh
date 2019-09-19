#!/bin/bash
#SBATCH --job-name=pytorch
#SBATCH --account=training
#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:P4:1

module load pytorch
python3 finetune_torchvision.py
