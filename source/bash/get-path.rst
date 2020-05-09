Get real path
=============

.. code::

   cd "$(dirname "$(readlink "$0")")"
