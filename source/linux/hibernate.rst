Enable hibernate using a swap file
==================================

Configure GRUB
--------------

.. code::

   sudo findmnt -no SOURCE,UUID -T /swapfile                                                                                                                                      
   /dev/nvme0n1p2 5c056ca5-14ee-4c9a-b3c7-87f0c6998d8f

.. code::
   
   sudo swap-offset /swapfile                                                                                                                                                     
   resume offset = 36827136

.. code::

   GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=5c056ca5-14ee-4c9a-b3c7-87f0c6998d8f resume_offset=36827136"


.. code::

   sudo update-grub

USWSUSP
-------

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

References
----------

https://askubuntu.com/a/1132154
https://askubuntu.com/questions/6769/hibernate-and-resume-from-a-swap-file
