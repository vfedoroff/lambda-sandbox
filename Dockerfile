FROM ubuntu:14.04
MAINTAINER Vadym Fedorov "v.fedoroff@gmail.com"

RUN apt-get install -y software-properties-common && \
  add-apt-repository ppa:chris-lea/node.js && \
  apt-get update && \
  apt-get install -y nodejs && \
  npm install -g lambda-local && \
  apt-get purge -y --auto-remove software-properties-common && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
