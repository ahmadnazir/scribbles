Tuning Nginx to handle big headers
==================================

.. post:: Oct 24, 2021
   :tags: networking

The error message that nginx throws is:

::

   upstream sent too big header while reading response header from upstream

This usually happens when the cookie size grows too much e.g. the cookie contains the auth token which embeds a list of permissions. Depending on the granularity of the permissions, the token size can grow significantly affecting the overall header size.

This can be tested using `curl`:

.. code::

   curl -s -w \%{size_header} -o /dev/null https://example.com

The default configuration in nginx is something like the following:

::

   proxy_buffers 4 256k;
   proxy_buffer_size 128k;
   proxy_busy_buffers_size 256k;

If the header size is greater than `128k`, then we only need to fix `proxy_buffer_size`.


Here is the reference article:

https://www.getpagespeed.com/server-setup/nginx/tuning-proxy_buffer_size-in-nginx
