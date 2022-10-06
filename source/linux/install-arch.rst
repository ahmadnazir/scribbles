Install Arch
============

.. post:: 04/02/2021
   :tags: linux,arch

:machine: x1 carbon, 7th gen

Bootloader
----------

I need to dual boot with Windows using `UEFI` and using a `GPT` partition system.
The `ESP` (EFI System Partition) already existed so I used it for booting linux as well.

I used GRUB for the bootloader as it seems to have to most functionality.

Packages
--------

Install the following with `pacstrap`:

- `base`
- `base-devel`: gcc, etc
- `intel-ucode`: microcode - stability and security updates for the processor
- `iwd`
- `sudo`
- `ansible`
- `git`

Wifi
----

:Package: iwd

iwd configuration: `/etc/iwd/main.conf`

.. code::

   [General]
   EnableNetworkConfiguration=true
   
   [Network]
   # EnableIPv6=true
   NameResolvingService=systemd


DNS resoution: `/etc/resolv.conf`

.. code::

   nameserver 8.8.8.8


Enable at boot (and start):


.. code::

   systemctl enable --now iwd


Users and Access Control
------------------------

.. code::

   useradd -m mandark
   passwd mandark
   usermod -aG wheel mandark


Uncomment permissions for `wheel` using `EDITOR=vim visudo`.

Lock login for `root` user:

.. code::

   passwd -l root


Display
-------

:packages: xorg xorg-xinit xmonad xmonad-contrib


.. code::

   cat 'exec xmonad' >> ~/.xinitrc

Starting x server will run xmonads:

.. code::

   startx

SSH
---

- `openssh`

Generate key:

.. code::

   ssh-keygen -t rsa -C "mandark"

References
----------

- https://wiki.archlinux.org/title/installation_guide
