#!/bin/bash
export BASE_DIRECTORY=/data/isl_output
bazel run isl:launch -- \
  --alsologtostderr \
  --base_directory $BASE_DIRECTORY \
  --mode EVAL_EVAL \
  --metric INFER_FULL \
  --stitch_crop_size 1500 \
  --read_pngs \
  --dataset_eval_directory $(pwd)/data_sample/condition_e_sample_B3 \
  --infer_channel_whitelist DAPI_CONFOCAL,CELLMASK_CONFOCAL \
  --noinfer_simplify_error_panels \
  --infer_simplify_error_panels False \
  --infer_size 8

  #--restore_directory $(pwd)/checkpoints \
