Show commits in a graph
=======================

.. post:: Apr 23, 2022
   :tags: git

Use *adog* switches:

.. code::

   git log --all --decorate --oneline --graph


`--decorate` controls how the names of the commits (tags / branch names) are shown
`--one line` is the same as `--pretty=oneline`

Or save it as an alias:

.. code::

   git config --global alias.ladog 'log --all --decorate --oneline --graph'
   git ladog

