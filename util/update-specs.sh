#!/usr/bin/env bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

lisp download-specs nuklear https://github.com/borodust/bodge-nuklear \
     "$script_dir/../src/spec/" $1
