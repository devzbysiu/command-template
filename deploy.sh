#!/usr/bin/env bash

# This script is called by `cargo make`. Cargo make, first sets environment variables based on
# selected profile.
set -o errexit
set -o nounset
set -o pipefail
set -o xtrace

readonly TARGET_HOST=pi@raspberrypi
readonly TARGET_ARCH=armv7-unknown-linux-gnueabihf
readonly BINARY_PATH=./target/${TARGET_ARCH}/debug/{{project-name}}
readonly TARGET_BINARY_PATH=/home/pi/cmdhub/commands/{{project-name}}

cd ../rutils
cargo clean
cd -
cargo clean
docker buildx build --build-context rutils=../rutils . -t armv7-unknown-linux-gnueabihf:custom

cross build --target=${TARGET_ARCH}
rsync ${BINARY_PATH} ${TARGET_HOST}:${TARGET_BINARY_PATH}
