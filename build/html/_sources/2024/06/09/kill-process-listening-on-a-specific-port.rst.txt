Kill process listening on a specific port
=========================================

.. post:: Jun 09, 2024
   :tags: linux,shell

Let's say a process is listening on port 33333 and we don't know what it is, then kill the process in one line as:
::

   sudo kill -9 $(sudo lsof -t -i :33333)
