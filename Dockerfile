FROM python:3.8
MAINTAINER yuxiaofei
ENV PYTHONUNBUFFERED 1
RUN pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip3 install pypiserver
RUN pip3 install pip2pi
WORKDIR /src
RUN pypi-server -U /src/pip
CMD pypi-server -p 8000 /src/pip