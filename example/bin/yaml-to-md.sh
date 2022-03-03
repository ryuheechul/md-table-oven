#!/usr/bin/env bash

yaml_file="${1}"

# requires `yarn global add markdown-table-cli`
dasel select -f ${yaml_file} -w json | md-table
