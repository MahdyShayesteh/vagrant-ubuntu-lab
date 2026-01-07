#! /bin/bash

# update and upgrade
sudo apt update -y

echo "===== Installing base packages ====="
sudo apt install -y \
  python3 \
  python3-pip \
  software-properties-common \
  curl \
  git \
  openssh-client

echo "===== Installing Ansible via pip ====="
sudo pip3 install --upgrade pip
sudo pip3 install ansible

echo "===== Verifying ====="
ansible --version