#!/bin/bash
export CUDA_VISIBLE_DEVICES=""
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
  --preprocess_batch_size 16 \
  --preprocess_shuffle_batch_num_threads 32 \
  --preprocess_batch_capacity 16 \
  --loss_crop_size 520

  #--restore_directory $BASE_DIRECTORY/train \
  #--restore_directory $(pwd)/checkpoints \
