Plantuml
========

.. post:: Dec 30, 2020
   :tags: documentation


OOP
---

:aggregation: ``A o-- B``
:composition: ``A *-- B``
:inheritance: ``A <|-- B``
:association: ``A <-- B``

.. code::

   @startuml
   
   A *-right- B : Composition
   C o-right- D : Aggregation
   E <|-right- F : Inheritance
   
   A -[hidden]-> C
   B -[hidden]-> D
   
   hide class circle
   hide class members
   hide class methods
   
   @enduml


Samples
-------

Checkout samples:
- https://real-world-plantuml.com/?type=class
- https://real-world-plantuml.com/?type=activity

Legend
------

.. code::

   legend
   |= field |= method |=  |
   |  -     |   -     | private |
   |  #     |   #     | protected |
   |  ~     |   ~     | package private |
   |  +     |   +     | public |
   endlegend
