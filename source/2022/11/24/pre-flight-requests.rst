Preflight Requests
==================

.. post:: 24/11/2022
   :tags: http


A preflight request is a CORS (Cross Origin Request Sharing) request to check if the CORS protocol is understood by the server.

Understanding CORS is a prerequisite for understanding preflight requests. Here are some rules:

- CORS is basically a front-end safety mechanism. For older browsers, this doesn't work even if the server supports it.
- CORS only applies to AJAX (XHR) requests.
- CORS for cross domain form posting doesn't apply (for backward compatibility reasons)

For `simple requests`, preflight requests are not sent. In a nut-shell, a simple request can be either:

- A request with method `GET`, `HEAD`, or `POST`
- POST requests with certain values for `Content-Type` header
- Only some headers are allowed


 `simple requests`: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#simple_requests


Caching preflight requests
--------------------------

Caching pre-flight requests can be done using the header: `Access-Control-Max-Age`.

The cache works for exactly the same url used before. If anything changes e.g.
query param due to search, the cache isn't used.

https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age
