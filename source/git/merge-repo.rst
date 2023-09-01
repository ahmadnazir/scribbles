Merge repos
===========

.. post:: Apr 23, 2022
   :tags: git

How to merge repos and keep the history?

Assume you have two repos `a` and `b`:

.. code::

   .
   ├── a
   │   └── README.md
   └── b
       └── src
           └── main.js
   
We want to merge `b` into `a`:

.. code::

   cd a
   git remote add b-origin ../b
   git fetch b-origin master
   git merge --allow-unrelated-histories b-origin/master # opens the editor to commit with message

The result will look like this:

.. code::

   .
   ├── README.md
   └── src
       └── main.js
   
   1 directory, 2 files

This can be repeated to sync new changes from `b-origin` remote's `master` branch.


The same concept can be used to merge a sub-module into the main module i.e. create a remote for the submodule, remove the submodule, merge the remote branch.
