Find a lost commit
==================


Git reflog contains the complete history of everything that happened. So if you committed something and then lost the commit due to a `reset` or a `rebase`, you can still find the commit by looking into the reflog:

.. code::

   gitk --all $( git fsck --no-reflog | awk '/dangling commit/ {print $3}' )


Check out the discussion here: http://stackoverflow.com/a/91795/1589512
