Getting started
===============

.. post:: Nov 13, 2019
   :tags: clojurescript

Emacs uses `CIDER` to work with clojure. There are quirks that I am getting used to but the following is good enough to get started. CIDER comes packaged with the spacemacs clojure layer.

lein vs clj
-----------

I have been using `lein` for clojure but I couldn't make hot reloading and form evaluation within the editory work at the same time. `clj` tools seem to work better.

Reference: https://clojure.org/guides/getting_started#_installation_on_linux

Create a new project
--------------------

.. code:: bash

   clj -A:new figwheel-main app.core -- --reagent


Create and connect to a repl
----------------------------

Create a `.dir-locals.el` file in the root of the project:

.. code::

   ((clojurescript-mode . ((cider-default-cljs-repl . figwheel-main)
                           (cider-clojure-cli-global-options . "-A:fig")
                           )))

Create a repl and connect to it:

.. code::

   (cider-jack-in-cljs)
