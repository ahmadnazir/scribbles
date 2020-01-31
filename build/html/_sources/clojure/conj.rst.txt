conj
====

Append to list.

.. code::

   (conj [1] 2) ;; [1 2]

conj seq vs conj vector
-----------------------

It works differently with vectors and seqs

.. code::

   (conj [1] 2)       ;; [1 2]
   (conj (seq [1]) 2) ;; [2 1]

or with an empty collection:

.. code::

   (conj (conj []  1) 2) ;; [1 2]
   (conj (conj nil 1) 2) ;; (2 1)


Be careful when using conj with functions that return a string:

.. code::

   (conj (drop-last [ 1 "_" ]) 2)       ;; [2 1]
   (conj (vec (drop-last [ 1 "_" ])) 2) ;; [1 2]
