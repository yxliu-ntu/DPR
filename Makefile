SHELL := /bin/bash
all: init activate
dtype ?= double

init:
	 virtualenv -p /usr/bin/python3 venv
	 chmod +x venv/bin/activate
activate:
	source ./venv/bin/activate; \
	pip install .; \
	python -m spacy download en_core_web_sm; \

clean:
	rm -rf venv
