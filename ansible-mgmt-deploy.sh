#! /bin/bash

apt update && apt upgrade
apt install -y sshpass python3-distutils
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python3 get-pip.py
pip3 install --upgrade cryptography
pip3 install ansible
