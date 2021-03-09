# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash
DIR="/content/deepcluster/batsnet_train"
ARCH="vgg16"
LR=0.05
WD=-5
K=5
WORKERS=12
EXP="exp2"
PYTHON="/usr/local/envs/deepCluster_pytorch4/bin/python"
EPOCHS=50
BATCH_SIZE=50
mkdir -p ${EXP}



CUDA_VISIBLE_DEVICES=0 ${PYTHON} main.py ${DIR} --exp ${EXP} --arch ${ARCH} \
  --lr ${LR} --wd ${WD} --k ${K} --sobel --verbose --workers ${WORKERS} --epochs ${EPOCHS} --batch ${BATCH_SIZE}

