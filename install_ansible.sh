#!/bin/bash
ANSIBLE_VERSION="2.2"

apt update && apt upgrade -y \
python-pip \
python-dev \
build-essential \
libssl-dev \
libffi-dev && \
pip install -U pip &&
pip install cryptography jmespath &&
pip install ansible==${ANSIBLE_VERSION}
