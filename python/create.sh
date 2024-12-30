#!/bin/sh -eu

env=$1

ENV_DIR="${PWD}/envs/${env}"
cd "${PWD}/envs"

python -m venv ${env}
source ${ENV_DIR}/bin/activate
pip install --upgrade pip
touch ${ENV_DIR}/requirements.txt

cd ${ENV_DIR}
echo "インストールするパッケージを requirements.txt に記載して、パッケージをインストールしてください。"
