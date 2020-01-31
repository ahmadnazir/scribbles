Use the swap partition instead of the swap file
===============================================

.. code::

   sudo swapon --show
   sudo swapoff /swapfile
   sudo mkswap /dev/nvme0n1p3
   sudo swapon /dev/nvme0n1p3

To persist these changes across reboots, update the fstab file and edit `/swapfile` to `/dev/nvme0n1p3`
