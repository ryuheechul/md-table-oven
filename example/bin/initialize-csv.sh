#!/usr/bin/env bash

repo_top_level="$(git rev-parse --show-toplevel)"
example_list="${repo_top_level}/example/list-to-start-with"

echo "0repo,1category,2desc"
cat "${example_list}" | sed 's/$/,from github,/g'
