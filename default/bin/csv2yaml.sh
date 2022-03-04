#!/usr/bin/env bash

csv_file="${1}"

dasel select -f ${csv_file} -w json . | jq -s . | yq -P
