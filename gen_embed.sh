#!/bin/bash

model_file=$1
cdir=`pwd`

set -x

HYDRA_FULL_ERROR=1 python generate_dense_embeddings.py \
    model_file="$model_file" \
    ctx_src=dpr_wiki \
    out_file="${cdir}/retriever_res/embeddings/nq_dev"

#HYDRA_FULL_ERROR=1 python dense_retriever.py \
#    model_file=$1 \
#    qa_dataset=nq_dev \
#    ctx_datatsets=[dpr_wiki] \
#    encoded_ctx_files=["{glob expression for generated embedding files}"] \
#    out_file={path to the output file}
