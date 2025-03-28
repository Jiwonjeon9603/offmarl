#!/bin/bash

# 실행할 dataset_num 리스트
DATASETS=("702111100" "702111200" "702112100" "702112200" "702121100" "702121200" "702122100" "702122200" )

# 실행할 seed 리스트
SEEDS=(0 1 2)

# 반복 실행
for dataset in "${DATASETS[@]}"; do
    for seed in "${SEEDS[@]}"; do
        CUDA_VISIBLE_DEVICES=5 python main.py --seed "$seed" --dataset_num "$dataset"
    done
done