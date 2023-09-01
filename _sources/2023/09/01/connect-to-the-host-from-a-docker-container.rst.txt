Connect to the host from a docker container
===========================================

.. post:: Sep 01, 2023
   :tags: linux,docker


Use the `extra_hosts` option in docker-compose:

::

   extra_hosts:
   - "host.docker.internal:host-gateway"


This works in Linux but I am not sure about a Mac. Should work with the correct version of docker I think.

Make sure that this workds by pinging the host from the container e.g.

::

   docker exec -it pine-lang_app_1 bash
   ping host.docker.internal

I think the way it works is that docker understands the special string
`host-gateway` and converts it into the actual ip to be used in order to talk to
the host. Then it is upto the user to use the custom domain name i.e.
`host.docker.internal` - so it means that there is nothing special about that
domain name and it is just a convention.
