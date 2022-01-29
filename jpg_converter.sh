#!/bin/bash

src_dir=$1

if [ $# == 1 ]
then
    des_dir=$1
else
    des_dir=$2
fi

mkdir -p ${des_dir}

sips -s format jpeg -s formatOptions high ${src_dir%%/}/*.{bmp,BMP,heic,HEIC,png,PNG} --out ${des_dir}
rm ${des_dir%%/}/*.{bmp,BMP,heic,HEIC,png,PNG}
