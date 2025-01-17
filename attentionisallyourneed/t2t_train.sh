#!/usr/bin/env bash
PROBLEM=translate_enzh_wmt32k
MODEL=transformer
HPARAMS=transformer_base_single_gpu


DATA_DIR=/tmp/t2t_datagen
TRAIN_DIR=$HOME/t2t_train/$PROBLEM/$MODEL-$HPARAMS

mkdir -p $DATA_DIR $TMP_DIR $TRAIN_DIR

t2t-trainer --data_dir=$DATA_DIR --problem=$PROBLEM --model=$MODEL --hparams_set=$HPARAMS --output_dir=$TRAIN_DIR --hparams=batch_size=1024