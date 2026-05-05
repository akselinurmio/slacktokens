PYTHON := python3.11
VENV   := .venv-build
PIP    := $(VENV)/bin/pip
PYINST := $(VENV)/bin/pyinstaller

.PHONY: build clean

build: $(VENV)
	$(PYINST) --onefile --name slacktokens cli.py
	@echo "Binary at dist/slacktokens"

$(VENV):
	$(PYTHON) -m venv $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install pyinstaller .

clean:
	rm -rf $(VENV) build dist slacktokens.spec
