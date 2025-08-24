#!/usr/bin/env bash

cd /comfyui/custom_nodes
git pull
git checkout 22d1241a503461c9ca4f3ad48ddec5ce6e5ee491

apt update
apt install build-essential -y
apt install libpython3.10-dev -y

pip install --upgrade opencv-python-headless
pip install --upgrade albucore

pip install insightface==0.7.3
pip install spandrel

python3 -m pip install gitpython

git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git
git clone https://github.com/ltdrdata/ComfyUI-Impact-Subpack ComfyUI-Impact-Pack/impact_subpack
python3 ComfyUI-Impact-Pack/install.py

pip install rembg[gpu]

git clone https://github.com/Fannovel16/comfyui_controlnet_aux/
pip install -r comfyui_controlnet_aux/requirements.txt

git clone https://github.com/chflame163/ComfyUI_LayerStyle.git
pip install -r ComfyUI_LayerStyle/requirements.txt

git clone https://github.com/comfyorg/comfyui-essentials.git
pip install -r comfyui-essentials/requirements.txt

git clone https://github.com/jags111/efficiency-nodes-comfyui.git
pip install -r efficiency-nodes-comfyui/requirements.txt

git clone https://github.com/TemryL/ComfyS3.git
pip install -r ComfyS3/requirements.txt

git clone https://github.com/city96/ComfyUI-GGUF.git
pip install -r ComfyUI-GGUF/requirements.txt

git clone https://github.com/lquesada/ComfyUI-Inpaint-CropAndStitch.git

git clone https://github.com/sipie800/ComfyUI-PuLID-Flux-Enhanced.git
pip install -r ComfyUI-PuLID-Flux-Enhanced/requirements.txt
