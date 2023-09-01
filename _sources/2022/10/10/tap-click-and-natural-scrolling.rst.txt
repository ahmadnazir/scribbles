Tap click / Natural Scrolling
=============================

.. post:: Oct 10, 2022
   :tags: linux,debian


Find the id of the input device:

::

   xinput | grep -i touchpad

Get the properties for the input device:

::

   xinput list-props 22


If the tap click is disabled, enable it like this (property name can obviously be different):

::

   xinput set-prop 22 "libinput Tapping Enabled" 1


::

   xinput set-prop 22 "libinput Natural Scrolling Enabled" 1
