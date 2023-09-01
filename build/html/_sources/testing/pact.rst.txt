====
Pact
====
.. post:: Jul 13, 2019
   :tags: testing


Pact_ is an implementation of "consumer driven contract" testing that allows mocking of responses in the consumer codebase, and verification of the interactions in the provider codebase.


- The consumers initiate the discussion by specifying a pact, which the provider should conform to.
- Pact follows `Postel's Law`_.
- `It is specifically for teams who are in control of writing both the consumer and the provider`_.

Pact and OpenApi Specification
==============================

.. code::

   Swagger / OpenAPI specification aims to standardise the description and structure of an API. It can tell you what APIs are available and what fields/structure it expects and can generate documentation/UI to interact with one. What it is not, is a testing framework.

   Pact on the other hand, is essentially a unit testing framework using specification by example. It just so happens that to be able to run those tests on the API consumer and provider side, it needs to generate an intermediate format to be able to communicate that structure - this is the specification. Now we need a lot more information that just the structure (matching rules, provider states and so on) that OpenAPI documents in its spec.

https://docs.pact.io/faq/convinceme#but-i-use-swagger-openapi

.. _Pact: https://github.com/pact-foundation/pact-specification#introduction
.. _Postel's Law: https://github.com/pact-foundation/pact-specification#pact-specificaton-philosophy
.. _It is specifically for teams who are in control of writing both the consumer and the provider: https://docs.pact.io/faq#using-pact-where-the-consumer-team-is-different-from-the-provider-team
