Azure Data Lake
===============

.. post:: 11/30/2019
   :tags: azure

Azure data lake can be used to store any type of data whether it is:

- **Unstructured data** json, txt, csv, you name it
- **Semi-structured data**: json or xml, along with schema definition that is read at run-time
- **Structured data**: databases

Azure Data Lake helps users to take the LET (Load Extract Transform) approach instead of the ETL approach (Extract Transform Load).

SQL language that you can use with Azure Data Lake is U-SQL (hybrid of T-SQL and C#). Extensible and modules can be written using C#.

Data Lakes sit on HDFS.

Azure data lake databases are not relational. Relationships are virtual. 

**Data Skew** happens when data is partitioned in a what that one or more vertices have significantly more work to do than other vertices.

Extents
-------

- When uploading data, the file is split into **Extents**
- usually 250MB
- Normally, replicated 3 times

Vertices
--------
U-SQL jobs are processed by vertices
- A vertix is a virtual machine (dual core processor and 6GB RAM - at the point of writing)
- Each vertix performs a particular task
- Each vertix works on around 1 GB of data
- resulting in about 4 Extents
- A job normally used 5 vertices to execute the task. This number is configurable.
- A vertex must complete in 5 hours
- Maximum memory : 5 GB

Azure Data Lake Accounts
------------------------
Consists of:

- Store account
- Analytics account

Azure Data Lake Analytics can also query data in other stores e.g. Azure Blob Storage, SQL Server in Azure etc.

Partitioning
------------

- **Horizontal**

Also known as:

- sharding
- fine grained partitioning
- automatic partitioning

.. code::

   Metropolitan
   North Wales
   Manchester

- **Vertical** (coarse grained partitioning or manual partitioning)

Also known as:

- coarse grained partitioning
- manual partitioning

.. code::

   Metropolitan  | North Wales | Manchester
   Metropolitan  |             | Manchester
                 |             | Manchester

Normalization can also be used to do vertical partitioning but this goes one step further and can be used to partition data that is already normalized (for reasons like performance, availability, etc).

- **Functional**

Data is grouped according to how it is used by each bounded context e.g. for an e-commerce system partition invoice data and product inventory data

MS recommends that partition size should be 1GB in size for maximum performance

Distribution Scheme
-------------------

Partitioning determines how the data is stored. Distribution determines where the data is stored and you can control that when working with Databases/U-SQL.

In Azure Data Lake, distribution means how horizontal partitioning separates the data.

4 ways to horizontally partition the data:

- Hash Keys: Data Lake hashes the values and distributes the data based on the hash value
- Direct Hash: We are responsible for providing a numeric value and then generate a hash value using an analytics function like rank or dense rank. More control this way.
- Range Keys
- Round robin: no keys are needed. Data is distributed evenly.


Data skew can happen with hash keys, direct hash, and range keys. Round robin fixes this but can lead to more data reads as the data might not be sitting together.


Data Lake Gen1 vs Gen2
----------------------

- Gen1 is basically HDFS on the cloud
- Gen2 is Azure Blob storage on HDFS
