DPKG
====

.. post:: 10/16/2019
   :tags: linux

Debian's package manager

Instead of using `dpkg`, the convenient wrapper `apt-get` or even better `apt`. But sometimes, you have to fall back to using `dpkg`.

Find installed library
----------------------

.. code::

   dpkg -i | grep xorg
