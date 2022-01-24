comm
====

Compare two sorted files line by line:

E.g. find lines that are not common:


.. code::

   cat a.txt

   1
   2
   3

.. code::

   cat b.txt

   1
   2
   3
   4



.. code::

   comm -3 a.txt b.txt

   4


In case the files are not sorted:


.. code::

   comm -3 <(sort a.txt) <(sort b.txt)
