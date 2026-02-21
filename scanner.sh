#!/bin/bash

du -h * .* 2>dev/null | sort -rh | head -n 1


# du means disk usage.
#It shows the size of files and directories.
# -h means human-readable format.

#The * means all visible files and directories in the current directory.
#The .* means all hidden files and directories.

#2>/dev/null This redirects error messages.

# head Shows only the first lines.
# -n 1 Shows only one line
