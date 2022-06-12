Generate project dependency graph
=================================

.. post:: 13/11/2019
   :tags: clojure

`ns-dep-graph`_ is a `lein` plugin for visualizing the dependency graph of a project.

- Install graphviz
- Update the project.clj file with the `:plugins [[lein-ns-dep-graph "0.2.0-SNAPSHOT"]]`
- Run `lein ns-dep-graph` which will genarate a png file with the graph


.. _ns-dep-graph: https://github.com/hilverd/lein-ns-dep-graph

