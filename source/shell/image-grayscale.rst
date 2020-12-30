Convert images to gray scale
============================

.. code::

   find ./ -name *.gif -print0 | xargs -0 -I _FN_ convert _FN_ -colorspace gray _FN_
