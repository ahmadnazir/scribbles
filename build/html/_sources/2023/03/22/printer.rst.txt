printer
=======

.. post:: Mar 22, 2023
   :tags: printer,cups,linux

sudo apt-get install cups

localhost:631


Check that group exists:

::

   grep lpadmin /etc/group

Add user to group:

::

   sudo usermod -a -G lpadmin mandark


Cups server:

::

   http://localhost:631

Go to `Administration` and add the printer of your choice. I found the IP
address of the printer connected to the network and added it as
`https://IP_ADDRESS_HERE` and could print without having to install any device
specific driver.
