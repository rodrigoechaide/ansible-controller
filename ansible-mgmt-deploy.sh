#! /bin/bash

apt-get update && apt-get upgrade
apt-get install -y sshpass \
			   	   python3-distutils

curl -s https://bootstrap.pypa.io/get-pip.py | python3
pip3 install ansible==2.8.0