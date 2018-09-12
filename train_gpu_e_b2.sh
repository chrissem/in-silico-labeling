#!/bin/bash
export BASE_DIRECTORY=/data/isl_output

bazel run isl:launch -- \
  --alsologtostderr \
  --base_directory $BASE_DIRECTORY \
  --mode TRAIN \
  --metric LOSS \
  --master "" \
  --read_pngs \
  --dataset_train_directory $(pwd)/data_sample/condition_e_sample_B2 \
  --restore_directory $BASE_DIRECTORY/train \
  --infer_channel_whitelist DAPI_CONFOCAL,CELLMASK_CONFOCAL \
  --preprocess_batch_size 16 \
  --preprocess_shuffle_batch_num_threads 16 \
  --preprocess_batch_capacity 64 \
  --loss_crop_size 520 \
  --infer_size 4

  #--restore_directory $BASE_DIRECTORY/train \
  #--restore_directory $(pwd)/checkpoints \
