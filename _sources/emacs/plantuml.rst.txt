PlantUML
========

Spacemacs comes with a ``plantuml`` layer which has a major mode for modifying such files.

Files with extension ``.pum`` are recognized.

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

