#!/bin/bash

dir="${1:-.}"

find "$dir" -type f -exec du -h {} + | sort -rh | head -n 1



# This script finds and prints the largest file in a specified directory,
# including all its subdirectories.

# The variable dir="${1:-.}" assigns the directory to scan.
# It takes the first argument passed to the script ($1).
# If no argument is provided, it defaults to the current directory (.).

# The find "$dir" -type f command searches recursively inside the specified directory
# and selects only files, excluding directories.

# The -exec du -h {} + part executes the du (disk usage) command on all found files
# and shows their sizes in human-readable format, such as KB, MB, or GB.

# The output is then passed through the pipe (|) to the sort -rh command,
# which sorts the files by size in reverse order, from largest to smallest,
# using human-readable size comparison.

# Finally, the head -n 1 command prints only the first line of the sorted output,
# which represents the largest file.

# In summary, this script recursively scans a directory, determines file sizes,
# sorts them, and displays the largest file.
