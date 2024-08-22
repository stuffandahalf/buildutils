#!/bin/sh

BASE=`dirname $0`/..
. "$BASE/build/env.sh"

set -e

gpart destroy -F $DEV || true
gpart create -s gpt $DEV
gpart add -t bios-boot -b 128k -s 2M $DEV
gpart add -t efi -s "$EFISZ" $DEV 
gpart add -t freebsd-swap -s $SWAPSZ $DEV
gpart add -t freebsd-ufs $DEV

dd if=u-boot/u-boot-sunxi-with-spl.bin of=/dev/${DEV}p1 bs=512 conv=sync
newfs_msdos /dev/${DEV}p2
newfs /dev/${DEV}p4

