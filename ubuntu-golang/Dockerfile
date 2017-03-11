FROM ubuntu:latest

MAINTAINER Herosea Zhou <herosea.zhou@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8
ENV GOVERSION 1.8
ENV GOROOT /opt/go
ENV GOPATH /root/.go

RUN apt-get update -y && apt-get install -y wget

RUN cd /opt && wget https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz && \
    tar zxf go${GOVERSION}.linux-amd64.tar.gz && rm go${GOVERSION}.linux-amd64.tar.gz && \
    ln -s /opt/go/bin/go /usr/bin/ && \
    mkdir $GOPATH

CMD ["/usr/bin/go"]



