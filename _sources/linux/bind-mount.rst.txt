Bind mount
==========

Using a bind mount might seem to accomplish what a symlink does but it happens at a lower level and changes the `underlying topology of the filesystem`_ (and hence it requires root privileges).

.. _underlying topology of the filesystem: https://www.quora.com/What-are-the-differences-between-bind-mounts-and-symlink-on-Unix


.. code::

   mount --bind /path/to/existing /path/to/target


To persist changes, update the `fstab` file. Here is an example of how I bind mounted my home directory from another partition that I mounted:

.. code::

   UUID=5c056ca5-14ee-4c9a-b3c7-87f0c6998d8f   /media/legacy    ext4          defaults       0       2 
   /media/legacy/home/darkman                  /home/darkman    none          bind           0       2


Apply changes:

.. code::

   sudo mount -a # or reboot

Un-mount:

.. code::

   sudo umount /home/darkman


Unable to umount: Target is busy
--------------------------------

Make sure there are no processes that have the files opened in that mount. This can be found as:

.. code::

   lsof | grep ' /home/darkman'

