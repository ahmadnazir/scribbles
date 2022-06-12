Azure Service Fabric
====================

.. post:: 13/11/2019
   :tags: azure

Plural site course (focusing on 'Reliable Services')
https://app.pluralsight.com/course-player?clipId=ec014437-6f1b-49e0-a70f-47878c055bcb

4 approaches to create micro services in service fabric:

1. Reliable services (stateless / stateful)
2. Reliable actodflsdfrs
3. Guest executables
4. Containers


Reliable Services
-----------------
Reliable services are like normal apps with the difference that they are exposed to Service Fabric APIs so that orchestration can happen on them.


1. Stateless reliable services

State is stored locally (no need to talk to a database).
What if a server crashes? replicas are being used.
Minimum set of replicas to achieve data consistency is called a Quorum.

Service Communication
---------------------

The following are supported by service fabric out of the box:

1. WCF (Windows Communication Foundation)
2. HTTP
3. Service Remoting

Service Remoting is default and recommended. Supports:

- Auto address resolution
- Establishing connection
- Retries
- Error handling
- Strong types
- Fast
- C# and Java support


