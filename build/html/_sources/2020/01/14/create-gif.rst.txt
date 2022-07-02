Create a gif from jpegs
=======================

.. post:: 01/14/2020
   :tags: linux,shell,imagemagick

Use `convert` (from package `imagemagick`):

.. code::

   convert -delay 400 -loop 0 *.jpg output.gif
