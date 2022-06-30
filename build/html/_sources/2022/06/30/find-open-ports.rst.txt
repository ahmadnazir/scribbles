Find open ports
===============

.. post:: 30/06/2022
   :tags: linux,networking

Use `netcat` (from the package `net-tools`)

.. code::

   netstat -tulpn

The switches `-tulpn` stand for:

- `-t`: TCP
- `-u`: UDP
- `-l`: Show only listening sockets
- `-p`: Show the PID and name of the program to which the sokcet belongs
- `-n`: Show numerical addresses instead of tyring to determine symbolic host, port or user names
