#Write a Bash script that compresses all files in a directory (excluding subdirectories) into a single tar.gz file.


#!/bin/bash

directory="$1"
compressed_files="backup.tar.gz"

find "$directory" -type f -print0 | tar --null -T - -czf "$compressed_files"
