# --- Globals
ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

PROJECT_NAME := {{cookiecutter.project_slug}}

SRC := $(PROJECT_NAME)
TESTS := tests

DOCKER_IMAGE_TAG := $(PROJECT_NAME):local

# --- Environment Variables
export PYTHONUNBUFFERED := 1
export PYTHONPATH := $(ROOT_DIR)

# --- Targets
.PHONY: docker-build
docker-build:
	docker build -t $(DOCKER_IMAGE_TAG) -f Dockerfile .


.PHONY: docker-run
docker-run:
	docker run -it --rm $(DOCKER_IMAGE_TAG)


.PHONY: format
format:
	uvx ruff format $(SRC) $(TESTS)


.PHONY: lint
lint:
	uvx ruff format --check $(SRC) $(TESTS)
	uvx ruff check $(SRC) $(TESTS)
	uvx mypy $(SRC) $(TESTS)


.PHONY: run
run:
	uv run python -m $(PROJECT_NAME)


.PHONY: setup
setup:
	uv sync


.PHONY: test
test:
	uvx pytest ${TESTS}
