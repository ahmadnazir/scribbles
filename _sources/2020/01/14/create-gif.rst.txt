Create a gif from jpegs
=======================

.. post:: 14/01/2020
   :tags: linux,shell,imagemagick

Use `convert` (from package `ImageMagick`) as follows:


.. code::

   convert -delay 400 -loop 0 *.jpg output.gif
