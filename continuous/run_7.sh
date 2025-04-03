
DATASETS=(
    "dseed_0_Joint_SG_HR_DSReturn_0.0_adapth_0.01"
    "dseed_0_Joint_SG_HR_DSReturn_0.0_adapth_0.02"
    "dseed_0_OneAgent_SG_HR_DSReturn_0.0_adapth_0.01"
    "dseed_0_OneAgent_SG_HR_DSReturn_0.0_adapth_0.02"
    "dseed_0_Joint_SG_HR_DSReturn_0.2_adapth_0.01"
    "dseed_0_Joint_SG_HR_DSReturn_0.2_adapth_0.02"
    "dseed_0_OneAgent_SG_HR_DSReturn_0.2_adapth_0.01"
    "dseed_0_OneAgent_SG_HR_DSReturn_0.2_adapth_0.02"
)

# 실행할 seed 리스트
SEEDS=(0 1 2 3 4)

# 반복 실행
for dataset in "${DATASETS[@]}"; do
    for seed in "${SEEDS[@]}"; do
        CUDA_VISIBLE_DEVICES=7 python3 main.py --seed "$seed" --dataset_str "$dataset"
    done
done