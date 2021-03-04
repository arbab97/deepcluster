# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash
DIR="/content/tiny-imagenet-200/train2"
ARCH="alexnet"
LR=0.05
WD=-5
K=10000
WORKERS=12
EXP="exp"
PYTHON="/usr/local/envs/deepCluster_pytorch4/bin/python"

mkdir -p ${EXP}

CUDA_VISIBLE_DEVICES=0 ${PYTHON} main.py ${DIR} --exp ${EXP} --arch ${ARCH} \
  --lr ${LR} --wd ${WD} --k ${K} --sobel --verbose --workers ${WORKERS}
