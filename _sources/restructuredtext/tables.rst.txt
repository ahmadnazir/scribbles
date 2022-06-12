Tables
======

.. post:: 04/01/2022
   :tags: restructuredtext

Two types of tables are supported:

- **Grid**

.. code::

   +------------+------------+-----------+
   | Header 1   | Header 2   | Header 3  |
   +============+============+===========+
   | body row 1 | column 2   | column 3  |
   +------------+------------+-----------+

*renders to:*

+------------+------------+-----------+
| Header 1   | Header 2   | Header 3  |
+============+============+===========+
| body row 1 | column 2   | column 3  |
+------------+------------+-----------+

- **Simple**

Really basic table:

.. code::

   +---------+---------+-----------+
   | 1       |  2      |  3        |
   +---------+---------+-----------+

renders to:

+---------+---------+-----------+
| 1       |  2      |  3        |
+---------+---------+-----------+

Another way - with headers:

.. code::

   =====  =====  ======
     A      B    A or B
   =====  =====  ======
   False  False  False
   True   False  True
   False  True   True
   True   True   True
   =====  =====  ======

*renders to:*

=====  =====  ======
  A      B    A or B
=====  =====  ======
False  False  False
True   False  True
False  True   True
True   True   True
=====  =====  ======


Emacs support
-------------
.. code::

   M-x table-insert

Reference
---------

http://docutils.sourceforge.net/docs/user/rst/quickref.html#tables
