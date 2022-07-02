Leiningen
=========

.. post:: 01/31/2020
   :tags: clojure

Create a basic app
------------------

Create a very minimal application using the `default` template

.. code::

   lein new default app

Templates
---------

Create a new template - one that let's you run the program from the cli.

.. code::

   lein new template cli --to-dir cli-lein-template


Use the template to create a app
--------------------------------

From the template directory, create an app:

.. code::

   lein new cli app --to-dir /tmp/app

Publish the template
--------------------

To use the template outside the directory of the template, it can be installed. More on this later

.. code:

   # lein plugin install cli # This doesn't work anymore
