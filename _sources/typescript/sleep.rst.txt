Sleep
=====

.. post:: May 06, 2022
   :tags: typescript

Await sleep

.. code::

   const sleep = ms => new Promise(r => setTimeout(r, ms));
