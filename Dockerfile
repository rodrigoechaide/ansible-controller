FROM ubuntu:18.04

LABEL maintainer="Rodrigo Echaide"

RUN apt-get update && apt-get -y install --no-install-recommends \
	curl \
	python3-distutils \
	sshpass \
	&& apt-get clean \
	&& curl -s "https://bootstrap.pypa.io/get-pip.py" | python3 \
	&& pip3 install ansible==2.8.0

WORKDIR /ansible
