Debugging external monitor issues in Linux
==========================================

.. post:: 08/02/2022
   :tags: linux

Sometimes when I connect the external monitor using usb-c, it gives the following error:

::

   xrandr: cannot find mode ...

It works when I restart the machine so it must be a software bug.

How do I know if the external monitor is detected?

::

   xrandr

::

   Screen 0: minimum 320 x 200, current 1920 x 1080, maximum 16384 x 16384
   eDP-1 connected primary 1920x1080+0+0 (normal left inverted right x axis y axis) 309mm x 174mm
   1920x1080     60.05*+  60.01    59.97    59.96    59.93  
   ...
   DP-1 connected (normal left inverted right x axis y axis)
   2560x1440     59.95 +
   ...
   HDMI-1 disconnected (normal left inverted right x axis y axis)
   DP-2 disconnected (normal left inverted right x axis y axis)
   Disconnect and connect the external monitor, and view the kernel ring buffer:


Let's monitoring the kernel devices:

::

   udevadm monitor


When it works (i.e. monitor gets detected), the following lines are also included in the log output:

::

   KERNEL[144.856250] change   /devices/platform/USBC000:00/typec/port1 (typec)
   KERNEL[144.856323] add      /devices/platform/USBC000:00/typec/port1/port1-partner (typec)
   KERNEL[144.856360] change   /devices/platform/USBC000:00/typec/port1 (typec)
   KERNEL[144.860489] change   /devices/platform/USBC000:00/power_supply/ucsi-source-psy-USBC000:002 (power_supply)
   UDEV  [144.862653] change   /devices/platform/USBC000:00/typec/port1 (typec)
   UDEV  [144.865035] change   /devices/platform/USBC000:00/power_supply/ucsi-source-psy-USBC000:002 (power_supply)
   UDEV  [144.865114] add      /devices/platform/USBC000:00/typec/port1/port1-partner (typec)
   UDEV  [144.866247] change   /devices/platform/USBC000:00/typec/port1 (typec)
   ...

So it seems like there is some problem with typec. I wonder it it would work if I simply reinstall the relevant kernel level module.

What are the related kernel level modules?

::

   lsmod | grep typec


::

   typec_displayport      16384  1
   typec_ucsi             53248  1 ucsi_acpi
   typec                  69632  2 typec_displayport,typec_ucsi
   roles                  16384  1 typec_ucsi

So ... I waited patiently to fail again .. and when it did I reinstalled `typec_displayport` (first on the list) as a start, and that worked:

::

   sudo rmmod typec_displayport
   sudo insmod /usr/lib/modules/`uname -r`/kernel/drivers/usb/typec/altmodes/typec_displayport.ko.zst
