#!/usr/bin/env bash
set -eu

docker run -it --rm -v "$PWD":/usr/myapp -w /usr/myapp julia "$@"
