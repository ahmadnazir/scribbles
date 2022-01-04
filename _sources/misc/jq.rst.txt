jq
===

*Filtering*

Considering we have `sample.json`:

.. code::

   cat <<EOT | jq '.items[] | select(.key == "one")'
   {
     "items": [
       {
         "key": "one",
         "value": "value for one"
       },
       {
         "key": "two",
         "value": "value for two"
       }
     ]
   }
   EOT

evaluates to:

.. code::

   {
     "key": "one",
     "value": "one value"
   }


*Piping*


This is how the following pipeline looks:
- Select `items`
- Select `one`
- Filter out nulls
- Get the first element from `values` : `.values | .[0]` or simply `.values[0]`

.. code::

   cat <<EOT | jq '.items[] | .one | select(. != null) | .values[0]'
   {
     "items": [
       {
         "one": {
           "values": ["a", "b"]
         }
       },
       {
         "two": {
           "values": ["c", "d"]
         }
       }
     ]
   }
   EOT
