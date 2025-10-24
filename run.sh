#!/bin/bash

# . env.sh

python train.py \
    --output_dir ./ckpts \
    --do_train \
    --do_eval \
    --bf16 \
    --prediction_loss_only True \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 8 \
    --gradient_accumulation_steps 2 \
    --max_steps 4000 \
    --learning_rate 1e-5 \
    --weight_decay 0.01 \
    --lr_scheduler_type cosine \
    --warmup_ratio 0.01 \
   --save_strategy steps \
    --save_steps 100 \
    --save_total_limit 2 \
    --load_best_model_at_end \
    --metric_for_best_model loss \
    --greater_is_better False \
    --eval_strategy steps \
    --eval_steps 50 \
    --eval_on_start \
    --logging_strategy steps \
    --logging_steps 10 \
    --seed 42 \
    --report_to tensorboard
