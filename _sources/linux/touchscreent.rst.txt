Calibrate the touch input
=========================

.. post:: 01/04/2022
   :tags: linux

This is a problem when dual screen is being used.

.. code::

   xinput | grep -i touch


I am interested in the following:

.. code::

   ⎜   ↳ Raydium Corporation Raydium Touch System	id=18	[slave  pointer  (2)]
   ⎜   ↳ SYNA8004:00 06CB:CD8B Touchpad          	id=22	[slave  pointer  (2)]

Let's get the primary display:

.. code::

   xrandr

I am interested in `eDP-1`.

Calibrate:

.. code::

   xinput map-to-output 18 eDP-1
   xinput map-to-output 22 eDP-1



