# Homework 10 - Pytorch Hooks

## Setup
1. Create folders `VGG16_L2Norm` and `VGG16bn_L2Norm`, these are used to store the L2 norm from first 2 layers of VGG16 and VGG16bn respectively.
2. Download the file from [dropbox](https://www.dropbox.com/sh/7wk6ju3rj96ogu1/AADjwuH1-rr8Yrn_wdidk3LFa?dl=0), and extract the files, put `val` `mnt`, `synset.txt` `guidedbpcodehelper.py`,`imagenetdatastuff.py` in the root folder.
3. Assume you installed PyTorch >= 1.6 and torchvision

## Run code 
All the code is in `main.ipynb` file, open jupyter notebook and run cells in it sequentially.

1. First question will generate files in `VGG16_L2Norm` and `VGG16bn_L2Norm`, with `{image_name}_layer{1 or 2}` for Conv layer 1 or 2.
2. First question will also generate `VGG16bn_{mediums/percentiles}.png` and `VGG16_{mediums/percentiles}.png` as computed result for statistics.


## Contributor
- **Hong Pengfei - 1002949** 
