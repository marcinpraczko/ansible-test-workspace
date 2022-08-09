#!/bin/bash 

echo "[APT] Install required tools"
apt-get update

echo "[APT] Install Python3-PIP"
apt-get install -y python3-pip

echo "[PIP] Install Ansible"
pip install -r 01-init-pip-ansible.txt
