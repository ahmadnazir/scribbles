Split subtree
=============

.. post:: 05/20/2019
   :tags: git

Consider you have the following repo:

.. code::

   .
   ├── resources
   │   ├── default.css
   │   └── main.css
   └── src
       └── run.sh


and the git history is:

.. code::

   commit 3010
       Default css
   
   commit da1d
       Added hashbang
   
   commit 7cd1
       Initial commit

and you want to get the git history of only the `src` directory, then you can get it by splitting the git tree:


.. code::

   git subtree split --prefix src

   commit 44a3
       Added hashbang
   
   commit 69ec
       Initial commit

.. NOTE::
   The `split` subtree command generates a synthetic log history. You can see that the commit hashes do not match.
