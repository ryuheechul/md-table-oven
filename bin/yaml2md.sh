#!/usr/bin/env bash

script_dir="$(dirname "$0")"

to_run_sh="yaml2md.sh"

yours="${script_dir}/../yours/bin/${to_run_sh}"
default="${script_dir}/../default/bin/${to_run_sh}"

test -f "${yours}" && ${yours} "$1" && exit 0

"${default}" "$1"
