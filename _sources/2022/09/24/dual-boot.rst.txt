Dual boot (UEFI)
================

.. post:: Sep 24, 2022
   :tags: linux,windows,grub

`update-grub` automatically takes care of this by probing the `EFI` directory.

It adds the following in `/boot/grub/grub.cfg` which makes it possible to load windows using Grub:

::

   ### BEGIN /etc/grub.d/30_os-prober ###
   menuentry 'Windows Boot Manager (on /dev/nvme0n1p1)' --class windows --class os $menuentry_id_option 'osprober-efi-62F9-0A97' {
   	insmod part_gpt
   	insmod fat
   	search --no-floppy --fs-uuid --set=root 62F9-0A97
   	chainloader /EFI/Microsoft/Boot/bootmgfw.efi
   }
   ### END /etc/grub.d/30_os-prober ###


Needless to say, EFI partition needs to exist - this can be seen in the `/etc/fstab`

::

   cat /etc/fstab | grep -i efi

::

   UUID=62F9-0A97      	/efi      	vfat      	rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,utf8,errors=remount-ro	0 2

Reference
---------

Arch boot process: https://wiki.archlinux.org/title/Arch_boot_process
