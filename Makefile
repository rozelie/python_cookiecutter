ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
VENV_BIN := ${ROOT_DIR}/venv/bin
PYTHON := ${VENV_BIN}/python
TEST_PROJECT_NAME := "new_project"

setup:
	python3 -m venv venv
	${PYTHON} -m pip install cookiecutter --upgrade

test:
	rm -rf ${TEST_PROJECT_NAME}
	${VENV_BIN}/cookiecutter . --no-input
	cd ${TEST_PROJECT_NAME}; \
		make setup; \
		make format; \
		make lint; \
		make test; \
		make docker_build; \
		make docker_run; \
		make run;
	rm -rf ${TEST_PROJECT_NAME}
	echo "No issues in creating the new project"
