Babashka
========

.. post:: 22/06/2020
   :tags: clojure

Shell scripting in clojure.

Sample clj file
---------------

`test.clj`:

.. code::

   #!/usr/bin/env bb

   (->> *command-line-args*
        first)


Make the file executable and run the following:

.. code::

   ./test.clj Hello World # "Hello"


Emacs
-----

.. code::

   bb --nrepl-server 1667

From emacs `M-x cider-connect` / spacemacs `SPC s c`.

