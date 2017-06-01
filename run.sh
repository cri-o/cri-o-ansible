#!/bin/bash

os=$1
address=$2

case $os in
	ubuntu)
		play="ubuntu.yml"
		;;
	centos)
		play="centos.yml"
		;;
	*)
		echo "$os is not yet supported"
		exit 1
esac

if [ -z "$address" ]; then
	echo "provide host IP or hostname"
	exit 1
fi

sed -e "s/%HOST%/$1/g" hosts.template > hosts

ansible-playbook -i hosts $play
