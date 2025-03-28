#!/bin/bash

# 실행할 dataset_num 리스트
DATASETS=("002211100" "002211200" "002212100" "002212200" "002221100" "002221200" "002222100" "002222200" )

# 실행할 seed 리스트
SEEDS=(0 1 2)

# 반복 실행
for dataset in "${DATASETS[@]}"; do
    for seed in "${SEEDS[@]}"; do
        CUDA_VISIBLE_DEVICES=4 python main.py --seed "$seed" --dataset_num "$dataset"
    done
done