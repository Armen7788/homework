#!/bin/bash

dir="${1:-.}"

find "$dir" -type f -exec du -h {} + | sort -rh | head -n 1

