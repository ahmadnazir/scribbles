Upgrade Ubuntu Distribution
===========================

.. post:: Oct 16, 2019
   :tags: linux

Check the current release:

more /etc/lsb-release

sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoremove

Update the value of prompt from `lts` to `normal`:

.. code::

   sudo vim /etc/update-manager/release-upgrades


Do upgrade

.. code::

   sudo do-release-upgrade
