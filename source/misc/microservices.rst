Microservices
=============

.. post:: 04/02/2021
   :tags: misc

Use it if you care about independent deployability!

This requires the following:
- Information hiding
- Low coupling
- Strong cohesion

Cohesion: code that changes together, stays together

We need the following property in our system:

.. note::

   "A structure is stable if cohesion is strong and coupling is low" - Constantine S. Law


Types of coupling (in order of increasing coupling):

- Domain: Behaviour coupling (Service A depends on Service B)
- Common: Data coupling (Services sharing the same resource e.g. database)
- Content: Even worse data coupling aka pathalogical coupling (Service depends on the internals of another service e.g. database)
