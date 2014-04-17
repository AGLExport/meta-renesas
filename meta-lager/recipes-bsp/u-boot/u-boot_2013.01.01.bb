require u-boot.inc

# This is needs to be validated among supported BSP's before we can
# make it default
DEFAULT_PREFERENCE = "-1"

# To build u-boot for your machine, provide the following lines in
# your machine config, replacing the assignments as appropriate for
# your machine.
# UBOOT_MACHINE = "omap3_beagle_config"
# UBOOT_ENTRYPOINT = "0x80008000"
# UBOOT_LOADADDRESS = "0x80008000"

LICENSE = "GPLv2+"
LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"

PV = "v2013.01.01+git${SRCPV}"
PR = "r11"

SRCREV = "3883ee759b085d0d749e85987a0c44f98f10e54d"
SRC_URI = "git://git.denx.de/u-boot-sh.git;branch=renesas/bsp/rcar-gen2-6;protocol=git"

S = "${WORKDIR}/git"

PACKAGE_ARCH = "${MACHINE_ARCH}"