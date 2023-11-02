PlantUML
========

.. post:: Dec 30, 2020
   :tags: emacs

Spacemacs comes with a ``plantuml`` layer which has a major mode for modifying such files.

Files with extension ``.puml`` are recognized.

Once installed, set the output type to ``png`` (``M-x plantuml-set-output-type``)
Generate a preview: ``plantuml-preview`` or ``, c c``

Local rendering
---------------

- Make sure ``graphviz`` is installed
- Download the jar: ``plantuml-download-jar``.

A few more variables that might need customizing:

- ``plantuml-default-exec-mode`` : ``jar`` (instead of ``server``)
- ``plantuml-jar-path`` : path where you download the jar. If you want to manually download the jar, checkout: https://plantuml.com/download

Now the preview will be generated locally.


Class Diagrams
--------------

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
