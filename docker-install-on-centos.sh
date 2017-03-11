#!/bin/sh

export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin

yum update -y  && yum install -y yum-utils
yum-config-manager \
  --add-repo \
  https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum -y install docker-ce
systemctl start docker
