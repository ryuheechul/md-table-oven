#!/usr/bin/env bash

yaml_file="${1}"

# requires `yarn global add markdown-table-cli`
yq 'with(.[].0repo; .= "[" + . + "](https://github.com/" + . + ")" )' "${yaml_file}" -o json | md-table
