
DATASETS=(
    "dseed_0_Joint_SG_NoHR_DSReturn_1.0_adapth_0.01"
    "dseed_0_Joint_SG_NoHR_DSReturn_1.0_adapth_0.02"
    "dseed_0_OneAgent_SG_NoHR_DSReturn_1.0_adapth_0.01"
    "dseed_0_OneAgent_SG_NoHR_DSReturn_1.0_adapth_0.02"
    "dseed_0_Joint_SG_NoHR_DSReturn_0.4_adapth_0.01"
    "dseed_0_Joint_SG_NoHR_DSReturn_0.4_adapth_0.02"
    "dseed_0_OneAgent_SG_NoHR_DSReturn_0.4_adapth_0.01"
    "dseed_0_OneAgent_SG_NoHR_DSReturn_0.4_adapth_0.02"
)

# 실행할 seed 리스트
SEEDS=(0 1 2 3 4)

# 반복 실행
for dataset in "${DATASETS[@]}"; do
    for seed in "${SEEDS[@]}"; do
        CUDA_VISIBLE_DEVICES=6 python3 main.py --seed "$seed" --dataset_str "$dataset"
    done
done