FROM runpod/worker-comfyui:5.8.6-base

USER root

WORKDIR /workspace/ComfyUI/custom_nodes

RUN rm -rf ComfyUI_bitsandbytes_NF4 || true
RUN rm -rf ComfyUI_bnb_nf4_fp4_Loaders || true

RUN git clone https://github.com/silveroxides/ComfyUI_bnb_nf4_fp4_Loaders.git

RUN /workspace/ComfyUI/venv/bin/pip install --no-cache-dir --upgrade bitsandbytes

WORKDIR /workspace/ComfyUI
