lsof
====

.. post:: Oct 24, 2021
   :tags: linux

**Find all ports**

.. code::

   lsof -i -P

where `-P` suppresses the conversion between port number to port name.

**List Open files**

Find the listing of  files who match the port .e.g Find file that has the port `9229` open.

.. code::

   lsof -i :9229
