#!/bin/bash

model_file=$1

set -x

HYDRA_FULL_ERROR=1 python dense_retriever.py \
    model_file=$1 \
    qa_dataset=nq_dev \
    ctx_datatsets=[dpr_wiki] \
    encoded_ctx_files=[\"/home/daniel/Documents/DPR/retriever_res/embeddings/nq_dev_0\"] \
    out_file=/home/daniel/Documents/DPR/retriever_res/res/nq_dev_bsize8.res
