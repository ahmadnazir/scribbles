Decode a jwt
============

.. post:: 12/30/2020
   :tags: shell

Assuming that the jwt is in the `token.json` file:

.. code::

   cat token.json | cut -d"." -f2 | base64 --decode -i | jq "."

Or create an alias:

.. code::

   alias jwt-decode='cut -d"." -f2 - | base64 --decode -i | jq "."'
   cat token.json | jwt-decode
