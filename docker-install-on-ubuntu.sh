#!/bin/sh

export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin

apt-get update -y && apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common python-software-properties

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
       stable"

apt-get update -y && apt-get -y install docker-ce
docker run hello-world
