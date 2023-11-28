# Python Project Cookiecutter
My personal Python project cookiecutter template tailored to my own preferences.

# Features
- Python 3.11
- `Makefile` targets:
```
help: Show this help.
setup: Install the package and dev dependencies into a virtualenv.
run:  Run the package.
test:  Run pytest on the tests dir.
format: Run black and isort on package and tests dirs.
lint:  Run ruff and mypy on package files.
docker_build: Build a Docker image for the package.
docker_run:  Run the Docker image for the package.
publish_to_testpypi:  Publish the package to test.pypi.org.
publish_to_pypi:  Publish the package to pypi.org.
```
- `pyproject.toml`
  - up-to-date, pinned dev dependencies
  - linting and formatter tool configs
- MIT license
- Python-specific `.gitignore`

# Usage
```bash
pip install -U cookiecutter
cookiecutter https://github.com/rozelie/Python-Project-Cookiecutter
make setup
```

# Local Testing
```bash
make test
```

# Resources
- [The Basics of Python Packaging in Early 2023](https://drivendata.co/blog/python-packaging-2023)
- [Cookiecutter Docs](https://cookiecutter.readthedocs.io/en/1.7.2/index.html)

# Todo
- Add Dockerfile.dev functionality
- Add logging.ini or similar
- Add optional functionality:
  - SQLAlchemy, Postgres integration
  - docker compose file
  - FastAPI, domain-based
  - Alembic
    - Add target to create a new alembic revision (if using alembic)
