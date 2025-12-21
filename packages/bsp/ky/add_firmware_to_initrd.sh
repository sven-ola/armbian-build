#!/bin/sh -e

PREREQS=""

prereqs() { echo "${PREREQS}"; }

case "$1" in
    prereqs)
    prereqs
    exit 0
    ;;
esac

. /usr/share/initramfs-tools/hook-functions

mkdir -p "${DESTDIR}/usr/lib/firmware"
cp -p /usr/lib/firmware/esos.elf "${DESTDIR}/usr/lib/firmware/"
