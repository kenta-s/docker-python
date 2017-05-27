FROM ubuntu:trusty
MAINTAINER kenta-s <knt01222@gmail.com>

ENV ANACONDA_VERSION=3-2.1.0

RUN apt-get update && apt-get install -y curl
RUN \
  curl -sfLO https://repo.continuum.io/archive/Anaconda$ANACONDA_VERSION-Linux-x86_64.sh && \
  echo "yes\nyes" | bash Anaconda$ANACONDA_VERSION-Linux-x86_64.sh && \
  rm Anaconda$ANACONDA_VERSION-Linux-x86_64.sh

ENV PATH $PATH:/root/anaconda3/bin
