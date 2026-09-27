FROM runpod/worker-comfyui:5.8.6-base

RUN git clone https://github.com/silveroxides/ComfyUI_bnb_nf4_fp4_Loaders.git \
    /comfyui/custom_nodes/ComfyUI_bnb_nf4_fp4_Loaders

RUN /opt/venv/bin/pip install --no-cache-dir bitsandbytes
