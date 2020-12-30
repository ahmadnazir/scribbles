Calibrate the touch input
=========================

This is a problem when dual screen is being used.

.. code::

   xinput | grep -i touch


I am interested in the following:

- `Wacom Pen and multitouch sensor Pen stylus` with id 9
- `Wacom Pen and multitouch sensor Pen eraser` with id 10
- `Wacom Pen and multitouch sensor Finger touch` with id 22

Let's get the primary display:

.. code::

   xrandr

I am interested in `eDP-1`.

Calibrate:

.. code::

   xinput map-to-output 9 eDP-1
   xinput map-to-output 10 eDP-1
   xinput map-to-output 22 eDP-1



