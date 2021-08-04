#!/bin/bash

set -x
HYDRA_FULL_ERROR=1 python train_dense_encoder.py \
    train_datasets=[nq_train] \
    dev_datasets=[nq_dev] \
    train=biencoder_nq \
    train.batch_size=$1 \
    train.hard_negatives=0 \
    output_dir=./runs/
    #encoder.pretrained_model_cfg=prajjwal1/bert-tiny \
    #train.max_grad_norm=2.0 \
    #train.weight_decay=0.0 \
    #train.learning_rate=2e-5 \
    #train.gradient_accumulation_steps=1 \
    #train.num_train_epochs=400 \
    #train.eval_per_epoch=2 \
    #train.hard_negatives=0 \
    #train.val_av_rank_hard_neg=10 \
    #train.val_av_rank_other_neg=10 \
    #val_av_rank_start_epoch=0 \
