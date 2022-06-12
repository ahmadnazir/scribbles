Sleep
=====

.. post:: 06/05/2022
   :tags: typescript

Await sleep

.. code::

   const sleep = ms => new Promise(r => setTimeout(r, ms));
