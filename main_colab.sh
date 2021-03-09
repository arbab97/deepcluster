# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash
DIR="/content/batsnet_train"
ARCH="vgg16"
LR=0.05
WD=-5
K=3
WORKERS=12
EXP="exp01"
PYTHON="/usr/local/envs/deepCluster_pytorch4/bin/python"
EPOCHS=1
BATCH_SIZE=50
mkdir -p ${EXP}



CUDA_VISIBLE_DEVICES=0 ${PYTHON} main.py ${DIR} --exp ${EXP} --arch ${ARCH} \
  --lr ${LR} --wd ${WD} --k ${K} --sobel --verbose --workers ${WORKERS} --epochs ${EPOCHS} --batch ${BATCH_SIZE}

