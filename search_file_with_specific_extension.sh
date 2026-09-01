#Write a Bash script that searches for all files with a specific extension (e.g., .txt) in a given directory and its subdirectories - moves them to a separate folder.

#!/bin/bash

directory="$1"
extension="$2"
destination="$3"

mkdir -p "$destination"


find "$directory" -type f -name "*$extension" -exec mv  {} "$destination" \;

echo "all files extension with $extension moved to $destination"
