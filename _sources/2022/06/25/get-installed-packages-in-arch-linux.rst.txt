Get installed packages in Arch Linux
====================================

.. post:: Jun 25, 2022
   :tags: arch,pacman,yay,linux

Get all the installed packages. Use the query `-Q` switch:

::

   pacman -Q
   yay -Q


List the native packages i.e. installed using `pacman`:

::

   pacman -Qn # or
   yay -Qn

Get foreign packages installed i.e. not installed using `pacman`. Specify the query `-Q` and foreign `-m` switches.

::

   pacman -Qm # or
   yay -Qm

