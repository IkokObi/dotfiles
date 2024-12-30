#!/bin/sh -eux

env=$1
echo "[info] Create virtual environment: ${env}"

mkdir -p envs
cd envs
python -m venv ${env}
cd ${env}
touch requirements.txt
source bin/activate
pip install --upgrade pip

echo "[info] Add packages to requirements.txt and install them by 'pip install -r requirements.txt'."
