How to do interfaces in clojure? protocols
==========================================

.. post:: 22/07/2023
   :tags: clojure


::

   (defprotocol Vehicle
     "Vehicle"
     (get-number-of-wheels [this] "How many wheel?")
     (get-model [this] "What is the model?")
     (get-color [this] "What is the color?")
     )

   (deftype Car [model]
     Vehicle
     (get-number-of-wheels [this] 4)
     (get-model [this] model)
     (get-color [this] "red")
     )

   (deftype Bike [model]
     Vehicle
     (get-number-of-wheels [this] 2)
     (get-model [this] model)
     (get-color [this] "blackish")
     )

   (def car (Car. "Tesla"))
   (def bike (Bike. "Harley"))
