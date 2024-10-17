# Python Cookiecutter
My personal Python project cookiecutter template tailored to my own preferences.

# Features
- Python 3.12
- uv
- feature-rich Makefile
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
make setup
make test
```

# Resources
- [The Basics of Python Packaging in Early 2023](https://drivendata.co/blog/python-packaging-2023)
- [Cookiecutter Docs](https://cookiecutter.readthedocs.io/en/1.7.2/index.html)

# Todo
- Add Dockerfile.dev functionality
- Add logging.ini or similar
- Use uv in Dockerfile
- Add optional functionality:
  - SQLAlchemy, Postgres integration
  - docker compose file
  - FastAPI, domain-based
  - Alembic
    - Add target to create a new alembic revision (if using alembic)
