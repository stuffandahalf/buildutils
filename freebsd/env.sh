#export TARGET=arm64
#export TARGET_ARCH=aarch64
export TARGET=riscv
export TARGET_ARCH=riscv64
export MACHINE=$TARGET
#export NO_CLEAN=1
#export FDT_DTB_FILE=sun20i-d1-lichee-rv-dock.dts
export MAKEOBJDIRPREFIX=/home/ganorton/obj
#export KERNCONF=GENERIC
export KERNCONF=DEBUG
export DESTDIR=/mnt
export DEV=md0
export EFISZ=260M
export SWAPSZ=1G

