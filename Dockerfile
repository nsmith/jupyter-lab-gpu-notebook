FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN pip install --upgrade idna==2.8
RUN pip install jupyterlab
RUN apt-get install -y python3-opencv
RUN pip install opencv-python 
RUN pip install torch torchvision
RUN pip install tensorboardX
# RUN pip install gym
RUN pip install gym[atari,accept-rom-license]==0.19.0
