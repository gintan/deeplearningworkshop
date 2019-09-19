#!/bin/bash
#SBATCH --job-name=pytorch
#SBATCH --account=training
#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:P4:1

# Start the nvidia-smi command
#nvidia-smi -l 1 -q -x -f nvidia-log &
nvidia-smi dmon -s pucvt -o DT -d 10 -f nvidia-smi.dmon$1.$(date "+%Y.%m.%d-%H.%M.%S").csv &

# Get its PID
PID=$!

module load pytorch
python3 finetune_torchvision.py

kill $PID
