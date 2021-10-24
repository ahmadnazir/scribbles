Get real path
=============

.. code::

   realpath $0

I guess for a symlink, we can do:

.. code::

   readlink $0


One liner to go to the directory where the file lives:

.. code::

    cd "$(dirname "$(realpath "$0")")"

TODO: write about a solution that works for both files and symlinks
