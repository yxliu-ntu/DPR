#!/bin/bash

model_file=$1
cdir=`pwd`
mkdir -p retriever_res/embeddings

set -x

HYDRA_FULL_ERROR=1 python generate_dense_embeddings.py \
    model_file="$model_file" \
    ctx_src=dpr_wiki \
    out_file="${cdir}/retriever_res/embeddings/nq_dev"

