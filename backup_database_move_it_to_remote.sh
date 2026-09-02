#Write a Bash script that automates the backup process of a database->The script should dump the database, compress the backup file, and upload it to a remote storage location.

#!/bin/bash

DB_NAME="$1"
BACKUP_DIR="/home/ubuntu/db_backup"
REMOTE_BACKUP_DIR="/home/ubuntu/remote_backups"
REMOTE_USER="ubuntu"
REMOTE_HOST_IP="192.168.1.100"
BACKUP_FILE="$BACKUP_DIR/$DB_NAME_$(date "+%Y-%m-%d_%H-%M-%S").sql"
COMPRESSED_FILE="${BACKUP_FILE}.gz"

mysqldumb "$DB_NAME" > "$BACKUP_FILE"

gzip "$BACKUP_FILE"

scp "$COMPRESSED_FILE" "${REMOTE_USER}@${REMOTE_HOST_IP}":"${REMOTE_BACKUP_DIR}"

echo "remote backup is compleated successfully"
