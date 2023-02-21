nmcli
=====

.. post:: 28/12/2022
   :tags: linux,wifi,nmcli

Wifi Status

General

::

   nmcli g

Rescan

::

   nmcli d wifi rescan

Get all wifi networks

::

   nmcli d wifi

Connect to a network where `NAME` is the name of the network

::

   nmcli d wifi connect ${NAME} password PASSWORD
   nmcli d wifi connect ${NAME} --ask # this didn't work for some reason - will try again
