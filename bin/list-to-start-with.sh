#!/usr/bin/env bash

script_dir="$(dirname "$0")"

list="list-to-start-with"

yours="${script_dir}/../yours/bin/${list}"
example="${script_dir}/../example/bin/${list}"

test -f "${yours}" && cat ${yours} && exit 0

cat "${example}"
