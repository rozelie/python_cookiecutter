ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SRC_DIR := ${ROOT_DIR}/{{cookiecutter.project_slug}}
TESTS_DIR := ${ROOT_DIR}/tests
VENV_BIN := ${ROOT_DIR}/venv/bin
PYTHON := ${VENV_BIN}/python
ENTRYPOINT := ${SRC_DIR}/__main__.py
DOCKER_IMAGE := {{cookiecutter.project_slug}}:local

install:
	${PYTHON} -m pip install .

install_dev:
	${PYTHON} -m pip install .[dev]

setup:
	python3 -m venv venv
	$(MAKE) install
	$(MAKE) install_dev

run:
	PYTHONPATH="${ROOT_DIR}" PYTHONUNBUFFERED=1 ${PYTHON} ${ENTRYPOINT}

test:
	PYTHONPATH="${ROOT_DIR}" PYTHONUNBUFFERED=1 ${PYTHON} -m pytest ${TESTS_DIR}

format:
	${VENV_BIN}/black ${SRC_DIR} ${TESTS_DIR}
	${VENV_BIN}/isort ${SRC_DIR} ${TESTS_DIR}

lint:
	${VENV_BIN}/ruff ${SRC_DIR}
	${VENV_BIN}/mypy ${SRC_DIR}

docker_build:
	docker build -t ${DOCKER_IMAGE} .

docker_run:
	docker run -it --rm ${DOCKER_IMAGE}

publish_to_testpypi:
	# register account at https://test.pypi.org/account/register/
	${PYTHON} -m pip install --upgrade build twine
	${PYTHON} -m build
	${PYTHON} -m twine upload --repository testpypi dist/*
	rm -rf dist

publish_to_pypi:
	# register account at https://pypi.org/account/register/
	${PYTHON} -m pip install --upgrade build twine
	${PYTHON} -m build
	${PYTHON} -m twine upload --repository pypi dist/*
	rm -rf dist
