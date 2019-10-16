Hibernate using a swap file
===========================

:OS: Ubuntu 18.04

Before you begin
----------------

*I tried the following on 18.04 with and without a swap partition (the following assumes you hav ea swap file). I couldn't get it to work due to random issues until I upgraded to 18.10. The following are only for reference. Please refer to the following working examples instead:*

.. toctree::
   :maxdepth: 1

   [Optional] Shrink parition <resize-partition.rst>
   Create a swap parition <swap-partition.rst>
   Configure hibernate using swap parition <hibernate.rst>


Configure GRUB
--------------

.. code::

   sudo findmnt -no SOURCE,UUID -T /swapfile
   
   /dev/nvme0n1p2 5c056ca5-14ee-4c9a-b3c7-87f0c6998d8f

.. code::
   
   sudo swap-offset /swapfile
   
   resume offset = 36827136

Update `/etc/default/grub`:

.. code::

   GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=5c056ca5-14ee-4c9a-b3c7-87f0c6998d8f resume_offset=36827136"


.. code::

   sudo update-grub

USWSUSP
-------

Userspace software suspend. This relies on a tool called `s2disk`.

.. code::

   sudo apt install uswsusp

   # I said NO to continuing without a valid swap space


Update `/etc/uswsusp.conf` (requires update-initramfs):

.. code::

   resume device = /dev/nvme0n1p2

   # to

   resume device = /dev/disk/by-uuid/5c056ca5-14ee-4c9a-b3c7-87f0c6998d8f



The following needs to be done since we made changes to /etc/uswsusp.conf 


.. code::

   sudo update-initramfs -u -k all

Updated systemd hibernate service:

.. code::

   sudo systemctl edit systemd-hibernate.service

with the following content:

.. code::

   [Service]
   ExecStart=
   ExecStartPre=-/bin/run-parts -v -a pre /lib/systemd/system-sleep
   ExecStart=/usr/sbin/s2disk
   ExecStartPost=-/bin/run-parts -v --reverse -a post /lib/systemd/system-sleep

References
----------

https://askubuntu.com/a/1132154
https://askubuntu.com/questions/6769/hibernate-and-resume-from-a-swap-file
