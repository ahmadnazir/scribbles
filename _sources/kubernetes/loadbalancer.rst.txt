Load Balancer
=============

.. post:: 05/15/2019
   :tags: kubernetes

.. code::


   snap run microk8s.kubectl scale deployment my-deployment --replicas=2
   snap run microk8s.kubectl expose deployment my-deployment --type=LoadBalancer --port=8088 --name=my-service
