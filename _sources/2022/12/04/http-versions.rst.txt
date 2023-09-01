HTTP Versions
=============

.. post:: Dec 04, 2022
   :tags: http

https://youtu.be/a-sBfyiXysI

HTTP 1
------

Published in 1996.

Each request requires a separate TCP connection.

HTTP 1.1
--------

Published one year later in 1997.

Introduced a `keep-alive` mechanism which make it possible to use the same TCP connection for multiple requests. This reduces network latencies (no need to initiate expensive TCP handshake for every request).

Also introduced `pipelining`. In theory, this allows the client to send multiple requests before getting each response. The response must be received in the same order as the request. Tricky to implement and support was eventually removed from browsers.

Also suffers from `head-of-line-blocking` (HOL blocking). Requests should wait for the previous requests to complete on the same connection. If a request is blocked from any reason (packet loss, etc), affects performance.

HTTP 2
------

Published in 2015.

Introduces `streams`. Multiple streams in the same connection and they are independent. This solves the issue of HOL blocking on the application layer but the issue still exists on the tcp layer.

Also introduces `push capability`.


HTTP 3
------

Draft in 2020. Published in 2022.

Uses `QUIC` instead of `TCP`. QUIC uses UDP. Packet stream affecting one stream doesn't affect the other.

With TCP, network switching is sluggish. With QUIC, there is a concept called `connection id` which does network switching reliably.
