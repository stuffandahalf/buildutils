#!/bin/sh

BASE=`dirname $0`/..
. "$BASE/build/env.sh"

cd $BASE/freebsd-src
if [ "$FDT_DTS_FILE" ]; then
	make builddtb
fi
make buildworld buildkernel -j`sysctl -n hw.ncpu`

