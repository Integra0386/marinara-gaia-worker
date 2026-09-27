FROM runpod/worker-comfyui:5.8.6-base

USER root

WORKDIR /comfyui/custom_nodes

RUN rm -rf ComfyUI_bitsandbytes_NF4 ComfyUI_bnb_nf4_fp4_Loaders || true \
    && git clone https://github.com/silveroxides/ComfyUI_bnb_nf4_fp4_Loaders.git

RUN /opt/venv/bin/python -m pip install --no-cache-dir bitsandbytes \
    && if [ -f /comfyui/custom_nodes/ComfyUI_bnb_nf4_fp4_Loaders/requirements.txt ]; then \
         /opt/venv/bin/python -m pip install --no-cache-dir \
         -r /comfyui/custom_nodes/ComfyUI_bnb_nf4_fp4_Loaders/requirements.txt; \
       fi

WORKDIR /comfyui
