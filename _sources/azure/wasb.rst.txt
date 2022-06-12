WASB
====

.. post:: 30/11/2019
   :tags: azure

Windows Azure Storage Blob (WASB) is a filesystem on top of HDFS. This allows persistence of the data in Azure Storage Accounts instead of local disk. This way the hadoop cluster can be shut down when no computation is taking place.

WASB vs ABFS
------------

WASB has certain deficiencies e.g. renaming/moving large number of files. An improved driver is Azure Block File System (ABFS).

Reference: https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-abfs-driver#prior-capability-the-windows-azure-storage-blob-driver

