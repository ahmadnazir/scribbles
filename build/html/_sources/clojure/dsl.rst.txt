Writing a DSL
=============

Let us make a calculator that would evaluate expressions like:

.. code::

   1 + 2

Dependencies:

.. code::

   [instaparse "1.4.10"]
   [org.clojure/core.match "0.3.0-alpha5"]


Update required libs:

.. code::

   [instaparse.core :as insta]
   [clojure.core.match :refer [match]]

Write the grammar as BNF (in the root of the project):

.. code::

   EXPR := NUMBER <ws*> OP <ws*> NUMBER
   
   OP := ADD | SUB
   
   ADD :=  "+"
   SUB :=  "-"
   NUMBER :=  #"[0-9]+"
   
   ws := #'\s+'   (* whitespace *)
   

Parse the grammar:

.. code::

   (def parse (->> (System/getProperty "user.dir")
                   (format "%s/grammar.bnf" )
                   slurp
                   insta/parser
                   ))


Test it:

.. code::

   (parse "1 + 2")
   ;; [:EXPR [:NUMBER 1] [:OP [:ADD +]] [:NUMBER 3]]


Generate the ast:

.. code:: clojure

   (defn evaluate
     "Convert parse tree to abstract syntax tree"
     [parsed]
     (match parsed [:EXPR [:NUMBER l] [:OP op] [:NUMBER r]] (+ (read-string l) (read-string r) ) ;; hardcode the operator
            :else  {:error (format "Matching rules incomplete for: %s" parsed)}
            ))

Evaluate:

.. code::

   (->> "1 + 2"
        parse
        evaluate)
