#!/usr/bin/env bash

set -e

_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

myArray=("10080" "3000" "3100" "80" "8080" "8086" "8888" "9090" "9093" "9096" "9100" "9115" "9130")

for port in "${myArray[@]}"; do
    set -x
    "${_DIR}"/open-browser.py http://192.168.1.98:${port}
    set +x
done
