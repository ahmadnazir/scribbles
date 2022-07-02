Variable assignment in bash
===========================

.. post:: 12/30/2020
   :tags: shell

.. code::

   echo ${VAR:=abc}

is the same as

.. code::

   VAR=${VAR:-abc}
   echo $VAR


Notice the subtle difference of a `:=` vs the `:-`.
