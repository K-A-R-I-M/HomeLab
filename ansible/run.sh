#!/bin/bash

echo "[DEBUG] check setup status"
if [ ! -d "./venv" ]; then
    echo "[DEBUG] call setup script"
    ./setup.sh
fi
echo "[DEBUG] activate venv"
source ./venv/bin/activate
echo "[DEBUG] run playbooks"
ansible-playbook -i hosts site.yml -v