.PHONY: compile-requirements sync-requirements
.PHONY: run
.PHONY: clean

PYTHON := venv/bin/python
PIP := venv/bin/pip
PIP_COMPILE := venv/bin/pip-compile
PIP_SYNC := venv/bin/pip-sync
JUPYTER := venv/bin/jupyter

venv:
	python3.11 -m venv venv
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements/requirements.txt
	$(PIP) install -r requirements/requirements-dev.txt

compile-requirements: venv
	$(PIP_COMPILE) requirements/requirements.in \
		--output-file requirements/requirements.txt \
		--resolver backtracking

sync-requirements: venv
	$(PIP_SYNC) requirements/requirements.txt requirements/requirements-dev.txt

run: venv
	$(JUPYTER) notebook

clean:
	rm -rf venv || true