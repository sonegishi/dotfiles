PHONY: install-pyenv
install-pyenv:
	./lang/python.sh

PHONY: install-python
install-python:
	pyenv install 3.8.13
	pyenv install 3.9.12
	pyenv install 3.10.4

	pyenv rehash

	pyenv global 3.10.4
	python --version
