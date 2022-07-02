Line Ending
===========

.. post:: 05/16/2019
   :tags: git

Force line-endings to LF
------------------------

.. code::

   git config core.autocrlf false


or either in `.gitignore` or `./git/config`:

.. code::


   [core]
     autocrlf = false


Keep the same line-endings
--------------------------

Keep the no matter you are working on Windows or Linux:

.. code::

   git config core.autocrlf input


or either in `.gitignore` or `./git/config`:

.. code::


   [core]
     autocrlf = input
