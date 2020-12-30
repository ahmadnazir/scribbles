Sparse checkout
====

.. code::

   URL=" ... "
   DIR=" ... "
   FOLDERS="a/test.txt b/test.txt"
   git clone $URL --no-checkout $DIR
   cd $DIR
   git sparse-checkout init --cone # to fetch only root files
   git sparse-checkout set ${FOLDERS}
