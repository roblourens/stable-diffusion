#!/bin/bash

mkdir -p models/ldm/stable-diffusion-v1/

if [ ! -f "models/ldm/stable-diffusion-v1/sd-v1-4.ckpt" ]; then
    curl https://www.googleapis.com/storage/v1/b/aai-blog-files/o/sd-v1-4.ckpt?alt=media > models/ldm/stable-diffusion-v1/sd-v1-4.ckpt
fi

rm -f models/ldm/stable-diffusion-v1/model.ckpt
ln -s sd-v1-4.ckpt models/ldm/stable-diffusion-v1/model.ckpt
