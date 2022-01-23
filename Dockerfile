FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN pip install --upgrade idna==2.8
RUN pip install jupyterlab
