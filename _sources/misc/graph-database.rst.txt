Graph databases
===============

.. post:: Dec 30, 2020
   :tags: misc

Why?
----

- Graph databases make sense when you want to **create relationships between
  data and quickly query them**.

- In graph databases, **relationships between nodes are first class citizens**
  in a graph database. **They are persisted - not just calculated dynamically**
  when needed.

- For faster look ups, native graph databases provide `Index free adjacency`_.
  This means that the neighbor's actual physical location is kept with the node
  when the data is loaded (not just the pointer to the location). This makes it
  possible to walk through the relationships really quickly.

- Graph databases also make sense if the **relationship between different types
  of nodes can vary a lot** and there is not need to define in the domain what
  can be related to what.

- Another argument for using graph databases is if your **schema is not
  defined** upfront. Imagine linking blobs of unstructured data - something that
  relational databases were not primarily designed for.

Check out a `really good explanation of why graph databases make sense`_ over
relational databases.


Why not?
--------

- A graph database really pays off of you have more than a few hundred thousand
  nodes. For less number of nodes, using a relational db would work fine.

- Keep in mind that if a node has a large number of relationships and that node
  needs to be deleted, then all the relationships will have to be updated (which
  probably will be a slow operation).

- If you want to query a lot of rows of the same type, then maybe a conventional
  relation database might be a better fit. With a graph database, you look at a
  specific node and then walk the graph by looking up the relationships. On the
  contrary, relation databases let you query a large amount of rows in bulk and
  lets you find related data by joining on a property.

Examples
--------

- neo4j
- Azure Cosmos DB
- `Amazon Neptune`_

Use Cases
---------

- Social networks
- Recommendations (e.g. buyers of this product also bought this)
- Knowledge graphs

References
----------

- `Amazon Neptune`_ description has a few really nice use cases.
- A good example of modelling data: https://neo4j.com/blog/data-modeling-pitfalls/

.. _Index free adjacency: https://medium.com/@dmccreary/how-to-explain-index-free-adjacency-to-your-manager-1a8e68ec664a
.. _Amazon Neptune: https://aws.amazon.com/neptune/
.. _really good explanation of why graph databases make sense: https://www.youtube.com/f4f0db57-4424-41aa-b581-3fcc9ce3a268
