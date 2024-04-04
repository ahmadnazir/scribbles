Q11 Keychron
============

.. post:: Apr 03, 2024
   :tags: keychron

Layers that work for Linux (and probably also a mac) are 0 and 1.

I think for windows, it is 2 and 3.

Configure the keyboard from the browser: https://usevia.app/

When connecting, it will probably show an error due to lack of permissions.

See what is failing from chrome logs: chrome://device-log

Give permissions as follows:

::

   sudo chmod a+rw /dev/hidraw5

Now load the pre-saved configuration: https://github.com/ahmadnazir/dotfiles/blob/master/keychron_q11.layout.json

Make sure that the keyboard is on the `mac` settings (manual switch close to the usb cable)
