FROM ghcr.io/astral-sh/uv:0.5.26-python3.9-bookworm

ENV UV_PYTHON_VERSION=3.9

RUN uv pip install bertopic --system

COPY install_cudatoolkit.sh /setup_scripts/
RUN chmod +x /setup_scripts/*.sh
RUN /setup_scripts/install_cudatoolkit.sh

RUN uv pip install cuml-cu12

CMD ["python3"]