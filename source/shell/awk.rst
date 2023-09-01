awk
===

.. post:: Dec 30, 2020
   :tags: shell

Column based editing

Get the nth column
------------------

.. code::

   echo 'one two three' | awk '{print $1}'

evaluates to:

.. code::

   one

Specify a delimier
------------------

The space (or multiple spaces/tabs) is the default delimiter. Specify a different delimiter:


.. code::

   echo 'one,two,three' | awk -F , '{print $1}'

Unbuffered output
-----------------

Sometimes it is needed to flush the output  to stdout.

In the following example, `sed` is used to remove the first character from the output of awk:

.. code::

   tail -f nginx.log | awk '{print $4 " " $9; fflush(stdout)}' | sed 's/.//'


Maintaining column alignment
----------------------------

Check out the `split` function in `awk`. Here is a good discussion: https://stackoverflow.com/a/20836890/1589512
