#!/bin/bash

BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
PROJECT_DIR="$(dirname "$BIN_DIR")"
pushd $PROJECT_DIR
rm -rf ecodatum-common.xcodeproj
swift package generate-xcodeproj
open ecodatum-common.xcodeproj
popd