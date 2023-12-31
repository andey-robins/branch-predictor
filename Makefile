# Makefile
# a very simple makefile for installing python dependencies.

# Instructions:
# We recommend you to use virtual environment while working with python and if requires to install extra packages.
# Note: Do not include venv files while making the zip file if you are using venv.

######################################################################################

# this is a sample Makefile code with implementation of virtual environment. 

# Virtual Environment Name
VENV_NAME := venv

# Python Interpreter
# built with 3.12.0b3, PEP linting and some type checking may
# fail with <= 3.11
# PYTHON := python3.12
PYTHON := python3

# Paths
VENV_PATH := $(VENV_NAME)
REQUIREMENTS := requirements.txt

# Target for creating a virtual environment
venv:
	@echo "Creating virtual environment..."
	@$(PYTHON) -m venv $(VENV_NAME)

# Target for installing libraries
install: venv
	@echo "Activating virtual environment..."
	@. $(VENV_PATH)/bin/activate && \
		$(PYTHON) -m pip install -r $(REQUIREMENTS)
	@echo "Libraries installed successfully."

# Target for removing the virtual environment
clean:
	@echo "Removing virtual environment..."
	@rm -rf $(VENV_NAME)
	@echo "Virtual environment removed."
	@echo "Removing zip archive..."
	@rm -rf sim_cache.zip
	@echo "Zip archive removed."

test:
	@echo "Running unittests with pytest..."
	@python3 -m unittest **/tests/*.py

run:
	@echo "Running sim_cache.py with debug0 config..."
	python3 sim_cache.py 16 1024 2 0 0 0 0 ./provided/traces/gcc_trace.txt
	@echo "---\nEnd of execution."

zip:
	rm -rf parsers/__pycache__
	rm -rf simulators/__pycache__
	zip -r project2.zip sim.py parsers/ simulators/ Makefile README.md LICENSE requirements.txt report.pdf
	@echo "Zip archive created as `project2.zip`"

diffs:
	python3 sim.py smith 3 ./provided/traces/gcc_trace.txt > ./out/smith_3_gcc.out
	python3 sim.py smith 1 ./provided/traces/jpeg_trace.txt > ./out/smith_1_jpeg.out
	python3 sim.py smith 4 ./provided/traces/perl_trace.txt > ./out/smith_4_perl.out
	diff -i -w ./provided/validation_runs/val_smith_1.txt ./out/smith_3_gcc.out
	diff -i -w ./provided/validation_runs/val_smith_2.txt ./out/smith_1_jpeg.out
	diff -i -w ./provided/validation_runs/val_smith_3.txt ./out/smith_4_perl.out
	python3 sim.py bimodal 6 ./provided/traces/gcc_trace.txt > ./out/bimodal_6_gcc.out
	python3 sim.py bimodal 12 ./provided/traces/gcc_trace.txt > ./out/bimodal_12_gcc.out
	python3 sim.py bimodal 4 ./provided/traces/jpeg_trace.txt > ./out/bimodal_4_jpeg.out
	diff -i -w ./provided/validation_runs/val_bimodal_1.txt ./out/bimodal_6_gcc.out
	diff -i -w ./provided/validation_runs/val_bimodal_2.txt ./out/bimodal_12_gcc.out
	diff -i -w ./provided/validation_runs/val_bimodal_3.txt ./out/bimodal_4_jpeg.out
	python3 sim.py gshare 9 3 ./provided/traces/gcc_trace.txt > ./out/gshare_9_3_gcc.out
	python3 sim.py gshare 14 8 ./provided/traces/gcc_trace.txt > ./out/gshare_14_8_gcc.out
	python3 sim.py gshare 11 5 ./provided/traces/jpeg_trace.txt > ./out/gshare_11_5_jpeg.out
	diff -i -w ./provided/validation_runs/val_gshare_1.txt ./out/gshare_9_3_gcc.out
	diff -i -w ./provided/validation_runs/val_gshare_2.txt ./out/gshare_14_8_gcc.out
	diff -i -w ./provided/validation_runs/val_gshare_3.txt ./out/gshare_11_5_jpeg.out
	python3 sim.py hybrid 8 14 10 5 ./provided/traces/gcc_trace.txt > ./out/hybrid_8_14_10_5_gcc.out
	diff -i -w ./provided/validation_runs/val_hybrid_1.txt ./out/hybrid_8_14_10_5_gcc.out

.PHONY: venv install clean

######################################################################################