#!/bin/sh

BASE=`dirname $0`/..
. "$BASE/build/env.sh"

set -e

cd $BASE/freebsd-src
make installworld installkernel
make distrib-dirs
make distribution
mkdir -p $DESTDIR/boot/efi/efi/boot/
cp $DESTDIR/boot/loader.efi $DESTDIR/boot/efi/EFI/BOOT/bootriscv64.efi
if [ "$FDT_DTB_FILE" ]; then
	cp `echo "$FDT_DTB_FILE" | sed 's/\.dts$/\.dtb/'` $DESTDIR/boot/dtb/
fi

