Clojure Spec
============

.. post:: 10/24/2021
   :tags: clojure

Instrumentation
---------------

Note: Instrumentation only works for `:args` in a function definition. `:fn` and `:ret` are only used during generative / property based testing.

Here is an example of how this works.

Create a function definitions

.. code::

   (defn adder [x y]
     (+ x y))
   
   (s/fdef adder
     :args (s/cat :x int? :y int?))


If we call `adder` without instrumentation, we get the following error:

.. code::

   1. Unhandled clojure.lang.ArityException
      Wrong number of args (3) passed to: pine.db.postgres/adder



However, if we need to enable instrumentation:

.. code::

   (ns acme.app
     (:require [clojure.spec.test.alpha :as stest]))
   
   (stest/instrument [`adder])


Now, when we call `adder` with the wrong arguments, we get a relatively helpful message:

.. code::

   1. Unhandled clojure.lang.ExceptionInfo
      Spec assertion failed.
   
            Spec: #object[clojure.spec.alpha$regex_spec_impl$reify__2510 0x6c0f16e3 "clojure.spec.alpha$regex_spec_impl$reify__2510@6c0f16e3"]
           Value: (1 2 4)
   
        Problems: 
   
               val: (4)
                in: [2]
            failed: (cat :x int? :y int?)
            reason: Extra input


