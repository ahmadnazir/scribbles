Sound
=====

.. post:: Dec 30, 2020
   :tags: linux

pavucontrol
-----------
 
`pavucontrol` is a volume control for the PuseAudio sound server

If you don't hear sound, check the following:

- `Playback` tab: Select `Build-in Audio Analog Stereo`. Make sure that you can visually see the volume indicator. 
- `Configuration` tab: Select profile: `Analog Stereo Output` [Update: the microphone doesn't work - `Analog Stereo Duplex` seems to work with that]
- `Output Devices` tab: Select port: `Headphones` or `Speakers`

alsamixer
---------

Control the sound levels using `alsamixer`
