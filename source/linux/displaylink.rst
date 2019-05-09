Displaylink on Ubuntu 18.04
===========================


I want to use additional monitors and I got a `ThinkPad Hybrid USB-C with USB-A Dock`_
It looks like this:

.. image:: images/displaylink.webp
   :width: 25%


On the back side it says 'Plug and Display' ... but that doesn't work if you are linux.

Following shady steps are required:

1. Install the offical drivers
---------------------------
Get the `official drivers`_ and install them. The installer bash script (apparently generated using makeself_ contains an eval statement on a bunch of binary.. and it needs root permissions. Hmmm...

The installer seems to be loading a kernel module. The following is taken from the official site:

.. image:: images/installation.png
   :width: 50%

2. Disable `UEFI/Secure Boot`_
------------------------------
`UEFI/Secure Boot`_ needs to be disabled from the BIOS setup. This means that we are allowing untrusted code to be run.


3. Perfomance Issues / CPU Load
----------------------------
On top of that, CPU usage is extremely high:


  .. code:: bash

    $ ps -p `get-pid displaylink` -o %cpu,%mem,cmd
    %CPU %MEM CMD
    35.8  0.7 /opt/displaylink/DisplayLinkManager
    

And when I tap a few keys on the keyboard, it goes up to 50% and sometimes even
more. Not sure what is going on.

I really want to use additional monitors but I am not sure if I should use this
product. Maybe someone more wiser out there can help. _I need
healing!_.


Appendix
========

  .. code:: bash

    get-pid () {
      local name=$1 
      ps aux | grep -i $name | grep -v grep | awk '{print $2}'
    }

.. _ThinkPad Hybrid USB-C with USB-A Dock: https://www.lenovo.com/us/en/accessories-and-monitors/top-tech/TP-Hybrid-USB-C-Dock-US/p/40AF0135US
.. _official drivers: https://www.displaylink.com/downloads/ubuntu

.. _makeself: https://makeself.io/
.. _UEFI/Secure Boot: https://www.intel.com/content/www/us/en/support/articles/000006942/boards-and-kits/desktop-boards.html
