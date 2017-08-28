#!/bin/bash

yum -y update

# General
yum install -y curl git vim

# Ansible
yum install -y epel-release
yum install -y ansible

# TODO: if curl installed check
# Setup vim config
curl -o /home/vagrant/.vimrc https://raw.githubusercontent.com/BraydenNeale/vimrc/master/.vimrc

# Docker - according to offical docs
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager \
        --add-repo \
            https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum install -y docker-ce
systemctl start docker
