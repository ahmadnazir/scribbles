Name resolution
===============

.. post:: 30/12/2020
   :tags: networking

How is information stored in a DNS server?
------------------------------------------

Information is stored in the form of **DNS records**. There are different types of records and some of them required for our discussion are mentioned below:

*A*

Map a name to an IP adderss e.g.

.. code::

   acme.com -> x.x.x.x

The same name can point to different ip addresses e.g:

.. code::

   acme.com -> x.x.x.x
   acme.com -> y.y.y.y

_is the above round robined?_

*CNAME*

Map a name to another name e.g.

.. code::

   blog.acme.com -> acme.com

There should be only one such mapping. Mapping two names to the same name is not
allowed but you can create a chain of cnames:

.. code::

   eng.blog.acme.com -> blog.acme.com
   blog.acme.com     -> acme.com


Finding DNS records
-------------------

2 tools come to mind: `dig` and `nslookup`.

.. code::

   dig acme.com

The default dns name used is in `/etc/resolv.conf`

However, you can overwrite the DNS server to use for querying a domain name e.g.
if you explicitly want Google's DNS server `8.8.8.8` to fetch information from,
then use can specify it as:


.. code::

   dig @8.8.8.8 acme.com

With `nslookup`:

.. code::

   # use the default server
   nslookup acme.com

   # explicitly specify a server
   nslookup acme.com 8.8.8.8 


Add to list of DNS servers
--------------------------

Add or update `/etc/resolv.conf`:

.. code::

   nameserver 8.8.8.8

Cache
-----

DNS records are cached. For chrome, reset it from `chrome://net-internals/#dns`
