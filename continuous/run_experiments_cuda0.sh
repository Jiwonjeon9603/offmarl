#!/bin/bash

# 실행할 dataset_num 리스트
#DATASETS=("742200" "742100" "741200" "741100")
DATASETS=(
    "dseed_0_Joint_NoSG_HR_DSReturn_0.0_adapth_0.01"
    "dseed_0_Joint_NoSG_HR_DSReturn_0.0_adapth_0.02"
    "dseed_0_Joint_NoSG_NoHR_DSReturn_0.0_adapth_0.01"
    "dseed_0_Joint_NoSG_NoHR_DSReturn_0.0_adapth_0.02")

# 실행할 seed 리스트
SEEDS=(0 1 2)

# 반복 실행
for dataset in "${DATASETS[@]}"; do
    for seed in "${SEEDS[@]}"; do
        CUDA_VISIBLE_DEVICES=4 python3 main.py --seed "$seed" --dataset_str "$dataset"
    done
done