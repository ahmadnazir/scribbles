Mermaid
=======

.. post:: Aug 23, 2022
   :tags: documentation 


Install
-------

Insall npm package (Requires node 14):

::

   npm install @mermaid-js/mermaid-cli


:ref:`Watch the file<watch-file>` and generate a mermaid image:

::

   watch-file mermaid.mmd ./node_modules/.bin/mmdc -i mermaid.mmd -o mermaid.png

Example
-------

`example.mmd`:

::

   ```mermaid
   flowchart TB
     A-->B
     A-->C
   ```

Flowchart
---------

https://mermaid-js.github.io/mermaid/#/flowchart?id=graph
