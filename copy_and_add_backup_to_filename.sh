#Write a Bash script that searches for all files with a specific extension (e.g., .txt)- Copy then to a separate folder call backup with the file and directory name appended with backup

#!/bin/bash


directory="$1"
extension="$2"
destination="$3"

mkdir -p "$destination"

find "$directory" -type f -name "*$extension" | while read -r file ; do
filename=$(basename "$file")
name="${filename%$extension}"


cp -r "$file" "$destination/${name}backup${extension}"

done

echo "files copied to backup directory"


