FROM python:3.7-slim

LABEL VERSION="2.8.6" \
      MAINTAINER="Rodrigo Echaide"
RUN pip install ansible==2.8.6

WORKDIR /ansible

