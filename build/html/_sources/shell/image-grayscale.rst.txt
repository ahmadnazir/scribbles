Convert images to gray scale
============================

.. post:: 12/30/2020
   :tags: shell

.. code::

   find ./ -name *.gif -print0 | xargs -0 -I _FN_ convert _FN_ -colorspace gray _FN_
