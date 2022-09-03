FROM mcr.microsoft.com/vscode/devcontainers/miniconda:0-3

ENV DEBIAN_FRONTEND=noninteractive
ENV LD_LIBRARY_PATH="/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/local/lib:/lib:/usr/lib:/opt/conda/lib"

RUN apt-get update && \
    apt-get -y install --no-install-recommends tmux

COPY environment.yaml setup.py /tmp/conda-tmp/
RUN umask 0002 && \
    cd /tmp/conda-tmp/ && \
    /opt/conda/bin/conda env create -f /tmp/conda-tmp/environment.yaml && \
    rm -rf /tmp/conda-tmp
