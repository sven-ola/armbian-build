#!/bin/sh

d=${0%/*}
if [ ! -e ${d}/clean.sh ];then
	echo "Nope." >&2
	exit 1
fi

find ${d}/userpatches/ -type d -exec rmdir {} \;
rm -f ${d}/Dockerfile
rm -f ${d}/.dockerignore
rm -f ${d}/userpatches/config-example.conf
rm -rf ${d}/.tmp ${d}/output
sudo rm -rf ${d}/cache
