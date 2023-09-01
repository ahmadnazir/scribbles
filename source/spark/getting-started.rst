Getting Started
===============

.. post:: Dec 30, 2020
   :tags: spark

.. code::

   # di jupyter/pyspark-notebook bash
   # spark-shell
   
   # Not sure why I started looking into this one instead of the one above?
   di p7hb/docker-spark


Concepts
--------

*Operations*

Sparks core operations are split into `transformations` (lazy) and `actions` (eager). 


*Spark Context*

Like the orchestrator. Responsible for

- Task creation
- Scheduling
- Data location (send tasks to the data to reduce data movement)
- Fault tolerance

It is recommended to have just one context per app (but it is possible to have multiple contexts)
