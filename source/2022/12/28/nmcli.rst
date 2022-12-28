nmcli
=====

.. post:: 28/12/2022
   :tags: linux,wifi,nmcli

Wifi Status

```
# general
nmcli g
```

Rescan
```
# device
nmcli d wifi rescan
```

Get all wifi networks
```
# device
nmcli d wifi
```

Connect to a network where `NAME` is the name of the network
```
# device
nmcli d wifi connect ${NAME} --ask
```
