Links
=====

.. post:: Nov 30, 2019
   :tags: restructuredtext

External links
--------------

.. code::

   `Official docs`_ have more details
   
   .. _Official docs: https://docs.acme.com

*renders to:*

`Official docs`_ have more details

.. _Official docs: https://docs.acme.com


Or use a different name for the label:



Linking to other parts of the document
--------------------------------------

Add the label above a section like this:

::

   .. _some_label:

   Some Document
   =============

and can use it with or without custom text as:

::

   :ref:`some_label`
   :ref:`Check the documentation<some_label>`
