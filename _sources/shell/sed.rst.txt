sed
===

.. post:: 30/12/2020
   :tags: shell

Stream editor. Using regular expression, editor the standard input.

Remove the first character
--------------------------

.. code::

   echo '_Test' | sed 's/.//'

evaluates to:

.. code::

   Test

Unbuffered output
-----------------

Use the `-u` switch for unbuffered output.

.. code::

   echo '_Test' | sed -u 's/.//'
