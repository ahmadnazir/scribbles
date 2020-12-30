Wifi
====

Restart wifi:

.. code::

   sudo service network-manager restart


Scan the network:

.. code::

   sudo iwlist wlp2s0 scan | grep SSID

   # or maybe use the newer:

   nmcli --ask dev wifi rescan


List the networks

.. code::

   nmcli dev wifi list


Connect to a network:

.. code::

   nmcli --ask dev wifi connect


Disconnect the device:

.. code::
nmcli dev disconnect wlp2s0
