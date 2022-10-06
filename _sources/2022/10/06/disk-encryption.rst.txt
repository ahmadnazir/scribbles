.. _disk-encryption:

Disk encryption
===============

.. post:: 10/06/2022
   :tags: linux,grub


Create an encrypted partition
-----------------------------

Create a partition using `gparted`.


::

   sudo cryptsetup luksFormat --type=luks1 /dev/nvme0n1p7

::

   WARNING: Device /dev/nvme0n1p7 already contains a 'ext4' superblock signature.

   WARNING!
   ========
   This will overwrite data on /dev/nvme0n1p7 irrevocably.

   Are you sure? (Type 'yes' in capital letters): YES
   Enter passphrase for /dev/nvme0n1p7: 
   Verify passphrase: 

Open

::

   sudo cryptsetup open /dev/nvme0n1p7 crypt
   # sudo cryptsetup close crypt


Format the drive as ext4 using `gparted`.

Mount

::

   sudo mount /dev/mapper/crypt /mnt


Set Crypttab
------------


Use the UUID of the encrypted disk (and NOT the decrypted one). Modify `/etc/crypttab` as follows:

::

   crypt UUID=de81b7a0-ef6e-4aba-b45e-0a21a08a09c0    none                    luks


Update the boot loader (UEFI setup)
-----------------------------------

Install `grub2`

::

   apt install grub2

::

   echo "GRUB_ENABLE_CRYPTODISK=y" >> /etc/default/grub
   update-grub


::

   Generating grub configuration file ...
   Found linux image: /boot/vmlinuz-5.10.0-18-amd64
   Found initrd image: /boot/initrd.img-5.10.0-18-amd64
   Warning: os-prober will be executed to detect other bootable partitions.
   Its output will be used to detect bootable binaries on them and create new boot entries.
   Found Windows Boot Manager on /dev/nvme0n1p1@/EFI/Microsoft/Boot/bootmgfw.efi
   Found Arch Linux on /dev/nvme0n1p4
   Adding boot menu entry for UEFI Firmware Settings ...
   done


Crypt setup for initramfs?

::

   apt install cryptsetup-initramfs



Update the init ramdisk (`mkinitcpio` for arch, `update-initramfs` for debian)

::

   update-initramfs -u -k all # for Debian


Update the EFI boot directory:

::

   apt install grub-efi
   BOOTLOADER_ID=? # customize accordingly
   grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=${BOOTLOADER_ID}
