SOC_FAMILY = "rcar-gen2:r8a7794"
require conf/machine/include/soc-family.inc
require conf/machine/include/tune-cortexa7.inc

PREFERRED_PROVIDER_virtual/kernel ?= "linux-renesas"
PREFERRED_VERSION_linux-renesas ?= "3.10%"
                                                                                                                                                                                              
KERNEL_IMAGETYPE = "uImage"
KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

EXTRA_IMAGEDEPENDS += "u-boot"
PREFERRED_PROVIDER_u-boot ?= "u-boot"
PREFERRED_VERSION_u-boot ?= "v2013.01%"
UBOOT_MACHINE = "alt_config"
UBOOT_ENTRYPOINT = "0x40008000"
UBOOT_LOADADDRESS = "0x40007fc0"

MACHINE_FEATURES = "apm usbgadget usbhost vfat alsa ethernet"