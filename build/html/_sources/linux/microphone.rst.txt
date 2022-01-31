Microphone
==========

Trying to get the microphone to work. Tried the following but in vain:

Update `/etc/modprobe/snd-hda-intel.conf`::

  options snd-hda-intel enable_msi=1

Reload module::

  sudo rmmod -f snd-hda-intel # might need the `-f` switch
  sudo modprobe snd-hda-intel
