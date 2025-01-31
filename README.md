# wsl-bertopic

This docker image allows a user on Windows to easily install all the dependencies needed to run BERTopic with CUDA support via Windows Subsystem for Linux (WSL2). It is built on top of the ghcr.io/astral-sh/uv:0.5.26-python3.9-bookworm base image.

Usage:

1. Verify that your machine's graphics card supports CUDA: https://developer.nvidia.com/cuda-gpus
2. On Windows, install the latest game-ready driver from NVIDIA: https://www.nvidia.com/Download/index.aspx#
3. On Windows, install the latest version of Docker Desktop: https://www.docker.com/products/docker-desktop/
4. Open Docker Desktop and ensure that it is running
5. Open the Windows Terminal (e.g., PowerShell)
6. In the Terminal, type `docker pull jmgirard/wsl-bertopic`
7. In the Terminal, type `docker run --gpus all -it jmgirard/wsl-bertopic`
8. The Python terminal will appear and you can import and use BERTopic
