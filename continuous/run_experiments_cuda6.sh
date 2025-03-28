#!/bin/bash

# 실행할 dataset_num 리스트
DATASETS=("702211100" "702211200" "702212100" "702212200" "702221100" "702221200" "702222100" "702222200" )

# 실행할 seed 리스트
SEEDS=(0 1 2)

# 반복 실행
for dataset in "${DATASETS[@]}"; do
    for seed in "${SEEDS[@]}"; do
        CUDA_VISIBLE_DEVICES=6 python main.py --seed "$seed" --dataset_num "$dataset"
    done
done