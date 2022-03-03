#!/usr/bin/env bash

yaml_file="${1}"

# requires `yarn global add parse-markdown-table-cli`
cat ${yaml_file} | parse-markdown-table
