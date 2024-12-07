CUDA_VISIBLE_DEVICES=0 python run_src/do_discriminate.py \
    --model_ckpt microsoft/Phi-3-mini-4k-instruct \
    --root_dir run_outputs/GSM8K/Mistral-7B-v0.1/p2024-12-05_13-32-46---[default] \
    --dataset_name GSM8K \
    --note default
