Clojure runner
==============

The runner, invoked by calling `clojure` or simply `clj` is a tool/script to invoke the clojure compiler and the repl.

Side note: With the `tools.deps` library, dependencies can be resolved. With this functionality, this can act as a replacement for `lein` / `boot`.

Create a new project
--------------------

The clj-new_ library can be used to create a new project:

.. code::

   clj -A:new app ahmadnazir/cosmosdb-client


.. _clj-new: https://github.com/seancorfield/clj-new


Add a dependency
----------------

Update the `deps.edn` file and invoke the runner.
