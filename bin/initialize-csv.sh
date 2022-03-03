#!/usr/bin/env bash

script_dir="$(dirname "$0")"

to_run_sh="initialize-csv.sh"

yours="${script_dir}/../yours/bin/${to_run_sh}"
example="${script_dir}/../example/bin/${to_run_sh}"

test -f "${yours}" && ${yours} && exit 0

"${example}"
