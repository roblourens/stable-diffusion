#!/bin/bash -i

echo "::step::Activating & updating conda environment."
conda init bash
. ~/.bashrc

if [ "x$CONDA_DEFAULT_ENV" != "xldm" ]; then
    echo "conda activate ldm" >> ~/.bashrc
    conda activate ldm
fi

conda env update -f environment.yaml

echo "::step::Downloading stable-diffusion model."
bash scripts/download_sd-v1-4.sh
