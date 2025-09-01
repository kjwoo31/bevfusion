FROM nvidia/cuda:11.3.1-devel-ubuntu20.04

RUN apt-get update && apt-get install wget -yq
RUN apt-get install build-essential g++ gcc -y
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install libgl1-mesa-glx libglib2.0-0 -y
RUN apt-get install openmpi-bin openmpi-common libopenmpi-dev libgtk2.0-dev git -y

# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-py38_23.11.0-2-Linux-x86_64.sh -O ~/miniconda.sh && \
     /bin/bash ~/miniconda.sh -b -p /opt/conda
# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH
RUN conda install python=3.8 -y
RUN conda install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cudatoolkit=11.3 -c pytorch -y
RUN pip install Pillow==8.4.0
RUN pip install tqdm
RUN pip install torchpack
RUN conda install -c conda-forge cudatoolkit-dev -y
ENV CUDA_HOME="/usr/local/cuda-11.3"
RUN pip install mmcv==1.4.0
RUN MMCV_WITH_OPS=1 FORCE_CUDA=1 pip install mmcv-full==1.4.0 -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.10.0/index.html
RUN pip install mmdet==2.20.0
RUN pip install nuscenes-devkit
RUN pip install mpi4py==3.0.3
RUN pip install numba==0.48.0
RUN pip install numpy==1.23.5
RUN pip install yapf==0.40.1
RUN pip install onnx==1.12.0
RUN pip install onnx_simplifier==0.4.8
RUN pip install onnxsim==0.4.10
RUN pip install onnxruntime==1.13.1
RUN pip install onnx-graphsurgeon
RUN pip install shapely==1.8.0
RUN pip install pytorch-quantization==2.1.3
RUN pip install setuptools==59.5.0

WORKDIR /mnt/OT_DATASET/algorithm/Lidar_AI_Solution/CUDA-BEVFusion/bevfusion