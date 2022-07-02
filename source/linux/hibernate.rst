Hibernate using a swap partition
================================

.. post:: 10/17/2019
   :tags: linux

:OS: Ubuntu 19.04


*I kept experiencing random issues in 18.04*


Configure GRUB
--------------

Find the swap partition:

.. code::

   cat /etc/fstab | grep swap | awk '{print $1}' 

Find the UUID

.. code::

   sudo blkid | grep swap
   
   /dev/nvme0n1p3: UUID="0b784ace-b11c-4e78-9a90-e4601d6a03c0" TYPE="swap" PARTLABEL="swap" PARTUUID="27c4a0d6-687d-4a29-a0d3-5304829dfbff"

Update `/etc/default/grub`:

.. code::

   GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=0b784ace-b11c-4e78-9a90-e4601d6a03c0"


.. code::

   sudo update-grub

Hibernate
---------

.. code::

   sudo systemctl hibernate

or

.. code::

   sudo pm-hibernate

