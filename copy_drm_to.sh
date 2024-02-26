#!/bin/sh

BUILD_DIR=$1
TARGET_DIR=$2

drm_dir=$BUILD_DIR/drivers/gpu/drm
cp $drm_dir/drm.ko $drm_dir/drm_kms_helper.ko $drm_dir/ttm/ttm.ko -t $TARGET_DIR
