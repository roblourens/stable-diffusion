#!/bin/bash

echo "::step::Activating & updating conda environment."
conda init bash
source ~/.bashrc
conda activate ldm
conda env update -f environment.yaml

if [ "x$CONDA_DEFAULT_ENV" != "xldm"]; then
    echo "export CONDA_DEFAULT_ENV=ldm" >> ~/.bashrc
fi

echo "::step::Downloading stable-diffusion model."
bash scripts/download_sd-v1-4.sh
