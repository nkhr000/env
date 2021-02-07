FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y \
  strace \
  ltrace \
  unzip \
  tar \
  lzma \
  xz-utils \
  elfutils \
  binutils \
  make \
  gcc \
  ghex \
  file 

RUN apt-get install -y git && \
  git clone https://github.com/radare/radare2 && \
  cd radare2/ && \
  sys/install.sh


