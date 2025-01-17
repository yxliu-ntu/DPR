#!/bin/bash

model_file=$1
cdir=`pwd`
ctime=`date +"%Y%m%d-%H-%M-%S"`
mkdir -p retriever_res/res/

set -x

HYDRA_FULL_ERROR=1 python dense_retriever.py \
    model_file=$1 \
    qa_dataset=nq_dev \
    ctx_datatsets=[dpr_wiki] \
    encoded_ctx_files=[\"${cdir}/retriever_res/embeddings/nq_dev_0\"] \
    out_file=${cdir}/retriever_res/res/nq_dev_${ctime}.res
