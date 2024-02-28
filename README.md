# Python Cookiecutter
My personal Python project cookiecutter template tailored to my own preferences.

# Features
- Python 3.11
- feature-rich scripts dir
  - `scripts/setup`: setup the local environment
  - `scripts/run`: run the app locally
  - `scripts/format`: format source code
  - `scripts/lint`: lint source code
  - `scripts/test`: run tests
  - `scripts/docker_build`: build a docker image for the app
  - `scripts/docker_run`: run a docker container for the app
  - `scripts/publish_to_pypi`: publish the package to pypi.org
- `pyproject.toml` based
- Dockerized
- Github Action to run CI
- MIT license
- Python-specific `.gitignore`

# Usage
```bash
pip install cookiecutter
cookiecutter https://github.com/rozelie/python_cookiecutter
```

# Local Testing
```bash
./scripts/setup
./scripts/test
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
