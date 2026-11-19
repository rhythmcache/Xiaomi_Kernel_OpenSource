### AnyKernel custom methods
## Clean methods for Vector Kernel (no install-time patching)

erase_dtbo() {
  dd if=/dev/zero of=/dev/block/by-name/dtbo$SLOT conv=fsync count=1 bs=$(blockdev --getsize64 /dev/block/by-name/dtbo$SLOT);
}
