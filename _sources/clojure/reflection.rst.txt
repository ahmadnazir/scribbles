Reflection
==========

.. post:: 17/02/2020
   :tags: clojure

Get all the methods on a symbol - like the auto-complete functionality:


.. code::

   (require '[clojure.reflect :as r])
   (defn ac [x]
     (->>
     (r/reflect x)
     :members
     (filter (comp not :type))
     (map #(select-keys %1 [:name]))
     clojure.pprint/print-table
     )  )

Let's see what methods are available on a string with value "foo":

.. code::

   (ac "foo")
