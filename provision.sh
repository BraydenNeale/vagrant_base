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
