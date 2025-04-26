#!/bin/bash -x

python3 -m venv ./venv
source ./venv/bin/activate
pip install ansible requests urllib3