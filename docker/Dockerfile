FROM nvidia/cuda:11.3.1-devel-ubuntu20.04

RUN apt-get update && apt-get install wget -yq
RUN apt-get install build-essential g++ gcc -y
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install libgl1-mesa-glx libglib2.0-0 -y
RUN apt-get install openmpi-bin openmpi-common libopenmpi-dev libgtk2.0-dev git -y
RUN apt-get install python3-pip python3.8 -y

# Install miniconda
# ENV CONDA_DIR /opt/conda
# RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
#      /bin/bash ~/miniconda.sh -b -p /opt/conda
# Put conda in path so we can use conda activate
# ENV PATH=$CONDA_DIR/bin:$PATH
# RUN conda install python=3.8
# RUN conda install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cudatoolkit=11.3 -c pytorch
RUN pip install torch==1.11.0+cu113 torchvision==0.12.0+cu113 torchaudio==0.11.0 --extra-index-url https://download.pytorch.org/whl/cu113
RUN pip install Pillow==8.4.0
RUN pip install tqdm
RUN pip install torchpack
RUN pip install mmcv==1.4.0 mmcv-full==1.4.0 mmdet==2.20.0
RUN pip install nuscenes-devkit
RUN pip install mpi4py==3.0.3
RUN pip install numba==0.48.0
RUN pip install numpy==1.23.5
RUN pip install yapf==0.40.1
RUN pip install onnx==1.12.0
RUN pip install onnx_simplifier==0.4.8
RUN pip install onnxsim==0.4.10
RUN pip install onnxruntime==1.13.1
RUN pip install --extra-index-url https://pypi.ngc.nvidia.com
RUN pip install onnx-graphsurgeon
RUN pip install shapely==1.8.0
RUN pip install --no-cache-dir --extra-index-url https://pypi.nvidia.com pytorch-quantization

WORKDIR /mnt/OT_DATASET/algorithm/Lidar_AI_Solution/CUDA-BEVFusion/bevfusion
