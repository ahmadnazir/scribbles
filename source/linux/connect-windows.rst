Connect to a windows machine
============================

.. code::

  xfreerdp --no-nla                           \
      -grab-keyboard                          \
      /f                                      \
      /fonts                                  \
      /aero                                   \
      /window-drag                            \
      /scale:180                              \
      /smart-sizing                           \
      /menu-anims                             \
      /bpp:32                                 \
      /gdi:sw                                 \
      /gfx                                    \
      /gfx-progressive                        \
      /clipboard                              \
      /cert-ignore                            \
      /auto-reconnect                         \
      /auto-reconnect-max-retries:3           \
      /u:"$user"                              \
      /v:"$url"                               \
      /p:"$password"
