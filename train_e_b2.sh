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
  --restore_directory $(pwd)/checkpoints \
  --preprocess_batch_size 24 \
  --preprocess_shuffle_batch_num_threads 24 \
  --preprocess_batch_capacity 96 \
  --infer_size 24 \
  --loss_crop_size 520

  #--restore_directory $BASE_DIRECTORY/train \
