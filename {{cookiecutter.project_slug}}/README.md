# {{ cookiecutter.project_slug }}

{{ cookiecutter.project_description }}

# Usage
**TODO**

# Contributing

## `just`
`just` is a command runner to be used for local development and CI/CD.

See [just documentation](https://just.systems/man/en/chapter_1.html) for install and usage info.

```
> just
Available recipes:
    default             # list available recipes
    docker_build        # Build a Docker image for the package.
    dbuild              # alias for `docker_build`
    docker_run          # Run a Docker container for the package.
    drun                # alias for `docker_run`
    eval                # evaluate and print all just variables
    format              # Run black and isort on package and tests dirs.
    lint                # Lint formatting, run ruff and mypy on package files.
    publish_to_pypi     # Publish the package to pypi.org.
    publish_to_testpypi # Publish the package to test.pypi.org.
    run                 # Run the package locally.
    setup               # Install the package and dev dependencies into a virtualenv.
    test                # Run pytest on the tests dir.
```

# Credits
- Project skeleton generated via `cookiecutter https://github.com/rozelie/Python-Project-Cookiecutter`