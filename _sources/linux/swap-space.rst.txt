Swap space
==========

:OS: Ubuntu 18.04

Swap space can either use a file or a partition.

I have a swap file `/swapfile` instead of a partition:

.. code::

   sudo swapon --show
   NAME      TYPE SIZE USED PRIO
   /swapfile file   2G   0B   -2

and also seen by checking the `fstab` file:

.. code::

   cat /etc/fstab

   # /etc/fstab: static file system information.
   #
   # Use 'blkid' to print the universally unique identifier for a
   # device; this may be used with UUID= as a more robust way to name devices
   # that works even if disks are added and removed. See fstab(5).
   #
   # <file system> <mount point>   <type>  <options>       <dump>  <pass>
   # / was on /dev/nvme0n1p2 during installation
   UUID=5c056ca5-14ee-4c9a-b3c7-87f0c6998d8f /               ext4    errors=remount-ro 0       1
   # /boot/efi was on /dev/nvme0n1p1 during installation
   UUID=6FE3-12FA  /boot/efi       vfat    umask=0077      0       1
   /swapfile                                 none            swap    sw              0       0


I would like to use a separate partition for swap which I can use for hibernation as well. I can use the file as well, but then it seems more complicated to get hibernation working that way.

Create a swap partition?
------------------------

This can be done with gparted:

.. code::

   sudo apt install gparted


However, I can see that everything is allocated to my ext4 partition and I can't resize it to make room for a swap partition.

Enable swap
-----------

Find the swap partition:

.. code::

   cat /etc/fstab | grep swap -B1

which would return something like:

.. code::

   # /dev/nvme0n1p5
   UUID=1adfeffe-fb1f-48dc-8a1e-c491b8399b6d	none      	swap      	defaults  	0 0

Use the device to enable swap:

.. code::

   swapon /dev/nvme0n1p5

Increase the swap file size
---------------------------

.. code::

 cat /etc/fstab # make sure that swap file is at /swapfile
 sudo swapoff -a
 sudo dd if=/dev/zero of=/swapfile bs=1G count=20
 sudo mkswap /swapfile
 sudo swapon /swapfile
 grep SwapTotal /proc/meminfo


References
----------

https://bogdancornianu.com/change-swap-size-in-ubuntu/
