# wsl-bertopic

This docker image allows a user on Windows to easily install all the dependencies needed to run BERTopic with CUDA support via Windows Subsystem for Linux (WSL2). It is built on top of the ghcr.io/astral-sh/uv:0.5.26-python3.9-bookworm base image.

Usage:

1. Verify that your machine's graphics card supports CUDA: https://developer.nvidia.com/cuda-gpus
2. On Windows, install the latest game-ready driver from NVIDIA: https://www.nvidia.com/Download/index.aspx#
3. On Windows, install the latest version of Docker Desktop: https://www.docker.com/products/docker-desktop/
4. Open Docker Desktop and ensure that it is running
5. Open the Windows Terminal (e.g., PowerShell)
6. [Option 1] Build image from source
    + On Windows, install the latest version of git: https://git-scm.com/downloads/win
    + In the Terminal, navigate to whatever folder you want using `cd`
    + In the Terminal, type `git clone https://github.com/jmgirard/wsl-bertopic`
    + In the Terminal, type `cd wsl-bertopic`
    + In the Terminal, type `docker build -t jmgirard/wsl-bertopic .`
7. [Option 2] Pull image from Dockerhub
    + In the Terminal, type `docker pull jmgirard/wsl-bertopic`
8. In the Terminal, type `docker run --gpus all -it jmgirard/wsl-bertopic`
9. The Python terminal will appear and you can import and use BERTopic
