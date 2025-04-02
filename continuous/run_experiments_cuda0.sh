#!/bin/bash

# 실행할 dataset_num 리스트
#DATASETS=("742200" "742100" "741200" "741100")
DATASETS=("741200")

# 실행할 seed 리스트
SEEDS=(0 1 2)

# 반복 실행
for dataset in "${DATASETS[@]}"; do
    for seed in "${SEEDS[@]}"; do
        CUDA_VISIBLE_DEVICES=0 python3 main.py --seed "$seed" --dataset_num "$dataset"
    done
done