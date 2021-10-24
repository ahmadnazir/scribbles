Nginx
=====

Good article for tuning the proxy buffer sizes:

https://www.getpagespeed.com/server-setup/nginx/tuning-proxy_buffer_size-in-nginx

In order to find the header size of the requests:

.. code::

   -w \%{size_header} -o /dev/null -s

