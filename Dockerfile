FROM ubuntu:trusty

MAINTAINER kenta-s <knt01222@gmail.com>

RUN apt-get update && apt-get install -y curl

RUN \
  curl -sfLO https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh && \
  echo "yes\nyes" | bash Anaconda3-4.3.1-Linux-x86_64.sh && \
  rm Anaconda3-4.3.1-Linux-x86_64.sh

ENV PATH $PATH:/root/anaconda3/bin
