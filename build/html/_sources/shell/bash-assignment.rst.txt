Variable assignment in bash
===========================

.. post:: 30/12/2020
   :tags: shell

.. code::

   echo ${VAR:=abc}

is the same as

.. code::

   VAR=${VAR:-abc}
   echo $VAR


Notice the subtle difference of a `:=` vs the `:-`.
