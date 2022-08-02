Debugging external monitor issues in Linux
==========================================

.. post:: 08/02/2022
   :tags: linux

I am trying to see the different between the logs when the external monitor is detected vs when it is not detected.

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


I looked at kernel ring buffer `sudo dmesg -w` but the output is the same for the two cases:

However, `udevadm` output shows a difference:

::

   udevadm monitor


When it works (monitor gets detected), I can _also_ see the following lines:

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

What I plan on doing when this fails again:

- Can I reload some kernel module to avoid a restart?

::

   lsmod | grep typec

::

   typec_displayport      16384  1
   typec_ucsi             53248  1 ucsi_acpi
   typec                  69632  2 typec_displayport,typec_ucsi
   roles                  16384  1 typec_ucsi

- I would also like to compare the `lspci` output to the following - I suspect that `Thunderbolt 3` won't be present:

::

   00:00.0 Host bridge: Intel Corporation Coffee Lake HOST and DRAM Controller (rev 0c)
   00:02.0 VGA compatible controller: Intel Corporation WhiskeyLake-U GT2 [UHD Graphics 620] (rev 02)
   00:04.0 Signal processing controller: Intel Corporation Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor Thermal Subsystem (rev 0c)
   00:08.0 System peripheral: Intel Corporation Xeon E3-1200 v5/v6 / E3-1500 v5 / 6th/7th/8th Gen Core Processor Gaussian Mixture Model
   00:12.0 Signal processing controller: Intel Corporation Cannon Point-LP Thermal Controller (rev 11)
   00:14.0 USB controller: Intel Corporation Cannon Point-LP USB 3.1 xHCI Controller (rev 11)
   00:14.2 RAM memory: Intel Corporation Cannon Point-LP Shared SRAM (rev 11)
   00:14.3 Network controller: Intel Corporation Cannon Point-LP CNVi [Wireless-AC] (rev 11)
   00:15.0 Serial bus controller: Intel Corporation Cannon Point-LP Serial IO I2C Controller #0 (rev 11)
   00:15.1 Serial bus controller: Intel Corporation Cannon Point-LP Serial IO I2C Controller #1 (rev 11)
   00:16.0 Communication controller: Intel Corporation Cannon Point-LP MEI Controller #1 (rev 11)
   00:1d.0 PCI bridge: Intel Corporation Cannon Point-LP PCI Express Root Port #9 (rev f1)
   00:1d.4 PCI bridge: Intel Corporation Cannon Point-LP PCI Express Root Port #13 (rev f1)
   00:1f.0 ISA bridge: Intel Corporation Cannon Point-LP LPC Controller (rev 11)
   00:1f.3 Audio device: Intel Corporation Cannon Point-LP High Definition Audio Controller (rev 11)
   00:1f.4 SMBus: Intel Corporation Cannon Point-LP SMBus Controller (rev 11)
   00:1f.5 Serial bus controller: Intel Corporation Cannon Point-LP SPI Controller (rev 11)
   00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (6) I219-LM (rev 11)
   03:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd NVMe SSD Controller SM981/PM981/PM983
   05:00.0 PCI bridge: Intel Corporation JHL6540 Thunderbolt 3 Bridge (C step) [Alpine Ridge 4C 2016] (rev 02)
   06:00.0 PCI bridge: Intel Corporation JHL6540 Thunderbolt 3 Bridge (C step) [Alpine Ridge 4C 2016] (rev 02)
   06:01.0 PCI bridge: Intel Corporation JHL6540 Thunderbolt 3 Bridge (C step) [Alpine Ridge 4C 2016] (rev 02)
   06:02.0 PCI bridge: Intel Corporation JHL6540 Thunderbolt 3 Bridge (C step) [Alpine Ridge 4C 2016] (rev 02)
   06:04.0 PCI bridge: Intel Corporation JHL6540 Thunderbolt 3 Bridge (C step) [Alpine Ridge 4C 2016] (rev 02)
   07:00.0 System peripheral: Intel Corporation JHL6540 Thunderbolt 3 NHI (C step) [Alpine Ridge 4C 2016] (rev 02)
   2d:00.0 USB controller: Intel Corporation JHL6540 Thunderbolt 3 USB Controller (C step) [Alpine Ridge 4C 2016] (rev 02) <<<--- Is this present when it fails?
