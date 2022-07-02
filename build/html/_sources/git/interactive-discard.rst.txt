Interactively discard hunks
===========================

.. post:: 02/17/2020
   :tags: git

Unstaging hunks
---------------

With the following command, the staged changes can be unstaged:


.. code::

   git reset --patch

It is the opposite of `git add --patch` i.e. selectively staging hunks.

Discarding hunks
----------------

If you want to throw away hunks i.e. completely discard them without leaving any history, use:

.. code::

   git checkout --patch
