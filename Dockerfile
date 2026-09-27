FROM runpod/worker-comfyui:5.8.6-flux1-dev

USER root

RUN mkdir -p /comfyui/models/loras \
    && curl -L \
    "https://huggingface.co/shahtab/FLUXNSFWunlock/resolve/main/aidmaNSFWunlock-FLUX-V0.2.safetensors?download=true" \
    -o /comfyui/models/loras/aidmaNSFWunlock-FLUX-V0.2.safetensors

WORKDIR /comfyui
