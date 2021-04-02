Tap click not working
=====================

:OS: Ubuntu 20.04

Find the id of the input device: 

.. code::

   xinput | grep -i touchpad

Get the properties for the input device:

.. code::

   xinput list-props 23


If the tap click is disabled, enable it like this (property name can obviously be different):

.. code::

   xinput set-prop 23 "libinput Tapping Enabled" 1

