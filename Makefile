###############################################################
# Various playbook commands to help save time.
# 2017-07-26 tinle

ROOT_DIR=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
SHELL=/bin/bash

.PHONEY: all
all: venv
# all: ubuntu-upgrade
# all: consul ubuntu-upgrade

venv:
	python3 -m venv venv && \
		venv/bin/pip install -U pip && \
		venv/bin/pip install -U setuptools && \
		venv/bin/pip install -r requirements.txt

