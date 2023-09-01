Watch and run typescript file
=============================

.. post:: Feb 21, 2023
   :tags: typescript

::

   npx tsc --init

Assuming that you want to compile and watch `main.ts`, then compile it and run the `.js` equivalent:

::

   npx tsc-watch --project . --onSuccess 'npx ts-node main.js'
