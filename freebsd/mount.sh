#!/bin/sh

BASE=`dirname $0`/..
. "$BASE/build/env.sh"

set -e

mount /dev/${DEV}p4 $DESTDIR
mkdir -p $DESTDIR/boot/efi
mount -t msdosfs /dev/${DEV}p2 $DESTDIR/boot/efi

