Getting started with Kubernetes
===============================

Create a deployment
-------------------

.. code::

   snap run kubectl create deployment dummy-deployment --image ahmadnazir/dummy-server:0.1


Make sure that it is created
----------------------------

.. code::

   snap run kubectl get deployments

View the pod
------------

.. code::

   snap run kubectl get pods

   NAME                               READY   STATUS    RESTARTS   AGE
   dummy-deployment-c5755fb5c-2n6s6   1/1     Running   0          13s

Expose the service
------------------

.. code::

   snap run kubectl expose deployment dummy-deployment --type=NodePort --port=8088

Get the services
----------------

.. code::

   snap run kubectl get services

   NAME               TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
   dummy-deployment   NodePort    10.152.183.73   <none>        8088:31821/TCP   20s

Delete deployment
-----------------

.. code::

   snap run kubectl delete deployment dummy-deployment
