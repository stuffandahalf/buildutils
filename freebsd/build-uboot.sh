#!/bin/sh

BASE=`dirname $0`/..
. "$BASE/build/env.sh"

set -e

export CROSS_COMPILE='riscv64-none-elf-'

cd opensbi
gmake PLATFORM=generic FW_PIC=y
cd ..

cd u-boot
#gmake nezha_defconfig
gmake dongshan_nezha_stu_defconfig
gmake OPENSBI=../opensbi/build/platform/generic/firmware/fw_dynamic.bin
cd ..

