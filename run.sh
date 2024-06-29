#!/bin/bash
#SBATCH --gres=gpu:teslaa40:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zr523
export PATH=/vol/bitbucket/zr523/myvenv/bin/:$PATH
# the above path could also point to a miniconda install
# if using miniconda, uncomment the below line
# source ~/.bashrc
source activate
#source /vol/cuda/11.3.1-cudnn8.2.1/setup.sh
. /vol/cuda/11.3.1-cudnn8.2.1/setup.sh
nvcc --version
TERM=vt100
/usr/bin/nvidia-smi
uptime
pip install -r requirements.txt
python train_svd.py
