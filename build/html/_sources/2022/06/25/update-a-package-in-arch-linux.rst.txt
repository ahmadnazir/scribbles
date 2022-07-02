Update a package in Arch Linux
==============================

.. post:: 06/25/2022
   :tags: arch,pacman,yay

For packages installed using the native package manager i.e. `pacman`:

::

   pacman -S PACKAGE_NAME

Let's say we want to upgrade chrome. It is probably installed as a foreign package e.g. using `yay`. Use the following:

::

   yay -S google-chrome
