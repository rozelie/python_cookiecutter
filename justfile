set shell := ["sh", "-c"]

root_dir := justfile_directory()
venv_bin := root_dir / "venv" / "bin"
python := venv_bin / "python"
test_project_name := "new_project"

# list available recipes
default:
    @just --list

# evaluate and print all just variables
eval:
    @just --evaluate

setup:
    @echo {{root_dir}}
    python3 -m venv venv
    {{python}} -m pip install cookiecutter --upgrade

recreate_test:
	rm -rf {{test_project_name}}
	{{venv_bin}}/cookiecutter . --no-input

test: recreate_test
	cd {{test_project_name}}; \
		just setup; \
		just format; \
		just lint; \
		just test; \
		just drun; \
		just run;
	rm -rf {{test_project_name}}
	@echo "No issues in creating the new project"
