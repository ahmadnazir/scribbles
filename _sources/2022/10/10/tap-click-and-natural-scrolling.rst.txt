Tap click / Natural Scrolling
=============================

.. post:: Oct 10, 2022
   :tags: linux,debian


Find the id of the input device:

::

  :

::

   DEVICE_ID=`xinput | grep -i touchpad | grep -E 'id.(..)' -o | awk -F '=' '{print $2}'`
   xinput set-prop $DEVICE_ID "libinput Tapping Enabled" 1
   xinput set-prop $DEVICE_ID "libinput Natural Scrolling Enabled" 1
