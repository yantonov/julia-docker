#!/usr/bin/env bash
set -eu

export SRC="$(pwd)"

cd "$(dirname "$0")/docker"

COMMAND="${1:-run}"

make "$COMMAND"
