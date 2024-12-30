#!/bin/sh -eux

if [ -z "$1" ]; then
    echo "[error] Please specify the environment name to delete."
    echo "[error] Usage: . ./delete.sh <environment-name>"
    return 1
fi

env=$1
echo "[info] Delete virtual environment: ${env}"

rm -rf envs/${env}
echo "[info] Successfully deleted ${env}!"
