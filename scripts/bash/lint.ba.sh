#!/usr/bin/env bash

set -e
echo "bash validating *.(.ba).sh files..."

FOLDER='./scripts'
find ${FOLDER} -name "*.sh"
find ${FOLDER} -name "*.sh" | bash -n
echo $?
set +e
