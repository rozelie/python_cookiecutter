FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml ./
COPY README.md ./
COPY ./{{cookiecutter.project_slug}} ./{{cookiecutter.project_slug}}

RUN python -m pip install .

CMD ["python", "-m", "{{cookiecutter.project_slug}}"]