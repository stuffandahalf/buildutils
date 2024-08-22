#!/bin/sh

BASE=`dirname $0`/..
. "$BASE/build/env.sh"

umount $DESTDIR/boot/efi
umount $DESTDIR

