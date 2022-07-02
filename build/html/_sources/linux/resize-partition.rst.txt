Resize the mounted parition
===========================

.. post:: 10/16/2019
   :tags: linux

Start the machine using a 'recovery' usb. This makes it possible to work with the partition as it is not mounted.

.. code::

   e2fsck -f /dev/nvme0n1p2
   resize2fs /dev/nvme0n1p2 300G # This can be used to expand or shrink the partition

Shrink the partition using gparted (GUI tool):

.. code::

   gparted

Make sure to apply the changes

