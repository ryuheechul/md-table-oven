#!/usr/bin/env bash

yaml_file="${1}"

dasel select -f ${yaml_file} -w csv
