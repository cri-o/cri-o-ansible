#!/bin/bash

if [ -z "$1" ]; then
	echo "provide host IP or hostname"
	exit 1
fi

sed -e "s/%HOST%/$1/g" hosts.template > hosts

ansible-playbook -i hosts centos.yml
