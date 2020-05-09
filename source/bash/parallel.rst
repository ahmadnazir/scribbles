parallel
========

Run a command in parallel.

Example: I want to monitor http request times when run in parallel:

.. code::

   seq 10 | parallel time ./request.sh

Limit the number of jobs to be run in parallel. 0 means as many as possible.

.. code::

   seq 100 | parallel -j0 time ./request.sh
