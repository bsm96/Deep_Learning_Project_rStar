#!/bin/sh
#BSUB -q gpua40
#BSUB -J rStar_Project_GSM8K_subset_rollout2_gpua40
#BSUB -n 4
#BSUB -gpu "num=1:mode=exclusive_process"
#BSUB -R "span[hosts=1]"    # Ensures that all cores or tasks requested by the job run on a single host (node)
#BSUB -R "rusage[mem=16GB]"
#BSUB -M 16GB
#BSUB -W 24:00
#BSUB -o rStar_Output_rStar_Project_GSM8K_subset_rollout2_gpua40_%J.out
#BSUB -e rStar_Error_rStar_Project_GSM8K_subset_rollout2_gpua40_%J.err


module load python3/3.10.14
module load cuda/12.4
module load cudnn/v8.8.0-prod-cuda-12.X

unset PYTHONHOME
unset PYTHONPATH

nvidia-smi > gpu_status_${LSB_JOBID}.log

# Activate your virtual environment
source /zhome/d6/a/186925/02356_Deep_Learning/Deep_learning_project_2024/02356_Deep_Learning_Project/bin/activate
cd /zhome/d6/a/186925/Deep_Learning/rStar

bash /zhome/d6/a/186925/Deep_Learning/rStar/scripts/run_gsm8k_generator_disk2.sh --gpu_memory_utilization 0.9