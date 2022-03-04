#!/usr/bin/env bash

md_file="${1}"

# requires `yarn global add parse-markdown-table-cli`
yq 'with(.[].0repo; . |= sub("\[(.*)].*\)","$1"))' out/data.yaml \
	| parse-markdown-table
