Clojars
=======

.. post:: 02/17/2020
   :tags: clojure

Clojars is a repository for clojure libraries (like `maven` for java)

Deploying
---------

From a clojure project:

.. code::

   lein deploy clojars


This will ask your username and password to authenticate to `clojars.org`. It will also ask you to sign the jar with you `gpg` key.

Reference: I have this setup for `clj-lein-template` project.
