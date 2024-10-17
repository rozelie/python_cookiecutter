FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml ./
COPY README.md ./
COPY ./new_project ./new_project

RUN python -m pip install .

CMD ["python", "-m", "new_project"]