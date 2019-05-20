Helm
====

**Helm is the package manager for Kubernetes.**

A package in helm is called a **chart**.

Create a chart
--------------

.. code::

   snap run helm create my-service

which creates a directory structure:

.. code::

   my-service
   ├── charts
   ├── Chart.yaml
   ├── templates
   │   ├── deployment.yaml
   │   ├── _helpers.tpl
   │   ├── ingress.yaml
   │   ├── NOTES.txt
   │   ├── service.yaml
   │   └── tests
   │       └── test-connection.yaml
   └── values.yaml
   
   3 directories, 8 files

