Virtual Machine
===============

.. post:: 12/30/2020
   :tags: linux

I've tried virtual box before. I've heard that KVM is faster so I want to give it a try:

.. code::

   sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager


Enable kvm on boot (haven't tried this):

.. code::

   sudo systemctl enable --now libvirtd

Create vm:

.. code::

   # 12 GB RAM
   sudo virt-install --name=win10 --os-variant=win10 --vcpu=4 --ram=12288 --graphics spice --location=/home/darkman/Downloads/Win10_20H2_v2_EnglishInternational_x64.iso --network bridge:vibr0



