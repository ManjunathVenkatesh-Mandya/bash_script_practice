#!/bin/bash
backup_source="$1"
backup_destination="$2"


if [[ -f $backup_source ]] && [[ -f $backup_destination ]]; then
	echo "does not support file backup"
fi

if [[ -d $backup_source ]] && [[ -d $backup_destination ]]; then
cp -r $backup_source $backup_destination
else
	echo "either source or destination directory does not exists"

fi
