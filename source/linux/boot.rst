Boot
====

.. post:: 16/10/2019
   :tags: linux

OS : Ubuntu 18.04

Grub
====

GRand Unified Bootloader


Kernel params can be passed using the following in 

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash NAME=VALUE"


..
   Configuring Sleep state
   -----------------------

   Use `mem_sleep_default=deep` for enabling "Suspend to Ram" instead of the default "Suspend to Idle"


   Check if enabled:

   .. code::

      cat /sys/power/mem_sleep                                                                                                                                                       
      [s2idle]

   which means that it is disabled

   https://www.kernel.org/doc/html/v4.19/admin-guide/pm/sleep-states.html#suspend-to-ram

Resume after hibernate
----------------------

Use `resume=UUID=0b784ace-b11c-4e78-9a90-e4601d6a03c0`

Where the UUID points to to the swap disk.
   

initramfs
=========

"Once the Linux kernel has control over the system (which it gets after being loaded by the boot loader), it prepares its memory structures and drivers. It then hands over control to an application (usually init) whose task it is to further prepare the system and make sure that, at the end of the boot process, all necessary services are running and the user is able to log on..."
`Initramfs Guid - Linux boot process`_


If grub is configured to resume from e.g. UUID=0b784ace-b11c-4e78-9a90-e4601d6a03c0, then initramfs must be configured to resume from the same. This doesn't have to be configured explicitly as `update-initramfs` figures it out automatically:

.. code::

   sudo update-initramfs -u -k all

   I: The initramfs will attempt to resume from /dev/nvme0n1p3
   I: (UUID=0b784ace-b11c-4e78-9a90-e4601d6a03c0)
   I: Set the RESUME variable to override this.

However, to avoid this message, you can create a file with the contents:

.. code::

   cat /etc/initramfs-tools/conf.d/resume && \
   echo RESUME=UUID=0b784ace-b11c-4e78-9a90-e4601d6a03c0 | sudo tee /etc/initramfs-tools/conf.d/resume

   sudo update-initramfs -u -k all

.. _Initramfs Guid - Linux boot process: https://wiki.gentoo.org/wiki/Initramfs/Guide
