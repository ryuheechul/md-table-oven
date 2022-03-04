#!/usr/bin/env bash

md_file="${1}"

# requires `yarn global add parse-markdown-table-cli`
cat ${md_file} | parse-markdown-table
