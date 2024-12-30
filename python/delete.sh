#!/bin/sh -eu

env=$1
rm -rf ${PWD}/envs/${env}
echo "Successfully deleted ${env}!"
