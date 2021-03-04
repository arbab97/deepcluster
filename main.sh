# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

DIR="/media/rabi/Data/ThesisData/tinyImagenet/tiny-imagenet-200/train"
ARCH="alexnet"
LR=0.05
WD=-5
K=4 
WORKERS=4
EXP="/home/rabi/Documents/Thesis/deepcluster_misc_data"
PYTHON="/media/rabi/Data/ThesisData/condaEnvs/deepCluster_pytorch3/bin/python"
#PYTHON="/home/rabi/anaconda3/envs/gpu//bin/python"

mkdir -p ${EXP}

CUDA_VISIBLE_DEVICES=0 ${PYTHON} main.py ${DIR} --exp ${EXP} --arch ${ARCH} \
  --lr ${LR} --wd ${WD} --k ${K} --sobel --verbose --workers ${WORKERS}
