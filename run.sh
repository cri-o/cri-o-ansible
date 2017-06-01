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

if [ "$os" == "ubuntu" ]; then
	sed -e "s/%HOST%/$address ansible_python_interpreter='python3'/g" hosts.template > hosts
else
	sed -e "s/%HOST%/$address/g" hosts.template > hosts
fi

ansible-playbook -i hosts $play
