Traffic sniffing
=================

When all fails, wireshark is the tool. However, I just found out about mitmproxy which seems to be the winner ... hands down!

mitmproxy
---------

:url: https://mitmproxy.org/
:github: https://github.com/mitmproxy/mitmproxy

Example: Access `https://ahmadnazir.github.io` at `localhost:5001`, and intercept the traffic:

.. code::

   mitmproxy --mode reverse:https://ahmadnazir.github.io -p 5001

httpry
------

I wasn't able to sniff traffic on local host with this:

.. code::

   sudo httpry -i lo
   python3 -m http.server 5001
   curl localhost:5001
   # Nothing shows up for httpry :(
