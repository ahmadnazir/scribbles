Variable assignment in bash
===========================

.. code::

   echo ${VAR:=abc}

is the same as

.. code::

   VAR=${VAR:-abc}
   echo $VAR


Notice the subtle difference of a `:=` vs the `:-`.
