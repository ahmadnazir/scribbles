Concepts
========

Everything within a kubernetes cluster runs inside **pods**.

A pod_ is a group of one or more containers with shared network/storage. It is
the atomic unit that can be scheduled. Pods are mortal - they can't be
resurrected once they die.

There are two main concepts that allow you to control pods:

1. Deployments_ : allows you to declaratively update pods
2. Services_ : abstraction which defines a logical set of pods


.. _pod: https://kubernetes.io/docs/concepts/workloads/pods/pod/
.. _Deployments: https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
.. _Services: https://kubernetes.io/docs/concepts/services-networking/service/
