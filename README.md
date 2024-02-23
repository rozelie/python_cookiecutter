# Python Project Cookiecutter
My personal Python project cookiecutter template tailored to my own preferences.

# Features
- Python 3.11
- robust scripts dir
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
