timesyncd
=========

.. post:: 12/05/2023
   :tags: linux,time

::

   sudo apt install systemd-timesyncd

Update `/etc/systemd/timesyncd.conf` with:

::

   [Time]
   NTP=0.dk.pool.ntp.org
   FallbackNTP=1.debian.pool.ntp.org 2.dk.pool.ntp.org 3.dk.pool.ntp.org

::

   systemctl restart systemd-timesyncd
