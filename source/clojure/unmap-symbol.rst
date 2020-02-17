Unmap a symbol from a namespace
===============================

The simplest would be to update the expression that loads everything e.g.:

.. code::

   (ns me.app
     (:require
      [environ.core :refer [env]]  ;; comment this
      ;; [me.env :refer [env]]     ;; uncomment, exit repl and connect again
      ))

But this can also be done without exiting the repl:

.. code::

   (ns-unmap 'me.app 'env)
