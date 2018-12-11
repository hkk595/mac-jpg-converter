#!/bin/bash

src_dir=$1
des_dir=$2

mkdir -p $des_dir

sips -s format jpeg -s formatOptions high ${src_dir%%/}/*.{bmp,BMP,heic,HEIC,png,PNG} --out $des_dir
