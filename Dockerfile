FROM runpod/worker-comfyui:5.8.6-base

RUN git clone https://github.com/comfyanonymous/ComfyUI_bitsandbytes_NF4.git \
    /comfyui/custom_nodes/ComfyUI_bitsandbytes_NF4

RUN /opt/venv/bin/pip install --no-cache-dir \
    -r /comfyui/custom_nodes/ComfyUI_bitsandbytes_NF4/requirements.txt

RUN /opt/venv/bin/pip install --no-cache-dir bitsandbytes
