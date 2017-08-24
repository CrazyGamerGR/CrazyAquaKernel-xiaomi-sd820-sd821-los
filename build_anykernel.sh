#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm64
export CROSS_COMPILE=/home/francesco/aarch64-linux-android-4.9/bin/aarch64-linux-android-
##########################################
mkdir outputgemini
mkdir outputcapricorn
mkdir outputnatrium
mkdir outputlithium
mkdir outputscorpio
##########################################
make -C $(pwd) O=outputgemini gemini_defconfig
make -j64 -C $(pwd) O=outputgemini

make -C $(pwd) O=outputcapricorn capricorn_defconfig
make -j64 -C $(pwd) O=outputcapricorn

make -C $(pwd) O=outputnatrium natrium_defconfig
make -j64 -C $(pwd) O=outputnatrium

make -C $(pwd) O=outputlithium lithium_defconfig
make -j64 -C $(pwd) O=outputlithium

make -C $(pwd) O=outputscorpio scorpio_defconfig
make -j64 -C $(pwd) O=outputscorpio
##########################################
cp outputgemini/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputcapricorn/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputnatrium/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputlithium/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputscorpio/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
