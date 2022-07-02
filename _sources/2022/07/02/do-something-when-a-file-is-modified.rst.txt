Do something when a file is modified
====================================

.. post:: 07/02/2022
   :tags: linux,shell

.. code::

   while inotifywait -e close_write $file; do

     # Run your command here!

   done
