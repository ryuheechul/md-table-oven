#!/usr/bin/env bash

file="${1}"

filename=$(basename -- "$file")
extension="${filename##*.}"

# default to cat for compatibility
view="cat"

# default to bat if bat exists
command -v bat > /dev/null && view="bat"

# cat and use glow for markdown
test "${extension}" == "md" \
	&& command -v glow > /dev/null \
	&& ${view} "${file}" \
	&& view="glow -s light"

# print using decided binary
${view} "${file}"
