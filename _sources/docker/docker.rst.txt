Cheat sheet
===========

Volumes
-------

A volume is automatically created if a path is not given e.g:

.. code::

   docker run --rm -v data:/tmp/data ubuntu echo hi


Common commands:

.. code::

   docker volumes ls
   docker volumes prune # remove unused
   docker volumes rm VOLUME_NAME # remove specific volume
