Install Debian
==============

.. post:: Sep 24, 2022
   :tags: linux,debian


Download the complete iso from: https://cdimage.debian.org/cdimage/weekly-builds/amd64/iso-dvd/

For setting up disk encryption, see :ref:`Disk Encryption<disk-encryption>`.

Mount other devices from the host

..
   Why use rslave? https://www.kernel.org/doc/Documentation/filesystems/sharedsubtree.txt

::

   PARTITION=/dev/mapper/crypt # change it according to the setup
   sudo mount ${PARTITION} /mnt
   for i in proc sys dev run efi;
     do sudo mount --make-rslave --rbind /$i /mnt/$i;
   done

Install deboostrap from `http://ftp.debian.org/debian/pool/main/d/debootstrap/debootstrap_1.0.127_all.deb` (pick relevant version)

::

   mkdir /tmp/debian-extracted
   cd /tmp/debian-extracted
   wget http://ftp.debian.org/debian/pool/main/d/debootstrap/debootstrap_1.0.127_all.deb
   ar -x debootstrap_1.0.127_all.deb
   PATH_TO_DS=`pwd`
   cd /
   zcat ${PATH_TO_DS}/data.tar.gz | sudo tar xv

Run debootsrap

::

   ARCH=amd64
   sudo /usr/sbin/debootstrap --arch=${ARCH} bullseye /mnt http://ftp.us.debian.org/debian


Chroot

::

   LANG=C.UTF-8 sudo chroot /mnt /bin/bash
   export TERM=xterm-color

Setup vim as default editor

::

   apt install vim
   update-alternatives --config editor


Fstab

Get the UUID for the decrypted disk

::

   lsblk -f /dev/mapper/crypt

Create the fstab file `/etc/fstab`

::

   # /etc/fstab: static file system information.
   #
   # file system       mount point   type    options                  dump pass
   UUID=62cf6415-e1de-4f3f-bc80-642bc21a3a90   /          ext4        rw,relatime                                                                                           0 1
   UUID=4d6fa38b-e3ce-4158-9a54-e6ea1f85dce5	 none      	swap      	defaults  	                                                                                          0 0
   UUID=62F9-0A97      	                       /efi      	vfat      	rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,utf8,errors=remount-ro	0 2

For setting up crypttab, see :ref:`Disk Encryption<disk-encryption>`.

Sources

::

   apt install lsb-release
   CODENAME=$(lsb_release --codename --short)
   cat > /etc/apt/sources.list << HEREDOC
   deb https://deb.debian.org/debian/ $CODENAME main contrib non-free
   deb-src https://deb.debian.org/debian/ $CODENAME main contrib non-free

   deb https://security.debian.org/debian-security $CODENAME-security main contrib non-free
   deb-src https://security.debian.org/debian-security $CODENAME-security main contrib non-free

   deb https://deb.debian.org/debian/ $CODENAME-updates main contrib non-free
   deb-src https://deb.debian.org/debian/ $CODENAME-updates main contrib non-free
   HEREDOC

Update

::

   apt update

Timezone

::

   su - # as binaries in /sbin are not part of PATH https://wiki.debian.org/NewInBuster
   dpkg-reconfigure tzdata

::

   Current default time zone: 'Europe/Copenhagen'
   Local time is now:      Wed Oct  5 18:49:04 CEST 2022.
   Universal Time is now:  Wed Oct  5 16:49:04 UTC 2022.



::

   apt install locales
   dpkg-reconfigure locales # Select `en_US.UTF-8` and make `C.UTF-8` as default

Find kernel images

::

   apt search linux-image-5.10.0-18-amd64

Install kernel

::

   apt install linux-image-5.10.0-18-amd64


Install firmware


::

   apt install firmware-linux

Network

::

   apt install network-manager

Root password

::

   passwd

Additional packages

::

   tasksel install standard
   apt clean
   apt install iwlwifi



Create user

::

   su -l
   adduser USERNAME


Install grub2

::

   apt install grub2


If disk is encrypted, follow the guide on :ref:`Disk Encryption<disk-encryption>`.


Update the EFI boot director:

::

   apt install grub-efi
   grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=DEBIAN

Verify

::

   ls /efi/EFI/
   Boot  DEBIAN  GRUB  Microsoft

Exit and unmount

::

   sudo umount -R /mnt/

Reference
---------

- https://www.debian.org/releases/stable/i386/apds03.en.html
- https://gist.github.com/varqox/42e213b6b2dde2b636ef
