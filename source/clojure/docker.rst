Clojure in docker
=================

.. post:: 01/04/2022
   :tags: clojure

Container:

todo : this runs as root

.. code::

   docker run --rm -it \
     -w `pwd` \
     -v `pwd`:`pwd` \
     --name lein \
     -p 33333:33333 \
     --add-host host.docker.internal:host-gateway \
     clojure:lein-2.8.1 \
     bash

Install dependencies:

.. code::

   lein deps

Run repl:


.. code::

   lein repl :start :host 0.0.0.0 :port 33333


Connect from a different container:

.. code::

   lein repl :connect host.docker.internal:33333
