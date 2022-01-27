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
RUN pip install pandas
RUN pip install statsmodels
RUN apt-get install -y wget
RUN apt-get install -y build-essential
RUN apt-get install -y python-dev
RUN pip install setuptools
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
RUN tar -xvf ta-lib-0.4.0-src.tar.gz
RUN pwd
WORKDIR "ta-lib"
RUN ./configure --prefix=/usr
RUN make
RUN make install
WORKDIR "/tf"
RUN pip install TA-Lib
RUN pip install seaborn
RUN pip install scikit-learn
