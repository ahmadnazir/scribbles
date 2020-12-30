Tables
======

Two types of tables are supported:

- **Grid**

.. code::

   +------------+------------+-----------+
   | Header 1   | Header 2   | Header 3  |
   +============+============+===========+
   | body row 1 | column 2   | column 3  |
   +------------+------------+-----------+
   | body row 2 | Cells may span columns.|
   +------------+------------+-----------+
   | body row 3 | Cells may  | - Cells   |
   +------------+ span rows. | - contain |
   | body row 4 |            | - blocks. |
   +------------+------------+-----------+

*renders to:*

+------------+------------+-----------+
| Header 1   | Header 2   | Header 3  |
+============+============+===========+
| body row 1 | column 2   | column 3  |
+------------+------------+-----------+
| body row 2 | Cells may span columns.|
+------------+------------+-----------+
| body row 3 | Cells may  | - Cells   |
+------------+ span rows. | - contain |
| body row 4 |            | - blocks. |
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
      Inputs     Output
   ------------  ------
     A      B    A or B
   =====  =====  ======
   False  False  False
   True   False  True
   False  True   True
   True   True   True
   =====  =====  ======

*renders to:*

=====  =====  ======
   Inputs     Output
------------  ------
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
