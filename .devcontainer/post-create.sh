#!/bin/bash

echo "::step::Activating & updating conda environment."
conda init bash
source ~/.bashrc
conda activate ldm
conda env update -f environment.yaml

echo "::step::Downloading stable-diffusion model."
bash scripts/download_sd-v1-4.sh
