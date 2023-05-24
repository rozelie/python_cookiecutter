# Python Project Cookiecutter
My personal Python project cookiecutter template tailored to my own preferences.

# Features
- Python 3.11
- `Makefile`
    - `make setup`: install the module and dev dependencies
    - `make run`: execute the module
    - `make test`: run `pytest` on the `tests` dir
    - `make format`: run `black` and `isort` on source and `tests` dirs
    - `make lint`: run `ruff` and `mypy` on source files
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