#Create a Bash script that reads a configuration file and installs the required packages listed in it using a package manager ->Script should able to identify the current linux type and use the appropriate pkg manager - e.g., apt or yum.

#!/bin/bash


file="$1"


#to find pkg manager


if which "apt" &>/dev/null ; then 
	package_manager="apt"
elif which "yum" &>/dev/null ; then
	package_manager="yum"
else
	echo "Package manager doesn't supported"
exit 1
fi

echo "package manager: $package_manager"



#to update based on package manager


if [[ "$package_manager" = "apt" ]]; then
	sudo apt update
else
	sudo yum update -y
fi



#to install packages in file


while read -r pkg ; do
	if [[ -n "$pkg" ]] ; then
		sudo "$package_manager" install -y "$pkg"
	fi
done<"$file"
