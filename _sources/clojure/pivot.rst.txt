Pivot
=====

.. post:: 17/09/2019
   :tags: clojure

Let's say you have the following 2 vectors:

.. code:: clojure

   [1 3 5 7]
   [2 4 6 8]


How would you the following result?

.. code:: clojure

   [ [1 2]
     [3 4]
     [5 6]
     [7 8] ]


Use `interleave` and `partition`
--------------------------------

`interleave` zips the two collections and flattens the result:

.. code:: clojure

   (interleave [1 3 5 7] [2 4 6 8]) ;; => (1 2 3 4 5 6 7 8)

`partition` creates collections every `n` steps:

.. code:: clojure

   (partition [1 2 3 4 5 6 7 8]) ;; => ((1 2) (3 4) (5 6) (7 8))

Using them both:

.. code:: clojure

   (->> (list [1 3 5 7] [2 4 6 8] )
        (apply interleave)
        (partition 2)
        )
   ;; => ((1 2) (3 4) (5 6) (7 8))

.. code:: clojure

   (->> (list [1 3 5 7] [2 4 6 8] )
        (apply interleave)
        (partition 2)
        )
   ;; => [[1 2] [3 4] [5 6] [7 8]]

Use `map` with multiple collections
-----------------------------------

Alternatively, `map` can take more than one collection as an argument:

.. code:: clojure

   (map list [1 3 5 7] [2 4 6 8]) ;; => ((1 2) (3 4) (5 6) (7 8))

