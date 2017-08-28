#!/bin/bash

yum -y update

# General
yum install -y curl git vim

# Ansible
yum install -y epel-release
yum install -y ansible
