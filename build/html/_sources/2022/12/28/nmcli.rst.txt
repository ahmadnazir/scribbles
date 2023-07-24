nmcli
=====

.. post:: 28/12/2022
   :tags: linux,wifi,nmcli

Enable / disable the device:

::

   nmcli radio wifi off
   nmcli radio wifi on

Enable / disable wifi:

::

   nmcli device connect wlp2s0
   nmcli device disconnect wlp2s0

Rescan

::

   nmcli d wifi rescan

Get all wifi networks

::

   nmcli d wifi



Connect to a network where `NAME` is the name of the network

::

   nmcli d wifi connect ${NAME} --ask
   # or explicitly provide the passwork
   nmcli d wifi connect ${NAME} password PASSWORD
