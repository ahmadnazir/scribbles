Conditionals
============

.. post:: Dec 30, 2020
   :tags: shell

Argument 1 is not specified:

.. code::

   if [ -z $1 ]; then
     echo "Not specified"
   fi

One liner:

.. code::

   [ -z $1 ] && echo "Not specified"

