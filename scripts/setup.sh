#!/bin/bash

conda create --name resnet-eval python=3.8 -y
source ~/miniconda3/bin/activate
conda init bash
conda activate resnet-eval
pip install --upgrade pip
pip install --upgrade pip setuptools wheel
pip install torch==1.13.1+cu116 torchvision==0.14.1+cu116 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu116
pip install -r ./requirements.txt