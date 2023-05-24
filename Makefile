TEST_PROJECT_NAME := "new_project"

test:
	rm -rf ${TEST_PROJECT_NAME}
	pip install -U cookiecutter --upgrade
	cookiecutter . --no-input
	cd ${TEST_PROJECT_NAME}; \
		make setup; \
		make format; \
		make lint; \
		make run;
	rm -rf ${TEST_PROJECT_NAME}
	echo "No issues in creating the new project"
