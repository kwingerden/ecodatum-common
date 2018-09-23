#!/bin/bash

BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
PROJECT_DIR="$(dirname "$BIN_DIR")"
pushd $PROJECT_DIR
docker build -f Dockerfile.test -t ecodatum-common-test .
docker run -it --rm ecodatum-common-test
popd