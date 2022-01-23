FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

ENV PATH "$PATH:/root/.local/bin"

RUN pip install --user --upgrade idna==2.8
RUN pip install --user jupyterlab

