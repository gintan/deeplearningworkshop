#!/bin/bash
#SBATCH --job-name=firstjob
#SBATCH --account=nq46
#SBATCH --time=01:00:00
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:P4:2
#SBATCH --partition=desktop
#SBATCH --qos=desktopq

module load pytorch
python3 finetune_torchvision.py
