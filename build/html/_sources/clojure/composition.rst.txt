Function composition
====================

.. post:: 04/12/2019
   :tags: clojure

Here are a few ways to create new functions from existing functions:

comp
----

Give a collection of functions: `[ fa fb fc ]` and a value `x`, `comp` does this:

.. code::

   (->> x
       fc
       fb
       fa)


Note that the order of the functions is reversed, e.g:

.. code::

   (->> { :a {:in-a "a's value"} :c "c's value"}
       ((comp :in-a :a)))
   ;; "a's value"

juxt
----

Given a collection of functions: `[ fa fb ]` and a value `x`, juxt applies all the functions to x and return a collection of the results:

.. code::

   (->> { :a {:in-a "a's value"} :c "c's value"}
        ((juxt :a :c)))
   ;; [{:in-a "a's value"} "c's value"]
