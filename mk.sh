#!/bin/sh

for i in userpatches/config-*.conf;do
	i=${i##*/}
	i=${i%.*}
	case ${i#config-} in example);;*)
		./compile.sh CPUTHREADS=$(nproc) ${i#config-}
	;;esac
done
