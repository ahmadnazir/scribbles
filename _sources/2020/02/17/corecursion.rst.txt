Corecursion
===========

.. post:: 02/17/2020
   :tags: cs

The `co-` is to indicate that it is opposite of recursion (e.g. `sine` and `cosine`).

Let's say there is an array and you want to sum it up. We can use recursion for
it. However, if we want to do the opposite e.g. take a value and generate the
array for some reason, that would be `corecursion`.

Think of implementing the greedy algorithm of the coin change problem: `change :: int -> [ int ]`

Other names for the same concept:

+---------------+---------------+
| recursion     | corecursion   |
+---------------+---------------+
| fold          | unfold        |
+---------------+---------------+
| catamorphism  | anamorphism   |
+---------------+---------------+


https://corecursive.com/046-don-and-adam-folds/
