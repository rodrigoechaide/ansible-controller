#! /bin/bash

apt-get update && apt-get upgrade
apt-get install -y sshpass \
			   python3-distutils
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python3 get-pip.py
pip3 install ansible