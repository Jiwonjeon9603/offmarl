#!/bin/bash

# 실행할 dataset_num 리스트
DATASETS=("002111100" "002111200" "002112100" "002112200" "002121100" "002121200" "002122100" "002122200" )

# 실행할 seed 리스트
SEEDS=(0 1 2)

# 반복 실행
for dataset in "${DATASETS[@]}"; do
    for seed in "${SEEDS[@]}"; do
        CUDA_VISIBLE_DEVICES=3 python main.py --seed "$seed" --dataset_num "$dataset"
    done
done