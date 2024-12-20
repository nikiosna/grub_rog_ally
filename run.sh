#!/bin/bash
rm build/allygrub_qemu.img
mkfs.vfat -F 32 -C build/allygrub_qemu.img 204800
mmd -i build/allygrub_qemu.img ::/EFI
mmd -i build/allygrub_qemu.img ::/EFI/BOOT
mcopy -i build/allygrub_qemu.img build/allygrub.efi ::/EFI/BOOT/BOOTX64.EFI
qemu-system-x86_64 -drive format=raw,file=build/allygrub_qemu.img -bios /usr/share/ovmf/OVMF.fd
