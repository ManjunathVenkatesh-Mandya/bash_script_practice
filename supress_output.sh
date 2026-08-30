#!/bin/bash


if sudo apt update &> /dev/null; then
	echo "APT updated successfully"


	echo "Installing Git"


	if sudo apt install -y git &> /dev/null; then
		echo "Git installed successfully"

	else
		echo "installation failed"
	
	fi

else
	echo "APT update failed"

fi 
