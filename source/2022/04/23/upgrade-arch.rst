Upgrade Arch
============

.. post:: Apr 23, 2022
   :tags: linux,arch

Checking vulnerable pacakges:

.. code::

   arch-audit

[Optional] Clean the cache:

.. code::

   sudo pacman -Sc

Upgrade arch i.e. sync the packages from the repositories and update them:

.. code::

   sudo pacman -Syu

Optionally, re-compile packages that were updated e.g. `xmonad`

.. code::

   xmonad --recompile


..
   OR using yay to upgrade:

   .. code::

      yay -Syu
