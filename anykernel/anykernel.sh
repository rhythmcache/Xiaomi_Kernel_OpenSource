### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Vector Kernel for POCO X4 Pro 5G (veux/peux)
do.devicecheck=1
do.cleanup=1
device.name1=veux
device.name2=peux
'; } # end properties


### AnyKernel install
# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=auto;
NO_BLOCK_DISPLAY=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;
. tools/ak3-custom.sh;

# boot install: flash kernel Image
split_boot;

flash_boot;
## end boot install


# vendor_boot shell variables
BLOCK=vendor_boot;

# reset for vendor_boot patching
reset_ak;

# vendor_boot install: update kernel DTB (base + board) in vendor_boot
split_boot;

flash_boot;
## end vendor_boot install


# dtbo install: erase dtbo partition so bootloader does not double-apply overlay on merged DTB
erase_dtbo;
## end of dtbo install
