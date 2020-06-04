FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y make && \
    apt-get install -y gcc && \
    apt-get install -y rsync && \
    cd /tmp && \
    wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz && \
    tar -xvf go1.12.7.linux-amd64.tar.gz && \
    mv go /usr/local


export GOROOT=/usr/local/go
export GOPATH=/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH